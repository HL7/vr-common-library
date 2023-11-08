Profile: RelatedPersonMotherGestationalVitalRecords
Parent: RelatedPersonMotherVitalRecords
Id: RelatedPerson-mother-gestational-vr
Title: "RelatedPerson - Mother Gestational Vital Records"
Description: "The woman who gave birth to or delivered the infant. The RelatedPerson structure is required in order to link the mother to the newborn or fetus."
* . ^short = "The woman who gave birth to or delivered the infant. The RelatedPerson structure is required in order to link the mother to the newborn or fetus."
* relationship 1..1
* relationship = $v3-RoleCode#GESTM
  * ^short = "gestational mother"
  * ^definition = "The player of the role is a female whose womb carries the fetus of the scoping entity (child)."