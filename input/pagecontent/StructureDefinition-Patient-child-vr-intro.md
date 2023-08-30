This profile adds further constraints to the [US Core Patient]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-patient.html) such as:

 * the [patient-birthPlace](http://hl7.org/fhir/StructureDefinition/patient-birthPlace) extension
 * the [patient-birthTime](http://hl7.org/fhir/StructureDefinition/patient-birthTime) extension
 * the [patient-multipleBirthTotal](http://hl7.org/fhir/StructureDefinition/patient-multipleBirthTotal) extension to record plurality
 * the base FHIR [data-absent-reason](http://hl7.org/fhir/StructureDefinition/data-absent-reason) extension to both name.given and name.family (a name may not yet have been chosen for the baby and US Core Patient requires that Patient.name.given or Patient.name.family or both SHALL be present)
    * use not-applicable if the name hasn't been chosen

### Form Mapping
This profile is mapped to:
 * Item **1. Child’s Name** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **2. Child's Time of Birth** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **3. Child's Sex** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **4. Child's Date Of Birth** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **6. City, Town, Or Location Of Birth** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **7. County Of Birth** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **48. Newborn Medical Record Number** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **52. Plurality** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **53. If Not Single Birth - Born First, Second, Third, etc. (Specify)** in the [2003 Revision of the U.S. Standard Certificate of Live Birth](https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
 * Item **3. City, Town or Location of birth** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **4. County of birth** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **17. Date of birth** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **18. Time of birth** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **22. Infant’s medical record number** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **31. Sex:** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **33. Plurality** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **34. If not single birth, order delivered in the pregnancy** in the [2016 US Standard Facility Worksheet for the Live Birth Certificate](https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016-508.pdf)
 * Item **Child’s name/medical record #** in the [2016 US Standard Attachment to the Facility Worksheet for the Live Birth Certificate for Multiple Births](https://www.cdc.gov/nchs/data/dvs/multiple-births-worksheet-2016.pdf)
 * Item **17. Date of birth** in the [2016 US Standard Attachment to the Facility Worksheet for the Live Birth Certificate for Multiple Births](https://www.cdc.gov/nchs/data/dvs/multiple-births-worksheet-2016.pdf)
 * Item **18. Time of birth** in the [2016 US Standard Attachment to the Facility Worksheet for the Live Birth Certificate for Multiple Births](https://www.cdc.gov/nchs/data/dvs/multiple-births-worksheet-2016.pdf)
 * Item **34. Order delivered in the pregnancy** in the [2016 US Standard Attachment to the Facility Worksheet for the Live Birth Certificate for Multiple Births](https://www.cdc.gov/nchs/data/dvs/multiple-births-worksheet-2016.pdf)
 * Item **31. Sex** in the [2016 US Standard Attachment to the Facility Worksheet for the Live Birth Certificate for Multiple Births](https://www.cdc.gov/nchs/data/dvs/multiple-births-worksheet-2016.pdf)
 * Item **2. What will be your baby’s legal name?** in the [2016 US Standard Mothers Worksheet for Child’s Birth Certificate](https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf)

### IJE Mapping

| **Use Case** | **IJE Field#** | **Description** | **IJE Name** | **Field** |
| ------------ | -------------- | --------------- | ------------ | --------- |
| Natality | 251 | County of Birth (Literal) | BIRTH_CO | extension: patient-birthPlace |
| Natality | 252 | City/town/place of birth (Literal) | BRTHCITY | extension: patient-birthPlace |
| Natality | 2 | State, U.S. Territory or Canadian Province of Birth (Infant) - code | BSTATE | extension: patient-birthPlace |
| Natality | 10 | County of Birth | CNTYO | extension: patient-birthPlace |
| Natality | 9 | Date of Birth (Infant)--Day | IDOB_DY | birthDate |
| Natality | 8 | Date of Birth (Infant)--Month | IDOB_MO | birthDate |
| Natality | 1 | Date of Birth (Infant)--Year | IDOB_YR | birthDate |
| Natality | 332 | Infant's Medical Record Number | INF_MED_REC_NUM | identifier |
| Natality | 7 | Sex | ISEX | extension:us-core-birthsex |
| Natality | 247 | Child's First Name | KIDFNAME | name.given |
| Natality | 249 | Child's Last Name | KIDLNAME | name.family |
| Natality | 248 | Child's Middle Name | KIDMNAME | name.given |
| Natality | 250 | Child's Surname Suffix (moved from end) | KIDSUFFX | name.suffix |
| Natality | 207 | Plurality | PLUR | extension[patient-multipleBirthTotal].valuePositiveInt |
| Natality | 208 | Set Order | SORD | multipleBirth |
| Natality | 6 | Time of Birth | TB | birthDate.extension:patient-birthTime |
{: .grid }
