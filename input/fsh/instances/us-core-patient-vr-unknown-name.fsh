Instance: us-core-patient-vr-unknown-name
InstanceOf: USCorePatientProfile
Title: "USCorePatient - Patient example [Unknown Name]"
Description: "Example of US Core Patient profile (Unknown)"
Usage: #example
* identifier
  * use = #usual
  * type = $v2-0203#MR "Medical Record Number"
    * text = "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "MR303303305"
* active = true
* name.family = "UNK"
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
    * valueCode = #unknown
* gender = #unknown