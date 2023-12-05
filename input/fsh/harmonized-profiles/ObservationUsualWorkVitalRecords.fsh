Profile: ObservationUsualWorkVitalRecords
Parent: UsualWork
Id: Observation-usual-work-vr
Title: "Observation - Usual Work"
Description: "Used to send text-string industry and occupation information from Jurisdictions to NCHS, and coded versions from NCHS to Jurisdictions."
* subject only Reference(PatientVitalRecords)  // Mother, Child or Decedent... required by the Usual Work Profile
* focus only  Reference(RelatedPersonParentVitalRecords)  // Mother or Father
* extension contains ExtensionRoleVitalRecords named roleVitalRecords 0..1 
* extension[roleVitalRecords] ^short = "Vital Records Role (father,mother if present)"
* component[odh-UsualIndustry]
  * valueCodeableConcept
    * text ^short = "Industry - Literal"
    * coding[industryCDCCensus2018] ^short = "Industry Code"
* valueCodeableConcept
  * text ^short = "Occupation - Literal"
  * coding[occupationCDCCensus2018] ^short = "Occupation Code"