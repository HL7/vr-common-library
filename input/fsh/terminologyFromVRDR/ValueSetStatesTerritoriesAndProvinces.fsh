ValueSet: ValueSetStatesTerritoriesAndProvincesVitalRecords
Id: ValueSet-states-territories-provinces-vr
Title: "ValueSet - States, Territories and Provinces Vital Records"
Description: "This valueset contains the set of codes used to represent 2 Letter States and Provinces"
* ^copyright = "The Canadian Province codesystem is copright Canada Health Infoway"
* ^status = #active
* ^experimental = false
//* insert USStatesAndTerritories
// * insert CanadaProvinces -- this doesn't work, don't be tempted
* codes from valueset ValueSetUSStatesAndTerritoriesVitalRecords
* codes from system CodeSystemCanadianProvincesVitalRecords
* $v3-NullFlavor#UNK