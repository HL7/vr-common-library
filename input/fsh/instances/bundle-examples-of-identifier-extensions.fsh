Instance: bundle-examples-of-identifiers
InstanceOf: Bundle
Title: "Bundle - Example of Identifier Extensions"
Description: "Bundle - Example of Identifier Extensions"
Usage: #example
* type = #collection 
* identifier.system = Canonical(CodeSystemIJEVitalRecords)
* identifier
  * value = "2019NJ15075"
  * extension[CertificateNumber].valueString = "15075"
  * extension[AuxiliaryStateIdentifier].valueString = "444455555"
* timestamp = "2019-02-11T02:05:44.434Z"