Instance: relatedperson-father-vr-tony-lewis-common
InstanceOf: RelatedPersonFatherVitalRecords
Title: "RelatedPerson - Adoptive Father Deceased example [Tony Lewis]"
Description: "Example of RelatedPerson-father-vr profile (adoptive father) with Deceased indicator"
Usage: #example
// * extension[race]
//   * extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
//   * extension[text].valueString = "White"
// * extension[ethnicity]
//   * extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
//   * extension[text].valueString = "Not Hispanic or Latino"
* extension[birthPlace].valueAddress.state = "VT"
// * extension[deceased].valueDateTime = "2022-05-21"
* active = true
* patient = Reference(patient-child-vr-babyg-quinn-common) "Patient - Child (Baby G Quinn)"
* relationship = $v3-RoleCode#ADOPTF "adoptive father"
  * text = "Adoptive Father"
* name
  * use = #official
  * family = "Lewis"
  * given = "Tony"
* gender = #male
* birthDate = "1982-01-23"