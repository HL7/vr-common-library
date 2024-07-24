
Profile: RelatedPersonFatherVitalRecords
Parent: RelatedPersonParentVitalRecords //Based on US Core Related Person Profile
Id: RelatedPerson-father-vr
Title: "RelatedPerson - Father Vital Records"
Description: "The father of the report subject. Different individuals may play different roles as the father (e.g., biological father, adoptive father, etc.).
This profile is designed to supplant the similar profile in VRDR"
* relationship from ValueSetFatherRelationshipVitalRecords (required) //better to use common vs, whereas VRDR used a fixed value (FTH) from codesystem
  * ^short = "Relationships describing the father's role relative to the subject."
  * ^binding.description = "FatherRelationship"
// Add Edit Flags, a la VRDR 
* birthDate.extension[bypassEditFlag] ^short = "To reflect the relevant edit possibilities for Father's date of birth."
  * value[x] ^short = "DOB edit flag"