ValueSet: ValueSetSexAssignedAtBirthVitalRecords
Id: ValueSet-sex-assigned-at-birth-vr
Title: "SValue Set - ex Assigned At Birth Vital Records"
Description: "This valueset contains the subset of the US Core Birth Sex Valueset that can be used for a child or decedent fetus' Vital Records.

Mapping to IJE codes [here for child](ConceptMap-ConceptMapBirthSexChildVitalRecords.html) and [here for decedent fetus](ConceptMap-ConceptMapBirthSexFetusVitalRecords.html)."
* ^status = #active
* ^experimental = false
//* include codes from valueset BirthSex
//* exclude $v3-NullFlavor#ASKU "asked but unknown"
//* exclude $v3-NullFlavor#OTH "other"
// Change from a intensional definition by subtraction, to an extensional definition. 
* $v3-AdministrativeGender#F "Female"
* $v3-AdministrativeGender#M "Male"
* $v3-NullFlavor#UNK "Unknown"
