Instance: ConceptMapBirthAttendantTitlesVitalRecords
InstanceOf: ConceptMap
Title: "Birth Attendant Titles Vital Records"
Usage: #definition
* experimental = false
* insert ConceptMapIntro(BirthAttendantTitles, ValueSetBirthAttendantTitlesVitalRecords)
* insert AddGroup($IJE, $sct)
//* insert MapConcept( #1,  "MD", #112247003, "Medical Doctor") -- retired 
* insert MapConcept( #1,  "MD", #309343006, "Medical Doctor") 
* insert MapConcept( #2,  "DO", #76231001, "Osteopath")
* insert MapConcept( #3,  "CNM/CM", #445521000124102, "Advanced Practice Midwife" )
* insert MapConcept( #4,  "Other Midwife", #445531000124104, "Lay Midwife" )
* insert AddGroup($IJE, $v3-NullFlavor)
* insert MapConcept( #5,  "Other (specify\)", #OTH, "other")
* insert MapConcept( #9,  "Unknown", #UNK, "Unknown")


