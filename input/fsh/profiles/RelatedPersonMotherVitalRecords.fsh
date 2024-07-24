
Profile: RelatedPersonMotherVitalRecords
Parent: RelatedPersonParentVitalRecords //Based on US Core Related Person Profile
Id: RelatedPerson-mother-vr
Title: "RelatedPerson - Mother Vital Records"
Description: "The mother of the report subject. Different individuals may play different roles as the mother (e.g., biological mother, adoptive mother, etc.).
This profile is designed to supplant the similar profile in VRDR"
* relationship from ValueSetMotherRelationshipVitalRecords (required) //uses a vs, whereas VRDR used a fixed value (MTH) from codesystem
  * ^short = "Relationships describing the mother's role relative to the subject."
  * ^binding.description = "MotherRelationship"
//* gender MS - removing MS, but adding in ^short so it appears in differential
* gender
  * ^short = "Gender"
//* communication MS - removing MS, but adding in ^short so it appears in differential
* communication
  * ^short = "A language which may be used to communicate with about the patient's health"
* birthDate.extension[bypassEditFlag] ^short = "To reflect the relevant edit possibilities for Mother's date of birth."