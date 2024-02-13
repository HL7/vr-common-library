ValueSet: ValueSetUSStatesVitalRecords
Id: ValueSet-usstates-vr
Title: "US States Vital Records"
Description: "This valueset contains the set of 2 Letter codes used to represent the 50 US States and DC"
* ^status = #active
* ^version = "1.0.0"
* ^experimental = false
* include codes from valueset http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state
* exclude codes from valueset ValueSetUSTerritoriesVitalRecords 
* exclude $statesCS#FM
* exclude $statesCS#MH
* exclude $statesCS#PW
* exclude $statesCS#AP
* exclude $statesCS#AE
* exclude $statesCS#AA
