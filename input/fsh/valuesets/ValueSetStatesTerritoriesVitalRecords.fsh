ValueSet: ValueSetUSTerritoriesVitalRecords
Id: ValueSet-usterritories-vr
Title: "US Territories Vital Records"
Description: "This valueset contains the set of 2 Letter codes used to represent US Territories"
* ^status = #active
* ^version = "1.0.0"
* ^experimental = false
* $statesCS#AS  "American Samoa"
* $statesCS#GU  "Guam"
* $statesCS#MP  "Northern Mariana Islands"
* $statesCS#PR  "Puerto Rico"
* $statesCS#VI  "Virgin Islands"


ValueSet: ValueSetUSStatesAndTerritoriesVitalRecords
Id: ValueSet-usstates-territories-vr
Title: "US States, Territories Vital Records"
Description: "This valueset contains the set of 2 Letter codes used to represent  US States and Territories"
* ^status = #active
* ^version = "1.0.0"
* ^experimental = false
* include codes from valueset http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state
* exclude $statesCS#FM
* exclude $statesCS#MH
* exclude $statesCS#PW
* exclude $statesCS#AP
* exclude $statesCS#AE
* exclude $statesCS#AA
