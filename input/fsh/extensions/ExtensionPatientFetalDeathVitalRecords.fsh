Extension: ExtensionPatientFetalDeathVitalRecords
Id: Extension-patient-fetal-death-vr
Title: "Patient Fetal Death Vital Records"
Description: "The fetal death status of the patient."
* ^experimental = false
* insert ExtensionContextFhirpath(Patient.deceased)
* . 0..1
  * ^short = "fetal death indicator"
  * ^definition = "If present and true, indicates that the status of the patient is fetal death."
* value[x] 1..1
* value[x] only boolean
