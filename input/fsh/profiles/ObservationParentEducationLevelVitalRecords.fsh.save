Profile: ObservationParentEducationLevelVitalRecords
Parent: Observation
Id: Observation-parent-education-level-vr
Title: "Observation - Parent Education Level Vital Records"
Description: "The highest degree or level of schooling completed by the parent."
* code from ValueSetEducationLevelPersonVitalRecords (required)
  * ^short = "Persons for whom education level can be reported."
  * ^binding.description = "EducationLevelPerson"
* subject 1..
* subject only Reference(PatientChildVitalRecords or PatientDecedentFetusVitalRecords)
  * ^short = "This is the subject of the report, not the parent"
* focus 1..1
* focus only Reference(RelatedPersonMotherVitalRecords or RelatedPersonFatherVitalRecords)
  * ^short = "The RelatedPerson record for the parent"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from ValueSetEducationLevelVitalRecords (required)
  * ^short = "The collection of education levels used for vital records reporting."
  * ^binding.description = "Vital Records Education Level (NCHS)"