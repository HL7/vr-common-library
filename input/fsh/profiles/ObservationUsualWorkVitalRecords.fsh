Profile: ObservationUsualWorkVitalRecords
Parent: UsualWork
Id: Observation-usual-work-vr
Title: "Observation - Usual Work"
Description: "Used to send text-string industry and occupation information from Jurisdictions to NCHS, and coded versions from NCHS to Jurisdictions."
* subject only Reference(PatientVitalRecords)  // Mother, Child or Decedent... required by the Usual Work Profile
* focus only  Reference(RelatedPersonParentVitalRecords)  // Mother or Father
* extension contains ExtensionRoleVitalRecords named roleVitalRecords 0..1 
* extension[roleVitalRecords] ^short = "Vital Records Role (father,mother if present)"
  * value[x] ^short = "Parent (MTH | FTH)"
* component[odh-UsualIndustry]
  * valueCodeableConcept
    * text ^short = "Industry - Literal"
    * coding[industryCDCCensus2018] ^short = "Industry Code"
    * coding contains NAICS2017 0..1
    * coding[NAICS2017] ^short = "NAICS2017 - 8067 - for NIOSH"
    * coding[NAICS2017] from http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.8067 (required)
* valueCodeableConcept
  * text ^short = "Occupation - Literal"
  * coding[occupationCDCCensus2018] ^short = "Occupation Code"
  * coding contains SOC2018  0..1
  * coding[SOC2018] ^short = "SOC2018 - 8068 for NIOSH"
  * coding[SOC2018] from http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.8068 (required)