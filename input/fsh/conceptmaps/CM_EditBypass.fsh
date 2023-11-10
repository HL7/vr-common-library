Instance: ConceptMapEditBypass01234VitalRecords
InstanceOf: ConceptMap
// Id: vrdr-edit-bypass-01234-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(EditBypass01234, ValueSetEditBypass01234VitalRecords)
* insert AddGroup($IJE,[[Canonical(CodeSystemBypassEditFlagVitalRecords)]])
* insert MapConcept(#0, "Edit Passed", #0,  "Edit Passed")
* insert MapConcept(#1, "Edit Failed\, Data Queried\, and Verified", #1,  "Edit Failed\, Data Queried\, and Verified")
* insert MapConcept(#2, "Edit Failed\, Data Queried\, but not Verified", #2,  "Edit Failed\, Data Queried\, but not Verified")
* insert MapConcept(#3, "Edit Failed\, Review Needed", #3,  "Edit Failed\, Review Needed")
* insert MapConcept(#4, "Edit Failed\, Query Needed", #4,  "Edit Failed\, Query Needed")