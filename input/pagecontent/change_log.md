While IG is in development see the [Change Log GoogleSheet](https://docs.google.com/spreadsheets/d/1d9ZIi43R4MS4qXf14u19P3SwZ1ThkPaU-K-Hoo139Ys/edit?usp=sharing) for a list of the latest changes (this page will be moved inside the IG prior to publication).

### Resources Added to this Library for STU 1.1, July 2023
#### New Narrative Guidance
Two new narrative pages were added: The Specification and Change Log.

#### Resources for Death Reporting
Resources were added to this Library to support future versions of the [Vital Records Death Reporting (VRDR) FHIR IG](http://hl7.org/fhir/us/vrdr/) and the [Medicolegal Death Investigation (MDI) FHIR IG](http://hl7.org/fhir/us/mdi/).

**Profiles Used by Both VRDR and MDI IGs**

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

### Extensions Added to the Library
**Extensions used by both VRDR and MDI IGs**

| VRDR STU 2 | MDI STU 1 | VRCPL 1.1 |
| -------- | -------- | -------- |
| Date Day     | Extension - Date Day     | Extension - Date Day Vital Records     |
| Date Month     | Extension - Date Month     | Extension - Date Month Vital Records     |
| Date Time     | Extension - Date Time     | Extension - Date Time Vital Records     |
| Date Year     | Extension - Date Year     | Extension - Date Year Vital Records     |
| Partial Date Time     | Extension - Partial DateTime     | Extension - Partial DateTime Vital Records     |

### Code Systems Added to the Library
**Code Systems used by both VRDR and MDI IGs**

| VRDR STU 2 | MDI STU 1 | VRCPL 1.1 |
| -------- | -------- | -------- |
| Local Component Codes     | CodeSystem - Local Component Codes     | CodeSystem - Local Components Codes Vital Records     |
| Pregnancy Status Codes     | CodeSystem - Death Pregnancy Status     | CodeSystem - Death Pregnancy Status Vital Records     |

### Value Sets Added to the Library
**Value Sets used by both VRDR and MDI IGs**

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