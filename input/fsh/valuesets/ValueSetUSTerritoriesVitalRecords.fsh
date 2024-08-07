ValueSet: ValueSetUSTerritoriesVitalRecords
Id: ValueSet-usterritories-vr
Title: "Value Set - US Territories Vital Records"
Description: "This valueset contains the set of 2 Letter codes used to represent US Territories"
* ^status = #active
* ^version = "1.0.0"
* ^experimental = false
// * insert USTerritories 

// RuleSet: USTerritories 
* $statesCS#AS  "American Samoa"
* $statesCS#GU  "Guam"
* $statesCS#MP  "Northern Mariana Islands"
* $statesCS#PR  "Puerto Rico"
* $statesCS#VI  "Virgin Islands"
