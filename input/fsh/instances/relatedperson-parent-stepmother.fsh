Instance: relatedperson-parent-stepmother
InstanceOf: RelatedPersonParentVitalRecords
Title: "RelatedPerson - Stepmother example [Susan Grant]"
Description: "Example of RelatedPerson-parent-vr profile (stepmother)"
Usage: #example
* extension[0]
  * extension[0]
    * url = "ombCategory"
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#2054-5 "Black or African American"
  * extension[+]
    * url = "text"
    * valueString = "Black or African America"
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[+]
  * extension[0]
    * url = "ombCategory"
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
  * extension[+]
    * url = "text"
    * valueString = "Hispanic or Latino"
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* active = true
* patient = Reference(patient-child-babyg-quinn) "Patient - Child (Baby G Quinn)"
* relationship = $v3-RoleCode#STPMTH "stepmother"
  * text = "Stepmother"
* name
  * use = #official
  * family = "Grant"
  * given = "Susan"
* gender = #female
* birthDate = "1985-03-15"