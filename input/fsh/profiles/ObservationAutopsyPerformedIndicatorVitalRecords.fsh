Profile: ObservationAutopsyPerformedIndicatorVitalRecords
Parent: Observation
Id: Observation-autopsy-performed-indicator-vr
Title: "Observation - Autopsy Performed Indicator Vital Records"
Description: "This Observation records if an autopsy was performed, if autopsy findings are available, and the autopsy Performer (US Core Practioner)."
* status MS
* code = $loinc#85699-7
* code MS
* subject 1.. MS
* subject only Reference(PatientVitalRecords)
* performer ..1
  * ^short = "Autopsy Performer using USCorePractioner"
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from ValueSetYesNoUnknownVitalRecords (required)
* valueCodeableConcept 1..1
  * ^short = "Autopsy was performed?"
* component ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* component contains autopsyResultsAvailable 0..1
* component[autopsyResultsAvailable] ^short = "Autopsy Results Available"
  * code = $loinc#69436-4
  * value[x] 1..
  * value[x] only CodeableConcept
  * value[x] from ValueSetYesNoUnknownVitalRecords (required)