# vrcl tools

 - Much of the documentation is driven from the master [IJE spreadsheet](https://github.com/nightingaleproject/vital_records_sheets/blob/main/IJE_File_Layouts_and_FHIR_Mapping_24-06-21.csv).  Because the IJE spreadsheet and [Forms Mapping spreadsheet](https://github.com/nightingaleproject/vital_records_sheets/blob/master/Forms_Mapping.csv) are used across multiple Vital Records IG's, maintenance of these spreadsheets are handled on the nightingaleproject github repository: https://github.com/nightingaleproject/vital_records_sheets. Best practice involves downloading the latest versions of the spreadsheets locally before running any of the tooling scripts. It is also recommended that the version of the spreadsheet used to build a version of an IG be checked in with the respective IG for tracking purposes. Instructions for downloading the appropriate spreadsheets are located at the top of each script and listed below:
  
## Method 1 for downloading the master spreadsheets (Windows PC):
 - Download IJE spreadsheet
```
Invoke-Webrequest https://github.com/nightingaleproject/vital_records_sheets/blob/main/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv?raw=true -Outfile "./input/mapping IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv"
Invoke-Webrequest https://github.com/nightingaleproject/vital_records_sheets/blob/main/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv?raw=true -Outfile "./input/images/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv"
```
 - Download Forms Mapping spreadsheet
```
Invoke-Webrequest https://github.com/nightingaleproject/vital_records_sheets/blob/main/Forms_Mapping.csv?raw=true -Outfile "./input/mapping/Forms_Mapping.csv"
```

## Method 2 for downloading the master spreadsheets (MAC):
 - Download IJE spreadsheet
```
require 'open-uri'
download1 = URI.open('https://github.com/nightingaleproject/vital_records_sheets/blob/main/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv?raw=true')
IO.copy_stream(download1, 'input/mapping/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv')
IO.copy_stream(download1, 'input/images/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv')
```
 - Download Forms Mapping spreadsheet
```
require 'open-uri'
download2 = URI.open('https://github.com/nightingaleproject/vital_records_sheets/blob/main/Forms_Mapping.csv?raw=true')
IO.copy_stream(download2, 'input/mapping/Forms_Mapping.csv')
```

## Making changes and running the scripts:
The scripts are set up to build pages using the csv files located in input/mapping. Only VRCL_Profile_Intros.csv is maintained locally. The other two spreadsheets are maintained on the [nightingaleproject github repository](https://github.com/nightingaleproject/vital_records_sheets). To ensure that any enduring updates do not get lost or overwritten in subsequent builds, it is important that you update the master copies of these spreadsheets appropriately, and don't rely on making the change locally. It is also recommended that the version of the spreadsheet used to build a version of an IG be checked in with the respective IG for tracking purposes.
 - If you need to update the narrative descriptions in the <profile>-intro.md files, first update the [VRCL Profile Intros CSV](https://github.com/HL7/vr-common-library/blob/master/input/mapping/VRCL_Profile_Intros.csv) on this repo. The 'IJE Mapping' and 'Form Mapping' tables for each profile intro page are generated using the [IJE spreadsheet](https://github.com/nightingaleproject/vital_records_sheets/blob/main/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv) and [Forms Mapping spreadsheet](https://github.com/nightingaleproject/vital_records_sheets/blob/main/Forms_Mapping.csv), respectively. Thus, if you wish to make changes to those sections, you will also need to update these spreadsheets by making a pull request to the nightingaleproject github repository and then downloading the updated spreadsheet(s) locally, as directed above. After your updates are made on the appropriate spreadsheets, run this [script](https://github.com/HL7/vr-common-library/blob/master/tools/makeStructureDefinitionIntrosFromCSVtoHTML.rb). Your updated files will be located in a local generated/VRCL folder, from which you can copy or move the desired updated content to input/pagecontent. 
 - All of the scripts for updating mapping pages or narrative content in the IG will automatically run a script (`makeExcelFromCSV.rb`) to update the local excel sheet based on any changes in `input/mapping/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv`. Be sure that any merged changes made to these sheets for this IG are reflected in the [nightingaleproject github repository](https://github.com/nightingaleproject/vital_records_sheets).