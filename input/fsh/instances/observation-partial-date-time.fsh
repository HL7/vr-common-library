Instance: ObservationPartialDateTimeExample
InstanceOf: Observation
Usage: #example
Description: "Observation with Partial Date Time"
* subject.display = "A subject"
* effectiveDateTime = "2020-11-12T16:39:40-05:00"
* performer.display = "A Performer"
* code = $loinc#81956-5 "Date+time of death"
* valueDateTime
  * extension[ExtensionPartialDateTimeVitalRecords]
    * extension[day]
      * valueUnsignedInt.extension[dataabsent].valueCode = #unknown
    * extension[month].valueUnsignedInt = 11
    * extension[year].valueUnsignedInt = 2020
    * extension[time].valueTime = "12:13:14"
    * extension[time]
      * valueTime.extension[dataabsent].valueCode = #unknown
* status = #final

