/* 
VRDR-DecedentMother - profile of USCoreRelatedPersonProfile
VRCL-RelatedPersonMother - profile of VRCL RelatedPersonParent -- profile of USCoreRelatedPersonProfile

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