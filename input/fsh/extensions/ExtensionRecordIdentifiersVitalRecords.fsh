RuleSet: AuxiliaryStateIdentifier
* insert ExtensionContextResource(Meta)
* ^context.type = #element
* ^context.expression = "Identifier"
* value[x] 1..1
* value[x] only string
* valueString ^maxLength = 12

Extension: AuxiliaryStateIdentifier1VitalRecords
Id: AuxiliaryStateIdentifier1
Title: "Auxiliary State Identifier1"
Description: "An identifier associated by the submitting jurisdiction with a specific death certificate number.  Twelve digit number."
* insert AuxiliaryStateIdentifier

Extension: AuxiliaryStateIdentifier2italRecords
Id: AuxiliaryStateIdentifier2
Title: "Auxiliary State Identifier2"
Description: "An identifier associated by the submitting jurisdiction with a specific death certificate number.  Twelve digit number."
* insert AuxiliaryStateIdentifier

Extension: CertificateNumberVitalRecords
Id: CertificateNumber
Title: "Certificate Number"
Description: "Death certificate number. Six digit number.  Leading zeroes are optional."
* ^context.type = #element
* ^context.expression = "Identifier"
* value[x] 1..1
* value[x] only string
* valueString ^maxLength = 6