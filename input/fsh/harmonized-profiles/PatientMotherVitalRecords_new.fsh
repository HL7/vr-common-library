Profile: PatientMotherVitalRecords
Parent: PatientVitalRecords
Id: Patient-mother-vr
Title: "Patient - Mother Vital Records"
Description: "This Patient profile represents the woman who gave birth to, or delivered the infant."
// * extension[race] 1..
//   * ^short = "If race is unknown, use UNK from the bound value set."
// * extension[ethnicity] 1..
//   * ^short = "If ethnicity is unknown omit both coded data fields."
* extension[birthPlace] MS 
* identifier[MRN] MS
* identifier[SSN] MS
* name[currentLegalName] MS 
* name[namePriorToFirstMarriage] MS 
* name.family 1..
* birthDate 1..
* birthDate.extension[partialDate] MS 
// * birthDate 1..
//   * extension contains ExtensionDatePartAbsentReasonVitalRecords named datePartAbsentReason 0..* MS
//   * extension[datePartAbsentReason] ^short = "Indicates reason for missing data on either the birthDate or the birthTime."
//     * ^definition = "Indicates reason for missing data on either the birthDate or the birthTime."
* birthDate.extension[bypassEditFlag] ^short = "To reflect the relevant edit possibilities for Mother's date of birth."
* deceased[x] MS
  * ^short = "Indicates if the individual is deceased or not, dateTime is preferred"
* address.extension[withinCityLimitsIndicator] MS 
* link MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "type"
  * ^slicing.description = "Slice based on link type"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
* link contains mother 0..1 MS
* link[mother] ^short = "Link to the birth mother's RelatedPerson record"
  * other only Reference(RelatedPersonMotherVitalRecords)
  * other MS
  //  * ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy"
  //  * ^type.extension.valueBoolean = false
  // From Chris Moesel 10/26/23:   That extension is actually used in the FHIR core Patient SD for Patient.link.other. 
  // Since this element is a Patient.link:mother.other, one could argue that the extension already applies and does not need to be repeated in the mother slice. 
  // Sometimes you need to repeat extensions in slices for the IG Publisher to do validation correctly, 
  // but in this case, I expect it's safe to remove it. So if you have FSH explicitly adding this extension, I'd just delete those lines of FSH.
  * type = #seealso
  * type MS
    // * ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy"
    // * ^extension.valueBoolean = false