Instance: ConceptMapRaceMissingValueReasonVitalRecords
InstanceOf: ConceptMap
Title: "Race Missing Value Reason Vital Records"
// Id: vrdr-race-missing-value-reason-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(RaceMissingValueReason, ValueSetRaceMissingValueReasonVitalRecords)
* insert AddGroup($IJE,$v3-NullFlavor)
* insert MapConcept( #S, "Sought\, but unknown",#ASKU, "asked but unknown" )
* insert MapConcept(  #C, "Not obtainable", #UNK,  "unknown")
* insert AddGroup($IJE, $v3-ActReason)
* insert MapConcept( #R, "Refused", #PREFUS,  "patient refuse") //PREFUS "patient refuse"