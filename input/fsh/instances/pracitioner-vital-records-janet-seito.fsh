Instance: practitioner-vital-records-janet-seito
InstanceOf: PractitionerVitalRecords
Title: "Practitioner - Vital Records - Janet Seito"
Description: "Practitioner - Vital Records: Janet Seito example"
Usage: #example
* identifier
  * system = "http://hl7.org/fhir/sid/us-npi"
  * value = "223347044"
* name
  * family = "Janet"
  * given = "Seito"
  * suffix = "D.O."
// This seems like a mistake (not by us)
// * name
//   * family = "Jones"
//   * given = "Avery"
//   * suffix = "M.D."
* qualification.code = $sct#76231001 "Osteopath (occupation)"
* address.line = "5590 E Lockwood Drive SW, #1"
* address.city = "Queens"
* address.state = "NY"
* address.district = "Kings"
* address.city.extension[cityCode].valuePositiveInt = 01234
* address.district.extension[districtCode].valuePositiveInt  = 321
* address.country = "US"
* address.extension[unitnumber].valueString = "#1"
* address.extension[stnum].valueString = "5590"
* address.extension[stname].valueString = "Lockwood"
* address.extension[stdesig].valueString = "Drive"
* address.extension[predir].valueString = "E"
* address.extension[postdir].valueString = "SW"