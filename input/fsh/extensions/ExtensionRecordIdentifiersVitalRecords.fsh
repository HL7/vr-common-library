RuleSet: AuxiliaryStateIdentifier
* insert ExtensionContextResource(Meta)
* insert ExtensionContextResource(Identifier)
* value[x] 1..1
* value[x] only string
* valueString ^maxLength = 12

Extension: AuxiliaryStateIdentifier1VitalRecords
Id: AuxiliaryStateIdentifier1
Title: "Auxiliary State Identifier1 Vital Records"
Description: "The first of two twelve character strings associated by the submitted jurisdiction with a specific certificate number. Identifier1 can be provided separately, or with Identifier2"
* insert AuxiliaryStateIdentifier

Extension: AuxiliaryStateIdentifier2VitalRecords
Id: AuxiliaryStateIdentifier2
Title: "Auxiliary State Identifier2 Vital Records"
Description: "The second of two twelve character strings associated by the submitted jurisdiction with a specific certificate number. Identifier2 can be provided separately, or with Identifier1."
* insert AuxiliaryStateIdentifier

Extension: CertificateNumberVitalRecords
Id: CertificateNumber
Title: "Certificate Number"
Description: "Certificate number. Six digit number.  Leading zeroes are optional."
* insert ExtensionContextResource(Identifier)
* value[x] 1..1
* value[x] only string
* valueString ^maxLength = 6