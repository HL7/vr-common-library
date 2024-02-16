Extension: ExtensionRoleVitalRecords
Id: Extension-role-vr
Title: "Role Vital Records"
Description: "Used to indicate whether an instance relates to the father or the mother."
* insert ExtensionContextResource(Observation)
* insert ExtensionContextResource(Encounter)
* insert ExtensionContextResource(Extension)
* insert MotherOrFather

RuleSet: MotherOrFather
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from ValueSetRoleVitalRecords (extensible)
  * ^short = "Value set used to indicate father or mother."
  * ^binding.description = "Vital Records Role"