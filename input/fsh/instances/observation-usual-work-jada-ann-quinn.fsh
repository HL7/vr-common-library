Instance: observation-usual-work-vr-jada-ann-quinn-common
InstanceOf: ObservationUsualWorkVitalRecords
Usage: #example
* status = #final
* extension[vitalRecordsRole].valueCodeableConcept = $v3-RoleCode#MTH "mother"
* subject = Reference(patient-mother-vr-jada-ann-quinn-common)
* valueCodeableConcept.text = "CARPENTER"
* component[odh-UsualIndustry].valueCodeableConcept.text = "CONSTRUCTION"