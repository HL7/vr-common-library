Instance: ConceptMapRaceMissingValueReasonVitalRecords
InstanceOf: ConceptMap
Title: "Race Missing Value Reason Vital Records"
// Id: vrdr-race-missing-value-reason-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(RaceMissingValueReason, ValueSetRaceMissingValueReasonVitalRecords)
* insert AddGroup($IJE,$v3-NullFlavor)
* insert MapConcept( #ASKU, "asked but unknown", #S, "Sought\, but unknown")
* insert MapConcept( #UNK,  "unknown", #C, "Not obtainable")
* insert AddGroup($IJE, $v3-ActReason)
* insert MapConcept( #PREFUS,  "patient refuse",#R, "Refused") //PREFUS "patient refuse"