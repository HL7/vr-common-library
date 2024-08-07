Profile: PatientChildVitalRecords
Parent: PatientVitalRecords
Id: Patient-child-vr
Title: "Patient - Child Vital Records"
Description: "The subject patient (newborn/infant/child) for whom clinical data is included in the report."
* obeys childNotDeceased
* extension[race] 
* extension[ethnicity] 
* extension[birthsex] 1.. 
  * value[x] ^short = "Sex"
* extension[birthPlace] 
  * valueAddress.state ^short = "State of Birth"
    * extension[nationalReportingJurisdictionId] ^short = "Jurisdiction of Birth"
  * valueAddress.district ^short = "District of Birth"
    * extension[districtCode] ^short = "County of birth"
  * valueAddress.city ^short = "City of Birth"
* extension[parentReportedAgeAtDelivery] ^short = "The mother or father's reported age at the time of delivery of the child"
  * extension[reportedAge].value[x] ^short = "Reported age"
  * extension[motherOrFather].valueCodeableConcept ^short = "Indicates mother/Father code"
* identifier[MRN] 
  * value ^short = "Medical record number"
  * type.coding.code ^short = "Identifier type code"
* extension[birthsex].valueCode from ValueSetSexAssignedAtBirthVitalRecords (required)
* insert childName 
* insert birthDateAndTime
* multipleBirth[x] only integer
* multipleBirth[x] 
  * .extension[bypassEditFlag].value[x]
    * ^short = "To reflect the relevant edit possibilities for plurality."
  * .extension[multipleBirthTotal] 
    * ^short = "Where a patient is a part of a multiple delivery, this is the total number of deliveries that occurred in this pregnancy."
    * value[x] ^short = "Plurality"
* deceased[x] MS
  * ^short = "Indicates if the individual is deceased or not, dateTime is preferred"


RuleSet: childName
* name MS
  * family 1.. MS
    * extension[dataAbsentReason] ^short = "When \"name not chosen\" use code \"temp-unknown\""
  * given MS
    * extension[dataAbsentReason] ^short = "When \"name not chosen\" use code \"temp-unknown\""
  * use ^short = "The use of a human name"
  * suffix ^short = "Surname suffix"

RuleSet: birthDateAndTime 
* birthDate 1..
  * ^short = "Birth Date with support for partial date and time of birth via extension.  See [Birth Date and Time]."
  * extension[partialDateTime] ^short = "Use if only partial date and time of birth is known"
  * extension[birthTime]  ^short = "Time of Birth"
  * extension[partialDateTime] 
  * extension[birthTime] 


  // * extension[datePartAbsentReason] MS 
Invariant: childNotDeceased
Description: "Patients who are marked deceased don't conform to PatientChildVitalRecords. If the deceased field is present, it must be false"
Severity: #error
* expression = "deceased.exists() implies deceased = false"
//     "(deceased.exists()
//   implies
//      (value = 'false'))"

