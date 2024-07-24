Profile: RelatedPersonFatherNaturalVitalRecords
Parent: RelatedPersonFatherVitalRecords
Id: RelatedPerson-father-natural-vr
Title: "RelatedPerson - Father Natural Vital Records"
Description: "The biological (natural) father of the newborn or fetus."
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^short = "The biological father of the newborn or fetus."
* relationship 1..1
* relationship = $v3-RoleCode#NFTH
  * ^short = "natural father"
* extension[Extension-relatedperson-birthplace-vr].value[x]
  * state ^short = "Birth state"
  * country ^short = "Birth country"
* name
  * given ^short = "Father's first name"
  * use ^short = "Usage of human name"
  * family ^short = "Father's  surname"
  * suffix ^short = "Surname suffix"
* identifier[SSN]
  * value ^short = "Social Security no."
  * type.coding.code ^short = "Identifier type code"
* birthDate ^short = "Date on which the related person was born"
* birthDate.extension[bypassEditFlag] ^short = "To reflect the relevant edit possibilities for Father's date of birth."
  * value[x] ^short = "Date edit"