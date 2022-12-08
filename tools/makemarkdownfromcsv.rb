#  ruby tools/makemarkdownfromcsv.rb IJE_File_Layouts_Version_2021_FHIR_combined.csv ; cp generated/*.md input/pagecontent
#
require "json"
require "pry"
require "roo"
require "csv"

# SG: Can we break this file up into parts (first time using Ruby, not sure how it works, but think we could have the base code that grabs the data and then each project can pass in its own stuff to decide what to pick up (basically the profile hashes plus file names))

# def get_file_type(file)
#   File.extname(file).gsub(".", "")
# end

# def open_spreadsheet(file)
#   extension = get_file_type(file)
#   if ["csv", "xls", "xlsx"].include? extension
#     Roo::Spreadsheet.open(file, extension: extension)
#   else
#     raise "Unknown file type: #{file}"
#   end
# end

# SG changing to header names for easier layout changes
IGName = "Flow"
IJEField = "Field #"
IJEBegin = "Beginning Location"
IJELength = "Length"
Description = "Contents"
IJEName = "Name"
CodeStructureDescription = "Code Structure Description"
IJEOnly = "IJE Only"
Profile = "VRDR Profile"
FHIRField = "Field"
# SG these last two seem odd - maybe we can consider re-naming? Or even having an extra column called "terminology" or something
FHIRType = "Encoding"
FHIREncoding = "Comments"

profiles = Hash.new

# SG start VRCPL code - hackety hack hack hack - can we pull this out to a file called NatalityProfilesForIJEMapping.rb or something and have one for each project?
# SG consider moving the Birth and Fetal Death certificate mappings out to a CSV also and generating tables that look the same as the IJE mapping tables...
profiles["ObservationBirthWeightVitalRecords"] = { :out => "StructureDefinition-Observation-birth-weight-vr-intro.md",
  :desc => "This concept is mapped to:
  * Item **49. Birthweight** in the *[U.S. Standard Certificate of Live Birth (rev. 2003)](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)*
  * Item **18c. Weight of fetus** in the *[U.S. Standard Report of Fetal Death (rev. 2003)](https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf)*" }

puts ARGV[0]

#csv = open_spreadsheet(ARGV[0])

#csv.default_sheet = 0
filename = "generated/NatalityRecordDataDictionary.md"
puts filename
fullout = File.open(filename, "w")
fullout.puts "### Natality Record Data Dictionary"
fullout.puts ""
fullout.puts "| **#** |  **Description**   |  **IJE Name**  | **Profile**  | **IJE only** |  **Field**  |  **Type**  | **Value Set**  |"
fullout.puts "| :---------: | --------------- | ------------ | ---------- | :------------: | ---------- | ---------- | -------------- |"

profiles.each do |key, value|
  puts key
  out = File.open("generated/" + value[:out], "w")
  out.puts "### Usage"
  out.puts value[:desc]
  out.puts ""
  out.puts "| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |"
  out.puts "| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |"
  
  CSV.foreach(ARGV[0], :headers => true, col_sep: "|") do |row|
    #next if row["VRDR Profile"] == nil || row["VRDR Profile"].value != key
    next if row[Profile] == nil || row[Profile] != key
    field = description = ijename = profile = fhirfield = fhirtype = fhirencoding = ijeonly = ""
    field = row[IJEField].to_s if row[IJEField]
    ijename = row[IJEName].to_s if row[IJEName]
    ijeonly = "x"  if row[IJEOnly] && (row[IJEOnly].to_s == "I" || row[IJEOnly].to_s == "i")
    # puts "field = " + field + " ijeonly =" + ijeonly
    profile = "[" + row[Profile].to_s + "]" if row[Profile]
    fhirfield = row[FHIRField].to_s if row[FHIRField]
    fhirtype = row[FHIRType].to_s if row[FHIRType]
    fhirencoding = row[FHIREncoding].to_s if row[FHIREncoding]
    description = row[Description].to_s if row[Description]
    fullout.puts "| " + field.chomp + " | " + description.chomp + " | " + ijename + "| " + profile + "| " + ijeonly + "|" + fhirfield + " | " + fhirtype + " | " + fhirencoding + " | "
    out.puts "| " + field.chomp + " | " + description.chomp + " | " + ijename + "| "  + ijeonly + "|" + fhirfield + " | " + fhirtype + " | " + fhirencoding + " | "
  end
  # SG: These don't work with the current version of the VRCPL IG - maybe they are only needed for FSH IGs?
  # out.puts "{: .grid }"
  # out.puts "{% include markdown-link-references.md %}"
  out.close
end
  # SG: These don't work with the current version of the VRCPL IG - maybe they are only needed for FSH IGs?
  # fullout.puts "{: .grid }"
  # fullout.puts "{% include markdown-link-references.md %}"
  fullout.close

