Instance: observation-education-level-vr-a-freeman
InstanceOf: ObservationEducationLevelVitalRecords
Title: "Observation - Education Level example [A Freeman]"
Description: "Example of Observation-education-level-vr profile (A Freeman)"
Usage: #example
* status = #final
* code = $loinc#80913-7 "Highest level of education [US Standard Certificate of Death]"
* subject = Reference(us-core-patient-vr-a-freeman) "Patient - A Freeman"
* effectiveDateTime = "2019-12-02"
* valueCodeableConcept = $HL7_EducationLevelCS#SEC "Some secondary or high school education"
  * text = "9th through 12th grade; no diploma"
