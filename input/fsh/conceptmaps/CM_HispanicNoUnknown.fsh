Instance: ConceptMapHispanicNoUnknownVitalRecords
InstanceOf: ConceptMap
Title: "Hispanic No Unknown Vital Records"
Usage: #definition
* experimental = false
* insert ConceptMapIntro(HispanicNoUnknown, ValueSetYesNoUnknownVitalRecords)
* insert AddGroup($IJE,$v2-0136)
* insert MapConcept( #H,  "Yes",#Y, "Yes")
* insert MapConcept( #N,  "No",#N, "No")
* insert AddGroup($IJE,$v3-NullFlavor)
* insert MapConcept( #U,  "Unknown",#UNK, "unknown")