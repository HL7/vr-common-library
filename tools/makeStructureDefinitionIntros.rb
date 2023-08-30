# ruby tools/makeStructureDefinitionIntros.rb input/mapping/BFDR_Profile_Intros.xlsx input/mapping/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.xlsx input/mapping/BFDR_Forms_Mapping.xlsx
# output files: generated/bfdr/StructureDefinition-<profilename>-intro.md
# output files: generated/vrcpl/StructureDefinition-<profilename>-intro.md

require "json"
require "pry"
require "roo"

def get_file_type(file)
  File.extname(file).gsub(".", "")
end

def open_spreadsheet(file)
  extension = get_file_type(file)
  if ["csv", "xls", "xlsx"].include? extension
    Roo::Spreadsheet.open(file, extension: extension)
  else
    raise "Unknown file type: #{file}"
  end
end

# IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.xlsx columns
IJE_USECASE_COL = 1
IJE_FIELD_COL = 2
IJE_BEGIN_COL = 3
IJE_LENGTH_COL = 4
IJE_DESC_COL = 5
IJE_NAME_COL = 6
IJE_CS_DESC_COL = 7
IJE_ONLY_COL = 8
IJE_FHIR_IG_COL = 9
IJE_PROFILE_COL = 10
IJE_FHIR_FIELD_COL = 11
IJE_FHIR_ENCODING_COL = 12
# added this column to get the ije mappings printing out on the related profile page - e.g. if something is mapped to a us core profile, set this to the 
# profile containing the us core profile (e.g. Encounter-maternity contains US Core Location). Similarly if something is mapped to a fhir extension
IJE_MAPPING_PROFILE_COL = 18

# BFDR_Profile_Intros.xlsx columns
INTRO_PROFILE_NAME_COL = 0
INTRO_PROFILE_USAGE_COL = 1
INTRO_FORM_MAPPING_COL = 2
INTRO_IJE_MAPPING_COL = 3
INTRO_PROFILE_LOCATION_COL = 4

# BFDR_Forms_mapping.xlsx columns
FORMS_ORDER_COL = 0
FORMS_FORM_COL = 1
FORMS_URL_COL = 2
FORMS_ELEMENT_COL = 3
FORMS_IG_COL = 4
# added this column to get the forms mappings printing out on the related profile page - e.g. if something is mapped to a us core profile, set this to the 
# profile containing the us core profile (e.g. Encounter-maternity contains US Core Location). Similarly if something is mapped to a fhir extension
FORMS_MAPPING_PROFILE_COL = 5
FORMS_PROFILE_COL = 6
FORMS_FIELD_COL = 7
FORMS_CONTEXT_COL = 8

# ARGV[0] input/mapping/BFDR_Profile_Intros.xlsx
vProfileIntrosSpreadsheet = open_spreadsheet(ARGV[0])
vProfileIntrosSpreadsheet.default_sheet = "Sheet1"

# ARGV[1] input/mapping/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.xlsx 
vIJEMappingSpreadsheet = open_spreadsheet(ARGV[1])
vIJEMappingSpreadsheet.default_sheet = "Combined Tabs"

# ARGV[2] input/mapping/BFDR_Forms_Mapping.xlsx
vFormsMappingSpreadsheet = open_spreadsheet(ARGV[2])
vFormsMappingSpreadsheet.default_sheet = "BFDR Form Items"

def createSDIntros(pIG, pProfileIntrosSpreadsheet, pIJEMappingSpreadsheet, pFormsMappingSpreadsheet)
# stream the BRDR_Profile_Intros.xlsx spreadsheet - this also contains any usage text for the start of the intro.md file (one file for each profile)
# some of the profiles don't have any usage or ije mappings (currently the Bundle for example, skip those rows)
    pProfileIntrosSpreadsheet.each_row_streaming(offset:1, pad_cells: true) do |row|
        # if there is no usage, no forms mapping, and no ije mapping, skip this row, we don't need to create an into file for this profile
        # There's some weirdness with the Roo gem and empty and nil fields - hence double to_s and check for empty hack
        next if row[INTRO_PROFILE_LOCATION_COL].to_s != pIG || (row[INTRO_PROFILE_USAGE_COL].to_s.to_s.empty? && row[INTRO_FORM_MAPPING_COL].to_s.to_s.empty? && row[INTRO_IJE_MAPPING_COL].to_s.to_s.empty?)
        
        vProfileName = vProfileIntro = vGeneratedFileName = ""

        vProfileName = row[INTRO_PROFILE_NAME_COL].to_s
        vGeneratedFileName = "generated/" + pIG + "/StructureDefinition-" + vProfileName.to_s + "-intro.md"
        vIntroOutputFile = File.open(vGeneratedFileName, "w")
        
        # if there is usage text put it into the intro file for the profile
        if !row[INTRO_PROFILE_USAGE_COL].to_s.to_s.empty?
            vIntroOutputFile.puts row[INTRO_PROFILE_USAGE_COL]
        end
        
        # if there are form mappings put them into the intro file for the profile
        if !row[INTRO_FORM_MAPPING_COL].to_s.to_s.empty?
            vIntroOutputFile.puts "" if !row[INTRO_PROFILE_USAGE_COL].to_s.to_s.empty?
            vIntroOutputFile.puts "### Form Mapping"
            vIntroOutputFile.puts "This profile is mapped to:"
            
            pFormsMappingSpreadsheet.each_row_streaming(offset:1, pad_cells: true) do |row|
                next if row[FORMS_MAPPING_PROFILE_COL].to_s != vProfileName
                vIntroOutputFile.puts " * Item **" + row[FORMS_ELEMENT_COL].to_s + "** in the [" + row[FORMS_FORM_COL].to_s + "](" + row[FORMS_URL_COL].to_s + ")"
            end
        end

        # if there are IJE mappings put them into the intro file for the profile
        if !row[INTRO_IJE_MAPPING_COL].to_s.to_s.empty?
            vIntroOutputFile.puts "" if !row[INTRO_FORM_MAPPING_COL].to_s.to_s.empty?
            vIntroOutputFile.puts "### IJE Mapping"
            vIntroOutputFile.puts ""
            vIntroOutputFile.puts "| **Use Case** | **IJE Field#** | **Description** | **IJE Name** | **Field** |"
            vIntroOutputFile.puts "| ------------ | -------------- | --------------- | ------------ | --------- |"

          # process any natality rows first
          pIJEMappingSpreadsheet.each_row_streaming(offset:1, pad_cells: true) do |row|
              next if (row[IJE_USECASE_COL].to_s != "Natality") || row[IJE_MAPPING_PROFILE_COL].to_s != vProfileName
              
              vIntroOutputFile.puts "| " + row[IJE_USECASE_COL].to_s + " | " + row[IJE_FIELD_COL].to_s + " | " + row[IJE_DESC_COL].to_s + " | " + row[IJE_NAME_COL].to_s + " | " + row[IJE_FHIR_FIELD_COL].to_s + " |"
          end
          # now process any fetal death rows
          pIJEMappingSpreadsheet.each_row_streaming(offset:1, pad_cells: true) do |row|
            next if (row[IJE_USECASE_COL].to_s != "Fetal Death") || row[IJE_MAPPING_PROFILE_COL].to_s != vProfileName
            
            vIntroOutputFile.puts "| " + row[IJE_USECASE_COL].to_s + " | " + row[IJE_FIELD_COL].to_s + " | " + row[IJE_DESC_COL].to_s + " | " + row[IJE_NAME_COL].to_s + " | " + row[IJE_FHIR_FIELD_COL].to_s + " |"
          end
          vIntroOutputFile.puts "{: .grid }"
        end
    end
end

createSDIntros("BFDR", vProfileIntrosSpreadsheet, vIJEMappingSpreadsheet, vFormsMappingSpreadsheet)
createSDIntros("VRCPL", vProfileIntrosSpreadsheet, vIJEMappingSpreadsheet, vFormsMappingSpreadsheet)