ValueSet: ValueSetBirthSexChildVitalRecords
Id: ValueSet-birth-sex-child-vr
Title: "ValueSet - Birth Sex Child Vital Records"
Description: "This valueset contains the subset of the US Core Birth Sex Valueset that can be used for a child's Vital Records.

Mapping to IJE codes [here](ConceptMap-ConceptMapBirthSexChildVitalRecords.html)."
* ^status = #active
* ^experimental = false
* include codes from valueset BirthSex
* exclude $v3-AdministrativeGender#ASKU "asked but unknown"
* exclude $v3-NullFlavor#OTH "other"