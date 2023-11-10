Instance: observation-autopsy-performed-indicator-vr-a-freeman
InstanceOf: ObservationAutopsyPerformedIndicatorVitalRecords
Title: "Observation - Autopsy Performed Indicator example [A Freeman]"
Description: "Example of Observation-autopsy-performed-indicator-vr profile (A Freeman)"
Usage: #example
* status = #final
* subject = Reference(us-core-patient-vr-a-freeman)
* valueCodeableConcept = $v2-0136#Y "Yes"
* component
  * code = $loinc#69436-4
  * valueCodeableConcept = $v2-0136#Y "Yes"