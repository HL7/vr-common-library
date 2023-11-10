Instance: relatedperson-mother-carol-hoffer-common
InstanceOf: RelatedPersonMotherVitalRecords
Title: "RelatedPerson - Adoptive Mother example [Carol Hoffer]"
Description: "Example of RelatedPerson-mother-vr profile (adoptive mother)"
Usage: #example
* extension[0]
  * extension[0]
    * url = "ombCategory"
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
  * extension[+]
    * url = "ombCategory"
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#1002-5 "American Indian or Alaska Native"
  * extension[+]
    * url = "text"
    * valueString = "White, American Indian or Alaska Native"
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[+]
  * extension[0]
    * url = "ombCategory"
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
  * extension[+]
    * url = "text"
    * valueString = "Not Hispanic or Latino"
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* active = true
* patient = Reference(patient-child-babyg-quinn) "Patient - Child (Baby G Quinn)"
* relationship = $v3-RoleCode#ADOPTM "adoptive mother"
  * text = "Adoptive Mother"
* name
  * use = #official
  * family = "Hoffer"
  * given = "Carol"
* gender = #female
* birthDate = "1985-03-17"