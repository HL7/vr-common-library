Instance: ConceptMapMothersDateOfBirthEditFlagsVitalRecords
InstanceOf: ConceptMap
Usage: #definition
* experimental = false
* insert ConceptMapIntro(MothersDateOfBirthEditFlags, ValueSetMothersDateOfBirthEditFlagsVitalRecords)
* insert AddGroup($IJE,[[Canonical(CodeSystemEditFlagsVitalRecords)]])
* insert MapConcept(#0, "Edit Passed", #editBypass0,  "Edit Passed")
* insert MapConcept(#1, "Data Queried", #dataQueried,  "Data queried")
