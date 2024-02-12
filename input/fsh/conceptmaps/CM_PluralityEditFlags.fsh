Instance: ConceptMapPluralityEditFlagsVitalRecords
InstanceOf: ConceptMap
Title: "Plurality Edit Flags Vital Records"
Usage: #definition
* experimental = false
* insert ConceptMapIntro(PluralityEditFlags, ValueSetPluralityEditFlagsVitalRecords)
* insert AddGroup($IJE,[[Canonical(CodeSystemEditFlagsVitalRecords)]])
* insert MapConcept(#0, "Off", #0off,  "Off")
* insert MapConcept(#1, "Queried\, and Correct", #1queriedCorrect,  "Queried\, and Correct")
* insert MapConcept(#2, "Plurality/Set Order Queried\, Inconsistent", #2pluralityQueriedInconsistent,  "Plurality/Set Order Queried\, Inconsistent")
