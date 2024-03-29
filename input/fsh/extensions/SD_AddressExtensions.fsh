Extension: ExtensionCityCodeVitalRecords
Id: CityCode
Title: "City Code Vital Records"
Description: "City expressed as a numeric value.  As of the date of publication, in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf). (Extension)"
* insert ExtensionContextResource(Address.city)
* value[x] 1..1
* value[x] only positiveInt
//* value[x] obeys digitalCityCode
* value[x] ^maxLength = 5
//* value[x] ^constraint[1].requirements = "The allowable values for city code are detailed in the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf)."
//* value[x] only string
//* valueString from $PHVSCityPlacesNCHS (required)

Extension: ExtensionDistrictCodeVitalRecords
Id: DistrictCode
Title: "District Code Vital Records"
Description: "District expressed as a numeric value.  As of the date of publication, in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf). (Extension)"
//* insert boilerplate
* insert ExtensionContextResource(Address.district)
* value[x] 1..1
* value[x] only positiveInt
//* value[x] obeys digitalCityCode
* value[x] ^maxLength = 5
//* value[x] ^constraint[1].requirements = "The allowable values for district code are detailed in the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf)."
//* value[x] only string
//* valueString from $PHVSDivisionVitalStatisticsCounty (required)



//Invariant: digitalCityCode
//Description: "The  code is a five digit positive integer value between 00000 and 99999 with leading zeroes included. The allowable values for city code are detailed in the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf)."
//Severity: #error
// NEED TO WRITE THE INVARIANT!!!!!!  DO WE NEED THIS INVARIANT????


Extension: ExtensionPreDirectionalVitalRecords
Id: PreDirectional
Title: "PreDirectional Vital Records"
Description: "PreDirectional component of address as [defined by USPS](https://pe.usps.com/cpim/ftp/pubs/pub28/pub28.pdf)"
* insert addressextension(10)
Extension: ExtensionStreetNameVitalRecords
Id: StreetName
Title: "StreetName Vital Records"
Description: "StreetName component of address as [defined by USPS](https://pe.usps.com/cpim/ftp/pubs/pub28/pub28.pdf)"
* insert addressextension(50)
Extension: ExtensionStreetNumberVitalRecords
Id: StreetNumber
Title: "StreetNumber Vital Records"
Description: "StreetNumber component of address as [defined by USPS](https://pe.usps.com/cpim/ftp/pubs/pub28/pub28.pdf)"
* insert addressextension(10)
Extension: ExtensionStreetDesignatorVitalRecords
Id: StreetDesignator
Title: "StreetDesignator Vital Records"
Description: "StreetDesignator component of address as [defined by USPS](https://pe.usps.com/cpim/ftp/pubs/pub28/pub28.pdf)"
* insert addressextension(10)
Extension: ExtensionPostDirectionalVitalRecords
Id: PostDirectional
Title: "PostDirectional Vital Records"
Description: "PostDirectional component of address as [defined by USPS](https://pe.usps.com/cpim/ftp/pubs/pub28/pub28.pdf)"
* insert addressextension(10)
Extension: ExtensionUnitOrAptNumberVitalRecords
Id: UnitOrAptNumber
Title: "UnitOrAptNumber Vital Records"
Description: "UnitOrAptNumber component of address as [defined by USPS](https://pe.usps.com/cpim/ftp/pubs/pub28/pub28.pdf)"
* insert addressextension(10)
