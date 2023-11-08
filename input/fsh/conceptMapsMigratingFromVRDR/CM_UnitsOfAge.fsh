Instance: ConceptMapUnitsOfAgeVitalRecords
InstanceOf: ConceptMap
Title: "ConceptMap - Units Of Age Vital Records"
// Id: vrdr-units-of-age-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(UnitsOfAge, ValueSetUnitsOfAgeVitalRecords)
* insert AddGroup("IJE",$UCUM)
* insert MapConcept( #1,  "Years",#a, "Years")
* insert MapConcept( #2,  "Months",#mo, "Months")
* insert MapConcept( #4,  "Days",#d, "Days")
* insert MapConcept( #5,  "Hours",#h, "Hours")
* insert MapConcept( #6,  "Minutes",#min, "Minutes")
* insert AddGroup("IJE",$v3-NullFlavor)
* insert MapConcept( #9,  "Unknown - not classifiable",#UNK, "Unknown")