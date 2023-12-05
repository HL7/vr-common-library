Instance: observation-usual-work-vr-jada-ann-quinn-common
InstanceOf: ObservationUsualWorkVitalRecords
Description: "Example of usual-work-vr profile (Mother)"
Usage: #example
* status = #final
* extension[roleVitalRecords].valueCodeableConcept = $v3-RoleCode#MTH "mother"
* subject = Reference(patient-mother-vr-jada-ann-quinn-common)
* valueCodeableConcept.text = "CARPENTER"
* component[odh-UsualIndustry].valueCodeableConcept.text = "CONSTRUCTION"