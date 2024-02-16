Extension: ExtensionRelatedpersonBirthplaceVitalRecords
Id: Extension-relatedperson-birthplace-vr
Title: "RelatedPerson Birth Place Vital Records"
Description: "The registered place of birth for the related person. A system may use the address.text if it doesn't store the birthPlace address in discrete elements.
This extension is the same as the [patient birthPlace extension](https://hl7.org/fhir/extensions/StructureDefinition-patient-birthPlace.html), but with relatedPerson context."
* value[x] only Address
  * ^short = "The registered place of birth of the related person."
* valueAddress 0..1
  * ^short = "The registered place of birth of the related person."
* insert ExtensionContextResource(RelatedPerson)