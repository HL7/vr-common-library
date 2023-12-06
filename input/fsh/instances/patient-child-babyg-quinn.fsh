RuleSet: babyquinncommon
* extension[race]
  * extension[ombCategory]
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
  * extension[text]
    * valueString = "White"
* extension[ethnicity]
  * extension[ombCategory]
    * valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
  * extension[text]
    * valueString = "Not Hispanic or Latino"
* extension[birthsex]
  * valueCode = #F
* extension[birthPlace]
  * valueAddress
    * city = "Salt Lake City"
    * district = "Salt Lake"
    * state = "UT"
* extension[parentReportedAgeAtDelivery]
  * extension[reportedAge]
    * valueQuantity = 34 'a'
  * extension[motherOrFather]
    * valueCodeableConcept = $v3-RoleCode#MTH "mother"
* identifier
  * use = #usual
  * type = $v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "9932702"
// NOTE TODO: this was marked usual, but could be marked official?
* name[currentLegalName]
  * family = "Quinn"
  * given[0] = "Baby"
  * given[1] = "G"
* gender = #female
* multipleBirthInteger = 1

Instance: patient-child-vr-babyg-quinn-common
InstanceOf: PatientChildVitalRecords
Title: "Patient - Child example [Baby G Quinn]"
Description: "Example of Patient-child-vr profile (Baby G Quinn) with Reported Parent Age at Delivery and full date and time of birth"
Usage: #example
* insert babyquinncommon
* birthDate = "2019-02-12"
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
    * valueDateTime = "2019-02-12T13:00:00-07:00"

Instance: patient-child-vr-babyg-quinn-common-1
InstanceOf: PatientChildVitalRecords
Title: "Patient - Child example [Baby G Quinn]"
Description: "Example of Patient-child-vr profile (Baby G Quinn) with Reported Parent Age at Delivery with date of birth but no time of birth.  
Both the birthTime and partialDateTime extensions are omitted."
Usage: #example
* insert babyquinncommon
* birthDate = "2019-02-12"

Instance: patient-child-vr-babyg-quinn-common-12
InstanceOf: PatientChildVitalRecords
Title: "Patient - Child example [Baby G Quinn]"
Description: "Example of Patient-child-vr profile (Baby G Quinn) with Reported Parent Age at Delivery with partial date of birth - 2nd of some month in 2019.
Both the birthTime extension and the value for the birthDate field are omitted."
Usage: #example
* insert babyquinncommon
* birthDate 
  * extension[partialDateTime]
    * extension[day].valueUnsignedInt = 02
    * extension[month].valueUnsignedInt.extension[dataabsent].valueCode = #unknown
    * extension[year].valueUnsignedInt = 2019
    * extension[time].valueTime.extension[dataabsent].valueCode = #unknown
