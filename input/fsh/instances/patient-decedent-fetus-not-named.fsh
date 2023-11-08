Instance: patient-decedent-fetus-not-named
InstanceOf: PatientDecedentFetusVitalRecords
Title: "Patient - Decedent Fetus example [Fetus Not Named]"
Description: "Example of Patient-decedent-fetus-vr (Fetus Not Named)"
Usage: #example
* extension[birthsex]
  * valueCode = #F
* extension[birthPlace]
  * valueAddress
    * city = "Ann Arbor"
    * state = "MI"
    * postalCode = "48103"
* identifier
  * use = #usual
  * type = $v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "9932702"
// NOTE TODO: name.use is a required element and the child is unnamed
// want to confirm this is the appropriate code
* name.use = #usual
// profile indicates that 'When child not named use code "unknown"'
* name.family = "UNK"
  * extension[dataAbsentReason].valueCode = #not-applicable
    // * url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
    // * valueCode = #not-applicable
* gender = #female
* birthDate = "2019-01-09"
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
    * valueDateTime = "2019-01-09T18:23:00-07:00"
* deceasedBoolean = true
* multipleBirthInteger = 3