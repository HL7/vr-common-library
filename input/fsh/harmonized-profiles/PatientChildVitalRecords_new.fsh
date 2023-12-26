Profile: PatientChildVitalRecords
Parent: PatientVitalRecords
Id: Patient-child-vr
Title: "Patient - Child Vital Records"
Description: "The subject patient (newborn/infant/child) for whom clinical data is included in the report."
* extension[race] MS
* extension[ethnicity] MS
* extension[birthsex] 1.. MS
* extension[$patient-birthPlace] MS 
  * valueAddress.state ^short = "State of Birth"
    * extension[nationalReportingJurisdictionId] ^short = "Jurisdiction of Birth"
* extension[parentReportedAgeAtDelivery] ^short = "The mother or father's reported age at the time of delivery of the child"
* identifier[MRN] MS
* extension[birthsex].valueCode from ValueSetBirthSexChildVitalRecords (required)
* insert childName 
* insert birthDateAndTime
* multipleBirth[x] only integer
* multipleBirth[x] MS
  * .extension[bypassEditFlag].value[x]
    * ^short = "To reflect the relevant edit possibilities for plurality."
  * .extension[multipleBirthTotal] MS
    * ^short = "Where a patient is a part of a multiple delivery, this is the total number of deliveries that occurred in this pregnancy."
* deceased[x] MS
  * ^short = "Indicates if the individual is deceased or not, dateTime is preferred"

RuleSet: childName
* name MS
  * family 1.. MS
    * extension[dataAbsentReason] ^short = "When \"name not chosen\" use code \"temp-unknown\""
  * given MS
    * extension[dataAbsentReason] ^short = "When \"name not chosen\" use code \"temp-unknown\""

RuleSet: birthDateAndTime 
* birthDate 1..
  * ^short = "Birth Date with support for partial date and time of birth via extension.  See [Birth Date and Time]."
  * extension[partialDateTime] ^short = "Use if only partial date and time of birth is known"
  * extension[birthTime]  ^short = "Time of Birth"
  * extension[partialDateTime] MS 
  * extension[birthTime] MS 


  // * extension[datePartAbsentReason] MS 
