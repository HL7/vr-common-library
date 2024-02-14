Instance: patient-fetal-death-example
InstanceOf: Patient
Title: "Patient - Fetal Death Extension example"
Usage: #example
Description: "Example of a Patient with a Fetal Death status"
* identifier
  * use = #usual
  * type = $v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "9932702"
* name.family = "Jones"
* gender = #female
* birthDate = "2019-01-09"
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
    * valueDateTime = "2019-01-09T18:23:00-07:00"
* deceasedBoolean = true
* deceasedBoolean
  * extension
    * url = Canonical(ExtensionPatientFetalDeathVitalRecords)
    * valueBoolean = true
* multipleBirthInteger = 3


