Instance: ConceptMapDateOfBirthEditFlagsVitalRecords
InstanceOf: ConceptMap
Title: "Date of Birth Edit Flags Vital Records"
Usage: #definition
* experimental = false
* insert ConceptMapIntro(DateOfBirthEditFlags, ValueSetDateOfBirthEditFlagsVitalRecords)
* insert AddGroup($IJE,[[Canonical(CodeSystemEditFlagsVitalRecords)]])
* insert MapConcept(#0, "Edit Passed", #0,  "Edit Passed")
* insert MapConcept(#1, "Data Queried", #1dataQueried,  "Data queried")
