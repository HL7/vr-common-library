Extension: AuxiliaryStateIdentifierVitalRecords
Id: AuxiliaryStateIdentifier
Title: "Auxiliary State Identifier"
Description: "An identifier associated by the submitting jurisdiction with a specific  certificate number.  Twelve character string with no defined format or content."
* insert ExtensionContextResource(Meta)
* insert ExtensionContextResource(Identifier)
* value[x] 1..1
* value[x] only string
* valueString ^maxLength = 12

// Extension: AuxiliaryStateIdentifier2VitalRecords
// Id: AuxiliaryStateIdentifier2
// Title: "Auxiliary State Identifier2"
// Description: "An identifier associated by the submitting jurisdiction with a specific  certificate number.  Twelve character string with no defined format or content.  The two auxiliary identifiers map to distinct fields in legacy formats, and can be provided or ommitted independently of each other."
// * insert AuxiliaryStateIdentifier

Extension: CertificateNumberVitalRecords
Id: CertificateNumber
Title: "Certificate Number"
Description: "Certificate number. Six digit number.  Leading zeroes are optional."
* insert ExtensionContextResource(Identifier)
* value[x] 1..1
* value[x] only string
* valueString ^maxLength = 6