Instance: ConceptMapBirthSexFetusVitalRecords
InstanceOf: ConceptMap
Title: "ConceptMap - Birth Sex Fetus Vital Records"
Usage: #definition
* experimental = false
* insert ConceptMapIntro(BirthSex, ValueSetBirthSexFetusVitalRecords)
* insert AddGroup("IJE",$v3-AdministrativeGender)
* insert MapConcept( #M,  "Male", #M, "Male")
* insert MapConcept( #F,  "Female", #F, "Female")
* insert AddGroup("IJE",$v3-NullFlavor)
* insert MapConcept( #U,  "Unknown", #UNK, "unknown")