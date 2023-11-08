ValueSet: ValueSetBirthSexFetusVitalRecords
Id: ValueSet-birth-sex-fetus-vr
Title: "ValueSet - Birth Sex Fetus Vital Records"
Description: "This valueset contains the subset of the US Core Birth Sex Valueset that can be used for a decedent fetus' Vital Records.

Mapping to IJE codes [here](ConceptMap-ConceptMapBirthSexFetusVitalRecords.html)."
* ^status = #active
* ^experimental = false
* include codes from valueset BirthSex
* exclude $v3-AdministrativeGender#ASKU "asked but unknown"
* exclude $v3-NullFlavor#OTH "other"