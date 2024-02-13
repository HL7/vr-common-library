ValueSet: ValueSetUSStatesAndTerritoriesVitalRecords
Id: ValueSet-usstates-territories-vr
Title: "US States, Territories Vital Records"
Description: "This valueset contains the set of 2 Letter codes used to represent  US States and Territories"
* ^status = #active
* ^version = "1.0.0"
* ^experimental = false
* include codes from valueset ValueSetUSStatesVitalRecords
* include codes from valueset ValueSetUSTerritoriesVitalRecords
// * exclude $statesCS#FM
// * exclude $statesCS#MH
// * exclude $statesCS#PW
// * exclude $statesCS#AP
// * exclude $statesCS#AE
// * exclude $statesCS#AA
