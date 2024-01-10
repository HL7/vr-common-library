Instance: patient-child-vr-babyg-quinn-w-edit
InstanceOf: PatientChildVitalRecords
Title: "Patient - Child example [Baby G Quinn], with Edit Flag"
Description: "Example of Patient-child-vr profile (Baby G Quinn) with Edit Flag"
Usage: #example
* insert babyquinncommon
* birthDate = "2019-02-12"
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
    * valueDateTime = "2019-02-12T13:00:00-07:00"
* multipleBirthInteger.extension[bypassEditFlag].valueCodeableConcept = CodeSystemEditFlagsVitalRecords#1queriedCorrect "Queried, and Correct"