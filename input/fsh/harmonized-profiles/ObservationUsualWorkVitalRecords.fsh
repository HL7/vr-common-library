Profile: ObservationUsualWorkVitalRecords
Parent: UsualWork
Id: Observation-usual-work-vr
Title: "Vital Records Usual Work"
Description: "Vital Records Usual Work (UsualWork)"
* subject only Reference(PatientVitalRecords)  // Mother or Decedent... required by the Usual Work Profile
* focus only  Reference(RelatedPersonParentVitalRecords)  // Mother or Father
* extension contains ExtensionVitalRecordsRole named vitalRecordsRole 0..1 
* extension[vitalRecordsRole] ^short = "Vital Records Role (father,mother if present)"
* component[odh-UsualIndustry]
  * valueCodeableConcept
    * text ^short = "Industry - Literal"
    * coding[industryCDCCensus2018] ^short = "Industry Code"
* valueCodeableConcept
  * text ^short = "Occupation - Literal"
  * coding[occupationCDCCensus2018] ^short = "Occupation Code"