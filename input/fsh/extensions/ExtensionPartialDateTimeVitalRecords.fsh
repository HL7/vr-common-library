Extension: ExtensionPartialDateTimeVitalRecords
Id: Extension-partial-date-time-vr
Title: "Partial Date Time Vital Records"
Description: "Provides values of a partial dateTime for cases beyond what FHIR dateTime can support directly."
* insert ExtensionContextResource(dateTime)
* insert ExtensionContextResource(date)  //This supports birthDate, where we have a dateTime extension for birthTime...
* . ^short = "Partial Date Time"
* . ^definition = "Provides a partial date time."
* extension contains
    year 0..1 and
    month 0..1 and
    day 0..1 and
    time 0..1
* insert YearMonthDay
* extension[time] 
  * ^short = "Date Time"
  * ^definition = "The time portion of the partial date."
  * value[x] 1..1
  * value[x] only time
  * valueTime.extension contains
     $DataAbsentReason named dataabsent 0..1

Extension: ExtensionPartialDateVitalRecords
Id: Extension-partial-date-vr
Title: "Extension - Partial Date Vital Records"
Description: "Provides values of a partial date for cases beyond what FHIR date can support directly."
* insert boilerplate
* insert ExtensionContextResource(date)
* . ^short = "Partial Date"
* . ^definition = "Provides a partial date."
* extension contains
    year 0..1 and
    month 0..1 and
    day 0..1 
* insert YearMonthDay


// Extension: ExtensionDatePartAbsentReasonVitalRecords
// Id: ExtensionDatePartAbsentReasonVitalRecords
// Title: "Extension - Partial Date Absent Reason Vital Records"
// Description: "Provides values of a partial date (Extension).
// If a component is missing, it is assumed unknown.
// * This extension SHOULD NOT be used when the value can be expressed as a [date](https://build.fhir.org/datatypes.html#date), specifically YYYY, YYYY-MM or YYYY-MM-DD).
// * This extension SHOULD NOT be used to express that the date in its entirety is missing/unknown.  In this case a simple dataAbsent reason extension should be used on the date field.
// * This extension SHOULD be used to express missing components of date including XXXX-XX-DD, YYYY-XX-DD, YYYY-MM-XX.
// * If a component is missing, the interpretation should be equivalent to it being present, with a data absent reason of 'unknown'. If the data absent reason is other than 'unknown', the component may be included wih a data absent reason.
// When the known components of the date can be expressed as a valid date, the value SHALL be present.  So, for example 2022-XX-12, the date value should be \"2022\"."
// * insert boilerplate
// * insert ExtensionContextResource(date)
// * . ^short = "Partial Date"
// * . ^definition = "Provides a partial date."
// * extension contains
//     year 0..1 and
//     month 0..1 and
//     day 0..1 
// * insert YearMonthDay

// RuleSet: ExtensionContext(path)
// * ^context[+].type = #element
// * ^context[=].expression = "{path}"

RuleSet: YearMonthDay
* extension[year] 
  * ^short = "Date year (0-9998)"
  * ^definition = "The year portion (YYYY) of the partial date (0-9998)."
  * value[x] 1..1
  * value[x] only unsignedInt
  * valueUnsignedInt ^minValueInteger = 0
  * valueUnsignedInt ^maxValueInteger = 9998
  * valueUnsignedInt.extension contains
     $DataAbsentReason named dataabsent 0..1
* extension[month] 
  * ^short = "Date month (1-12)"
  * ^definition = "The month portion (MM) of the partial date (1-12)."
  * value[x] 1..1
  * value[x] only unsignedInt
  * valueUnsignedInt ^minValueInteger = 1
  * valueUnsignedInt ^maxValueInteger = 12
  * valueUnsignedInt.extension contains
     $DataAbsentReason named dataabsent 0..1
* extension[day] 
  * ^short = "Date day (1-31)"
  * ^definition = "The day portion (DD) of the partial date (1-31)."
  * value[x] 1..1
  * value[x] only unsignedInt
  * valueUnsignedInt ^minValueInteger = 1
  * valueUnsignedInt ^maxValueInteger = 31
  * valueUnsignedInt.extension contains
     $DataAbsentReason named dataabsent 0..1
