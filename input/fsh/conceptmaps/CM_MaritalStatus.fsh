Instance: ConceptMapMaritalStatusVitalRecords
InstanceOf: ConceptMap
Title: "Marital Status Vital Records"
// Description: "Note: 'Domestic Partnership' is not supported by NCHS and will be mapped to 'U' unknown"
// Id: vrdr-marital-status-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(MaritalStatus, ValueSetMaritalStatusVitalRecords)
* description = "Note: 'Domestic Partnership' may be used by jurisdictions, but is not supported by NCHS and will be mapped to 'U' (Not Classifiable). 
IJE 'U' maps to 'UNK' (unknown) when converted to FHIR."
* insert AddGroup($IJE,$v3-MaritalStatus)
* insert MapConcept( #D,  "Divorced",#D, "Divorced")
* insert MapConcept( #A,  "Married but Separated",#L, "Legally Separated")
* insert MapConcept( #M,  "Married",#M, "Married")
* insert MapConcept( #S,  "Never Married",#S, "Never Married")
* insert MapConcept( #W,  "Widowed",#W, "Widowed")
* insert MapConcept( #U,  "Not Classifiable",#T, "Domestic Partnership") //-- not yet supported by NCHS
* insert AddGroup($IJE,$v3-NullFlavor)
* insert MapConcept( #U,  "Not Classifiable",#UNK, "unknown")