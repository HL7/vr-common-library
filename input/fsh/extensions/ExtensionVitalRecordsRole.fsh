Extension: ExtensionVitalRecordsRole
Id: Extension-vital-records-role-vr
Title: "Extension - Vital Records Role"
Description: "Used to indicate whether an instance relates to the father or the mother."
* insert ExtensionContextResource(Observation)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from ValueSetRoleVitalRecords (required)
  * ^short = "Value set used to indicate father or mother."
  * ^binding.description = "Father, Mother"