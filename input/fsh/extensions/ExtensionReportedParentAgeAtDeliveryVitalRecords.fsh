Extension: ExtensionReportedParentAgeAtDeliveryVitalRecords
Id: Extension-reported-parent-age-at-delivery-vr
Title: "Extension - Reported Parent Age At Delivery - Vital Records"
Description: "This Extension profile represents the reported age of the parent (either the gestational mother or the natural father - as defined by NCHS) at the delivery time of the newborn or fetus. A reference to either the **Patient - Mother - Vital Records** or the **RelatedPerson - Father Natural - Vital Records** represents the parent. It can optionally contain a reference to the reporter (**US Core Patient Profile** or **US Core RelatedPerson Profile**)."
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Patient"
* . 0..*
  * ^short = "Extension - Reported Parent Age at Delivery - Vital Records"
  * ^definition = "This Extension profile represents the reported age of the parent at the delivery time of the newborn or fetus. It also contains a reference to the newborn (Patient - Child - Vital Records) or the fetus (Patient - Decedent Fetus - Vital Records) in which is located the date of delivery (Patient.birthDate). It can optionally contain a reference to the reporter (US Core Patient Profile or US Core RelatedPerson Profile)."
* extension ..3
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "url"
  * ^slicing.rules = #open
* extension contains
    reportedAge 1..1 MS and
    motherOrFather 1..1 MS and
    reporter 0..1
* extension[reportedAge] only Extension
  * ^short = "Age of the parent at the time of delivery reported by another person."
  * ^definition = "Age of the parent at the time of delivery reported by another person."
  * url only uri
  * value[x] 1..1
  * value[x] only Quantity
    * ^short = "Reported age in years"
* extension[motherOrFather] only Extension
  * ^short = "Reference to the mother or father."
  * ^definition = "Reference to the mother or father."
  * url only uri
  * value[x] 1..1
  * value[x] only Reference(PatientMotherVitalRecords or RelatedPersonFatherNaturalVitalRecords)
    * ^short = "Reported age in years"
* extension[reporter] only Extension
  * ^short = "Reference to the person who reported the parent's age."
  * ^definition = "Reference to the person who reported the parent's age."
  * url only uri
  * value[x] 1..1
  * value[x] only Reference(USCorePatientProfile or USCoreRelatedPersonProfile)