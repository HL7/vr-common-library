Extension: ExtensionReportedParentAgeAtDeliveryVitalRecords
Id: Extension-reported-parent-age-at-delivery-vr
Title: "Reported Parent Age At Delivery Vital Records"
Description: "This Extension profile represents the reported age of the parent (either the gestational mother or the natural father - as defined by NCHS) at the delivery time of the newborn or fetus. 
A required code indicates whether the mother or father's age is provided. It can optionally contain a reference to the reporter (**US Core Patient Profile** or **US Core RelatedPerson Profile**)."
* ^experimental = false
* insert ExtensionContextResource(Patient)
* . 0..*
  * ^short = "Extension - Reported Parent Age at Delivery - Vital Records"
  * ^definition = "This Extension profile represents the reported age of the parent at the delivery time of the newborn or fetus. 
  A required code indicates whether the mother or father's age is provided. 
  It can optionally contain a reference to the reporter (US Core Patient Profile or US Core RelatedPerson Profile)."
* extension ..3
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "url"
  * ^slicing.rules = #open
* extension contains
    reportedAge 1..1 MS and
    ExtensionRoleVitalRecords named motherOrFather 1..1 MS and
    reporter 0..1
* extension[reportedAge] only Extension
  * ^short = "Age of the parent at the time of delivery reported by another person."
  * ^definition = "Age of the parent at the time of delivery reported by another person."
  * value[x] 1..1
  * value[x] only Quantity
  * valueQuantity ^short = "Reported age in years"
    * code = $UCUM#a (exactly)
    * value 1..1  
* extension[motherOrFather] ^short = "Mother or Father"
* extension[reporter] only Extension
  * ^short = "Reference to the person who reported the parent's age."
  * ^definition = "Reference to the person who reported the parent's age."
  * value[x] 1..1
  * value[x] only Reference(USCorePatientProfile or USCoreRelatedPersonProfile)