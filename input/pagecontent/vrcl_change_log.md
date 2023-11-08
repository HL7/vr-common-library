### STU 2.0 January 2024
| Jira Issue | Description of Change | Changes Made |
| -------- | -------- | -------- |
|  | Restrict birth sex for newborn to M,F,U | Added [ValueSetBirthSexVitalRecords], and referenced from [PatientChildVitalRecords] |


### STU 1.1 Update, July 2023

| Jira Issue | Description of Change | Changes Made |
| -------- | -------- | -------- |
| [FHIR-40844](https://jira.hl7.org/browse/FHIR-40844) | Add change log | Add change log (this page) |
| [FHIR-40845](https://jira.hl7.org/browse/FHIR-40845) | Add death-related profiles shared by VRDR & MDI | See Vital Records Common Resources Added to this Library for STU 1.1, July 2023 below |
| [FHIR-40846](https://jira.hl7.org/browse/FHIR-40846) | Update to latest version of US Core (5.0.1) | All profiles that are based on US Core templates are affected. |
| [FHIR-40848](https://jira.hl7.org/browse/FHIR-40848) | The Observation - Pregnancy Risk Factor has a value set containing a mix of Conditions, Observations, and Procedures have been used in the IG. This is not how the data is represented in the real world. Split the Observation into separate profiles using the appropriate resource. | Removed profile:<br/>Observation - Pregnancy Risk Factor<br/>Added:<br/>Condition - Prepregnancy Diabetes Vital Records<br/>Condition - Gestational Diabetes Vital Records<br/>Condition - Prepregnancy Hypertension Vital Records<br/>Condition - Gestational Hypertension Vital Records<br/>Condition - Eclampsia Hypertension Vital Records<br/>Observation - Previous Preterm Birth Vital Records<br/>Procedure - Infertility Treatment Vital Records<br/>Procedure - Artificial Insemination Vital Records<br/>Procedure - Assissted Fertilization Vital Records<br/>Observation - Previous Cesarean Vital Records<br/>Observation - None Of Specified Pregnancy Risk Factors Vital Records |
| [FHIR-40928](https://jira.hl7.org/browse/FHIR-40928) | Revisit profile focus/subject mappings (mother and child/fetus) and update where needed.<br/>Ensure all Observation subject/focus mappings are current and update where needed. | Revisted all profiles and updated subject/focus mappings where needed. (See also [FHIR-41593](https://jira.hl7.org/browse/FHIR-41593)) |
| [FHIR-41324](https://jira.hl7.org/browse/FHIR-41324) | Update narrative pages for project info, correct external links etc. | Updated as suggested |
| [FHIR-41363](https://jira.hl7.org/browse/FHIR-41363) | Patient Plurality: add patient-multipleBirthTotal extension / Pregnancy Plurality: update Plurality Observation: Plurality is both a characteristic of a pregnancy and a characteristic of a patient (e.g., single, twin, triplet etc. and includes the number of fetuses delivered live or dead at any time in the pregnancy)<br/><br/>The VRCPL has a Plurality Observation profile (http://build.fhir.org/ig/HL7/vr-common-library/branches/master/StructureDefinition-Observation-plurality-vr.html) that has the mother, child, and fetus as subjects.<br/><br/>FHIR Patient only has the ability to record Patient.multipleBirth[x]. This piece of information by itself does not give you enough information about the set – plurality also needs to be captured.<br/><br/>On consultation with the Patient Administration WG at the WGM about the recommended way to represent Plurality for a patient, they pointed us to their new patient-multipleBirthTotal extension (http://hl7.org/fhir/extensions/1.0.0/StructureDefinition-patient-multipleBirthTotal.html) (added in FHIR R5):<br/><br/>    this extension is to be used on the Patient.multipleBirth[x] element<br/>    it is now possible to use R5 extensions in R4 IGs<br/><br/>IG update actions:<br/><br/>    For Plurality as a characteristic of a Patient who is part of a multiple delivery: add the patient-multipleBirthTotal extension to the VRCPL Patient profiles (on Patient.multipleBirth[x])<br/><br/>For Plurality as a characteristic of a pregnancy: update the current Plurality Observation profile (http://build.fhir.org/ig/HL7/vr-common-library/branches/master/StructureDefinition-Observation-plurality-vr.html) to only have the mother as the subject (remove child and fetus subject) | Updated as suggested |
| [FHIR-41388](https://jira.hl7.org/browse/FHIR-41388) | Add “reported age” resource for father/mother as an optional additional item | Added Reported Age as an extension on Patient and RelatedPerson |
| [FHIR-41389](https://jira.hl7.org/browse/FHIR-41389) | Add guidance on usage of ODH profiles | Added guidance on usage of ODH profiles and mapped to the IJE fields |
| [FHIR-41531](https://jira.hl7.org/browse/FHIR-41531) | Observation - Parent Education: Clarify the use of the subject and focus fields. | Updated subject/focus mappings to subject = baby and focus = mother/father as part of [FHIR-40928](https://jira.hl7.org/browse/FHIR-40928) |
| [FHIR-41531](https://jira.hl7.org/browse/FHIR-41531) | Observation - Apgar Score: Should the Observation - Apgar Score profile profile be based on http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-observation-survey.html? | Updated Observation - Apgar Score to be based on http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-observation-survey.html |
| [FHIR-41648](https://jira.hl7.org/browse/FHIR-41648) | Drop Date Part Absent Reason extension: In VRDR there's an extension that allows conveying each of the different parts of a date as separate elements with an ability to provide an absent reason for each. This is more scalable than the approach here as it allows conveying month and day with no year (a common use-case). There shouldn't be two different mechanisms to solve this problem. | Deleted Date Part Absent Reason extension and associated value set. Referenced to Extension - Partial Date - Vital Records. Updated example. |
{: .grid }

#### Vital Records Common Resources Added to this Library for STU 1.1, July 2023

Resources were added to this Library to support future versions of the [Vital Records Death Reporting (VRDR) FHIR IG](http://hl7.org/fhir/us/vrdr/) and the [Medicolegal Death Investigation (MDI) FHIR IG](http://hl7.org/fhir/us/mdi/).

##### Profiles

| VRDR STU 2 | MDI STU 1 | VRCPL 1.1 |
| -------- | -------- | -------- |
| Autopsy Performed Indicator (Observation)     | Observation - Autopsy Performed Indicator     | Observation - Autopsy Performed Indicator Vital Records     |
| Date of death (Observation)     | Observation - Death Date     | Observation - Death Date Vital Records     |
| Decedent Pregnancy Status (Observation)     | Observation - Decedent Pregnancy     | Observation - Decedent Pregnancy Vital Records     |
| Injury Incident (Observation)     | Observation - How Death Injury Occurred     | Observation - Injury Incident Vital Records     |
| Tobacco Use Contributed To Death (Observation)     | Observation - Tobacco Use Contributed to Death     | Observation - Tobacco Use Contributed to Death Vital Records     |
| Manner of Death (Observation)     | Observation - Manner of Death     | Observation - Manner of Death Vital Records     |
| Cause of death Part 1 (Observation)     | Observation - Cause of Death Part 1     | Observation - Cause of Death Part 1 Vital Records     |
| Cause of death Part 2 (Observation)     | Observation - Contributing Cause of Death Part 2     | Observation - Contributing Cause of Death Part 2 Vital Records     |
| Death Location (USCoreLocation)     | Location - Death     | Location - Death Vital Records     |
| Injury Location (USCoreLocation)     | Location - Injury     | Location - Injury Vital Records     |
| Death Certification Procedure     | Procedure - Death Certification     | Procedure - Death Certification Vital Records     |
{: .grid }

##### Extensions

| VRDR STU 2 | MDI STU 1 | VRCPL 1.1 |
| -------- | -------- | -------- |
| Date Day     | Extension - Date Day     | Extension - Date Day Vital Records     |
| Date Month     | Extension - Date Month     | Extension - Date Month Vital Records     |
| Date Time     | Extension - Date Time     | Extension - Date Time Vital Records     |
| Date Year     | Extension - Date Year     | Extension - Date Year Vital Records     |
| Partial Date Time     | Extension - Partial DateTime     | Extension - Partial DateTime Vital Records     |
{: .grid }

##### Code Systems

| VRDR STU 2 | MDI STU 1 | VRCPL 1.1 |
| -------- | -------- | -------- |
| Local Component Codes     | CodeSystem - Local Component Codes     | CodeSystem - Local Components Codes Vital Records     |
| Pregnancy Status Codes     | CodeSystem - Death Pregnancy Status     | CodeSystem - Death Pregnancy Status Vital Records     |
{: .grid }

##### Value Sets

| VRDR STU 2 | MDI STU 1 | VRCPL 1.1 |
| -------- | -------- | -------- |
| Local Component Codes     | CodeSystem - Local Component Codes     | CodeSystem - Local Components Codes Vital Records     |
| Tobacco Use Contributed To Death     | ValueSet - Contributory Tobacco Use     | ValueSet - Contributory Tobacco Use Vital Records     |
| Certifier Types VS     | ValueSet - Certifier Types     | ValueSet - Certifier Types Vital Records     |
| Date of Death Determination Methods Value Set     | ValueSet - Date Establishment Approach     | ValueSet - Date Establishment Approach Vital Records     |
| Pregnancy Status     | ValueSet - Death Pregnancy Status     | ValueSet - Death Pregnancy Status Vital Records     |
| Manner of Death VS     | ValueSet - Manner of Death     | ValueSet - Manner of Death Vital Records     |
| Place of Death VS – PHVS_PlaceOfDeath_NCHS     | ValueSet - Place of Death     | ValueSet - Place of Death Vital Records     |
| Transportation Incident Role     | ValueSet - Transportation Incident Role     | ValueSet - Transportation Incident Role Vital Records     |
| Units of Age     | ValueSet - Units of Age     | ValueSet - Units of Age Vital Records     |
| Yes No Unknown     | ValueSet - Yes No Unknown     | ValueSet - Yes No Unknown Vital Records     |
| Yes No Unknown NotApplicable     | ValueSet - Yes No Unknown NotApplicable     | ValueSet - Yes No Unknown NotApplicable Vital Records     |
{: .grid }