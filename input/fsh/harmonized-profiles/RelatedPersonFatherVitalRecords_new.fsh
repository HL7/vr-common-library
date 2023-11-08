/* 
VRDR-DecedentFather - profile of USCoreRelatedPersonProfile
VRCL-RelatedPersonFather - profile of VRCL RelatedPersonParent -- profile of USCoreRelatedPersonProfile

Basic Content:
 - patient
 - coded relationship
 - name
 - address

VRCL RelatedPersonParent adds extensions for:
 - birthplace (address)
 - deceased (boolean)
 - race
 - ethnicity
 - funky datePartAbsentReason extension on existing birthDate field
 - Adds SSN slice for identifier
 - References patient to  ""Patient - Child - Vital Records | Patient - Decedent Fetus - Vital Records"" rather than just USCorePatient.

Marks MS for a bunch of USCore stuff like race/ethnicity. 

Except for MS (where policy should be standardized), I don't see any barrier to using RelatedPersonVitalRecords, and its Father and Mother subtypes for VRDR as well.
*/
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