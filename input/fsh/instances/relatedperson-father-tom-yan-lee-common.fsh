Instance: relatedperson-father-tom-yan-lee-common
InstanceOf: RelatedPersonFatherVitalRecords
Title: "RelatedPerson - Father example [Tom Yan Lee]"
Description: "Example of Relatedperson-father-vr (Tom Yan Lee)"
Usage: #example
* extension[race]
  * extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
  * extension[text].valueString = "White"
* extension[ethnicity]
  * extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
  * extension[text].valueString = "Not Hispanic or Latino"
* extension[birthPlace].valueAddress.state = "NY"
* active = true
* patient = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* relationship = $v3-RoleCode#NFTH "natural father"
  * text = "Natural Father"
* name
  * use = #official
  * family = "Lee"
  * given[0] = "Tom"
  * given[+] = "Yan"
* gender = #male
* birthDate = "1984-02-27"