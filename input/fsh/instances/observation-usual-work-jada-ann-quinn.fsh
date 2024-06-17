Instance: observation-usual-work-vr-jada-ann-quinn-common
InstanceOf: ObservationUsualWorkVitalRecords
Description: "Example of usual-work-vr profile (Mother)"
Usage: #example
* status = #final
* extension[roleVitalRecords].valueCodeableConcept = $v3-RoleCode#MTH "mother"
* subject = Reference(patient-mother-vr-jada-ann-quinn-common)
* valueCodeableConcept
  * text = "CARPENTER" // Occupation
  * coding[occupationCDCCensus2018][+] = #XX
  * coding[SOC2018][+] = #YY
* component[odh-UsualIndustry]
  * valueCodeableConcept
    * text = "CONSTRUCTION"
    * coding[industryCDCCensus2018][+] = #AA
    * coding[NAICS2017][+] = #BB
                        