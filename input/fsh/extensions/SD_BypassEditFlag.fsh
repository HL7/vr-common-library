Extension: ExtensionBypassEditFlagVitalRecords
Id: BypassEditFlag
Title: "BypassEditFlag Vital Records"
Description: "Extension to hold a codeable concept from one of several valuesets."
* insert boilerplate
* value[x] 1..1
* value[x] only CodeableConcept
* insert ExtensionContextResource(integer) //multipleBirth
* insert ExtensionContextResource(CodeableConcept) //education
* insert ExtensionContextResource(date) //birthDate
* insert ExtensionContextResource(Quantity) //bfdr