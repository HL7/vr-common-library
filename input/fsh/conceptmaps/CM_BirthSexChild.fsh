Instance: ConceptMapBirthSexChildVitalRecords
InstanceOf: ConceptMap
Title: "Birth Sex Child Vital Records"
Usage: #definition
* experimental = false
* insert ConceptMapIntro(BirthSex, ValueSetSexAssignedAtBirthVitalRecords)
* insert AddGroup( $IJE, $admingender)
* insert MapConcept( #M,  "Male", #M, "Male")
* insert MapConcept( #F,  "Female", #F, "Female")
* insert AddGroup( $IJE, $v3-NullFlavor)
* insert MapConcept( #N,  "Not Yet Determined", #UNK, "unknown")