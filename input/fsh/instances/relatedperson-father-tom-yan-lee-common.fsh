Instance: relatedperson-father-vr-tom-yan-lee-common
InstanceOf: RelatedPersonFatherVitalRecords
Title: "RelatedPerson - Father example [Tom Yan Lee]"
Description: "Example of Relatedperson-father-vr profile (Tom Yan Lee) with partial birthdate"
Usage: #example
// * extension[race]
//   * extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
//   * extension[text].valueString = "White"
// * extension[ethnicity]
//   * extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
//   * extension[text].valueString = "Not Hispanic or Latino"
* extension[birthPlace].valueAddress.state = "NY"
* active = true
* patient = Reference(patient-child-vr-babyg-quinn-common) "Patient - Child (Baby G Quinn)"
* relationship = $v3-RoleCode#NFTH "natural father"
  * text = "Natural Father"
* name
  * use = #official
  * family = "Lee"
  * given[0] = "Tom"
  * given[+] = "Yan"
* gender = #male
* birthDate = "1984"
  * extension[partialDate]
    * extension[year].valueUnsignedInt = 1984 
    * extension[month].valueUnsignedInt.extension[dataabsent].valueCode = http://terminology.hl7.org/CodeSystem/data-absent-reason#asked-unknown
    * extension[day].valueUnsignedInt.extension[dataabsent].valueCode = http://terminology.hl7.org/CodeSystem/data-absent-reason#asked-unknown