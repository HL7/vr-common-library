Profile: RelatedPersonParentVitalRecords
Parent: USCoreRelatedPerson
Id: RelatedPerson-parent-vr
Title: "Related Person - Parent Vital Records"
Description: "The RelatedPerson profile contains constraints common to the Mother and Father profiles. Serves as resource profile for RelatedPersonMother and RelatedPersonFather. 
This profile is designed to supplant the similar profile in VRDR"
* extension contains
//    ExtensionRelatedPersonDeceasedVitalRecords named deceased 0..1 and
    ExtensionRelatedpersonBirthplaceVitalRecords named birthPlace 0..1 // and
    // USCoreRaceExtension named race 0..1 and //relaxed constraint from 1..1 to 0..1
    // USCoreEthnicityExtension named ethnicity 0..1 //relaxed constraint from 1..1 to 0..1
// * extension[race] ^short = "If race is unknown, use UNK from the bound value set."
// * extension[ethnicity] ^short = "If ethnicity is unknown omit both coded data fields."
* identifier 
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "type"
  * ^slicing.description = "Slice based on ID type"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
* identifier contains SSN 0..1 
* identifier[SSN] ^short = "SSN if available and appropriate to send"
  * type 1..1 
  * type = $v2-0203#SS
* patient only Reference(PatientVitalRecords) //generalized to USCorePatient
* relationship 1.. 
* name 1.. 
* birthDate 
  * extension contains 
      ExtensionPartialDateVitalRecords named partialDate 0..* and
      BypassEditFlag named bypassEditFlag 0..1
  * extension[partialDate] ^short = "Provides values of a partial date"
    * ^definition = "Indicates reason for missing data on either the birthDate or the birthTime."
  * extension[bypassEditFlag]
    * valueCodeableConcept from ValueSetDateOfBirthEditFlagsVitalRecords (required)
    * value[x] only CodeableConcept
      * ^short = "To reflect the relevant edit possibilities for date of birth."
      * ^binding.description = "Date of Birth Edit Flags (NCHS)"
  // * extension contains ExtensionDatePartAbsentReasonVitalRecords named datePartAbsentReason 0..* MS
  // * extension[datePartAbsentReason] ^short = "Indicates reason for missing birthDate data."
  //   * ^definition = "Indicates reason for missing data on either the birthDate or the birthTime."
* address 
  * ^short = "Address where the related person can be contacted or visited"