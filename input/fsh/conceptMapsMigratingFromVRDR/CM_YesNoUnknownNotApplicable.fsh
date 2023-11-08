
Instance: ConceptMapYesNoUnknownNotApplicableVitalRecords
InstanceOf: ConceptMap
Title: "ConceptMap - Yes No Unknown Not Applicable Vital Records"
 // Id: vrdr-yes-no-unknown-not-applicable-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(YesNoUnknownNotApplicable, ValueSetYesNoUnknownNotApplicableVitalRecords)
* insert AddGroup("IJE",$v2-0136)
* insert MapConcept( #N,  "No",#N, "No")
* insert MapConcept( #Y,  "Yes",#Y, "Yes")
* insert AddGroup("IJE",$v3-NullFlavor)
* insert MapConcept( #X,  "Not Applicable",#NA, "not applicable")
* insert MapConcept( #U,  "Unknown",#UNK, "unknown")

Instance: ConceptMapYesNoUnknownVitalRecords
InstanceOf: ConceptMap
Title: "ConceptMap - Yes No Unknown Vital Records"
 // Id: vrdr-yes-no-unknown-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(YesNoUnknown, ValueSetYesNoUnknownVitalRecords)
* insert AddGroup("IJE",$v2-0136)
* insert MapConcept( #N,  "No",#N, "No")
* insert MapConcept( #Y,  "Yes",#Y, "Yes")
* insert AddGroup("IJE",$v3-NullFlavor)
* insert MapConcept( #U,  "Unknown",#UNK, "unknown")


Instance: ConceptMapYesNoNotApplicableVitalRecords
InstanceOf: ConceptMap
Title: "ConceptMap - Yes No Not Applicable Vital Records"
 // Id: vrdr-not-applicable-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(NotApplicable, ValueSetYesNoNotApplicableVitalRecords)
* insert AddGroup("IJE",$v2-0136)
* insert MapConcept( #N,  "No",#N, "No")
* insert MapConcept( #Y,  "Yes",#Y, "Yes")
* insert AddGroup("TRX",$v3-NullFlavor)
* insert MapConcept( #X,  "Not Applicable",#NA, "Not Applicable")
