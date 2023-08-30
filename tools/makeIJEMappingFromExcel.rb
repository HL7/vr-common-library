# ruby tools/makeIJEMappingFromExcel.rb input/mapping/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.xlsx
# output files: generated/bfdr/ije_mapping.md

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
IJE_FHIR_TYPE_COL = 12
IJE_FHIR_ENCODING_COL = 13

puts ARGV[0]

vSpreadsheet = open_spreadsheet(ARGV[0])
vSpreadsheet.default_sheet = "Combined Tabs"
vOutputFilename = "generated/BFDR/ije_mapping.md"
puts vOutputFilename
vOutputFile = File.open(vOutputFilename, "w")

vOutputFile.puts "Many of the BFDR data elements can be identified using the IJE (Inter-Jurisdictional Exchange) data element names (codes). The IJE codes are used for data exchange among jurisdictions and with authorized data partners, such as National Vital Statistics System (NVSS). The National Center for Health Statistics (NCHS) has implemented IJE codes for exchange of mortality data with jurisdictions via the VRDR IG; however, the use of IJE codes has not yet been implemented for birth and fetal death reporting to NCHS.

The following IJE mappings to locations in FHIR specifications are for information purposes only:
* BFDR: Vital Records Birth and Fetal Death Reporting (this IG)
* VRCPL: [Vital Records Common Profile Library]({{site.data.fhir.ver.hl7fhirusvrcommonlibrary}})
* US CORE: [US Core Implementation Guide, 5.0.1]({{site.data.fhir.ver.hl7fhiruscore}})
* ODH: [Occupational Data for Health]({{site.data.fhir.ver.hl7fhirusodh}})
* FHIR: [extensions](http://hl7.org/fhir/extensions/extension-registry.html)"

vOutputFile.puts ""

def createMappingTable(pRowFilter, pHeading, pOutputFile, pSpreadsheet)

  pOutputFile.puts pHeading
  pOutputFile.puts ""

  pOutputFile.puts "| **IJE Field#** |  **Description**   |  **IJE Name**  | **Profile**  | **Location** |"
  pOutputFile.puts "| -------------- | ------------------ | -------------- | ------------ | ------------ |"

  pSpreadsheet.each_row_streaming(offset:1, pad_cells: true) do |row|
    next if row[IJE_USECASE_COL].value.to_s != pRowFilter || row[IJE_PROFILE_COL].value.to_s == "not implemented"
    
    field = description = ijename = profile = vProvOutputFilename = fhirfield = fhirtype = fhirencoding = ijeonly = fhirig = ""
    field = row[IJE_FIELD_COL].value.to_s if row[IJE_FIELD_COL]
    ijename = row[IJE_NAME_COL].value.to_s if row[IJE_NAME_COL]
    fhirig = row[IJE_FHIR_IG_COL].value.to_s if row[IJE_FHIR_IG_COL]
    vProvOutputFilename = row[IJE_PROFILE_COL].value.to_s if row[IJE_PROFILE_COL]

    case fhirig
    when "BFDR"
      profile = "[" + vProvOutputFilename + "]" + "(StructureDefinition-" + vProvOutputFilename + ".html)"
    when "VRCPL"
      # *TODO* this might need to be updated prior to publication - for some reason the jekyll variable doesn't work the same for current build IG
      # TODO add code to check whether the version is current or not
      #profile = "[" + vProvOutputFilename + "]" + "({{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}" + "/StructureDefinition-" + vProvOutputFilename + ")"
      profile = "[" + vProvOutputFilename + "]" + "({{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}" + "StructureDefinition-" + vProvOutputFilename + ".html)"
    when "US CORE"
      profile = "[" + vProvOutputFilename + "]" + "({{site.data.fhir.ver.hl7fhiruscore}}" + "/StructureDefinition-" + vProvOutputFilename + ".html)"
    when "FHIR"
      profile = "[" + vProvOutputFilename + "]" + "(http://hl7.org/fhir/extensions/StructureDefinition-" + vProvOutputFilename + ".html)"
    when "ODH"
      profile = "[" + vProvOutputFilename + "]" + "({{site.data.fhir.ver.hl7fhirusodh}}" + "/StructureDefinition-" + vProvOutputFilename + ".html)"
    end
    
    fhirfield = row[IJE_FHIR_FIELD_COL].value.to_s if row[IJE_FHIR_FIELD_COL]
    description = row[IJE_DESC_COL].value.to_s if row[IJE_DESC_COL]
    
    pOutputFile.puts "| " + field.chomp + " | " + description.chomp + " | " + ijename + " | " + profile + " | " + fhirig + " |"
  end
  
  pOutputFile.puts "{: .grid }"
end

createMappingTable( "Natality", "### Natality (Live Birth) IJE Mapping", vOutputFile, vSpreadsheet)
createMappingTable( "Fetal Death", "### Fetal Death IJE Mapping", vOutputFile, vSpreadsheet)