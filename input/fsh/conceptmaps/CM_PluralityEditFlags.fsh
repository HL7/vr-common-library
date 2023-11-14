Instance: ConceptMapPluralityEditFlagsVitalRecords
InstanceOf: ConceptMap
Title: "ConceptMap - Plurality Edit Flags Vital Records"
Usage: #definition
* experimental = false
* insert ConceptMapIntro(PluralityEditFlags, ValueSetPluralityEditFlagsVitalRecords)
* insert AddGroup($IJE,[[Canonical(CodeSystemEditFlagsVitalRecords)]])
* insert MapConcept(#0, "Off", #off,  "Off")
* insert MapConcept(#1, "Queried\, and Correct", #pluralityQueriedInconsistent,  "Plurality/Set Order Queried\, Inconsistent")
* insert MapConcept(#2, "Plurality/Set Order Queried\, Inconsistent", #queriedCorrect,  "Queried\, and Correct")