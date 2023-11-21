
### Current Profiles

| Name | Previous IG |  Current IG | Comments/Updates |
| ---------- | ----------- |  ----------- | --------------- |
| [PatientVitalRecords] | - |  [VRCL][PatientVitalRecords] | Serves as an abstract profile (parent to [PatientChildVitalRecords], [PatientDecedentFetusVitalRecords], [PatientMotherVitalRecords], and [Decedent]) |
| [PatientChildVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Patient-child-vr.html) | [VRCL][PatientChildVitalRecords] | Now inherits from [PatientVitalRecords] rather than [USCorePatientProfile], removed slices for identifier, added bypassedit flag to multiplebirth, birthTime, dataAbsentReason, partialDate no longer extensions  |
{: .grid }

### Current Extensions

| Name         | Previous IG  |  Current IG      | Comments/Updates  |
| :----------: | -----------  |  -----------     | :---------------: |
| [ExtensionDatePartAbsentReasonVitalRecords]| - |  [VRCL][ExtensionDatePartAbsentReasonVitalRecords]    | New addition |
| [ExtensionPartialDateTimeVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-partial-date-time-vr.html) |  [VRCL][ExtensionPartialDateTimeVitalRecords]    | - |
| [ExtensionRelatedpersonBirthplaceVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-relatedperson-birthplace-vr.html) |  [VRCL][ExtensionRelatedpersonBirthplaceVitalRecords]    | - |
| [ExtensionRelatedPersonDeceasedVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-relatedperson-deceased-vr.html)  |  [VRCL][ExtensionRelatedPersonDeceasedVitalRecords]    | - |
| [ExtensionWithinCityLimitsIndicatorVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Extension-within-city-limits-indicator-vr.html)  |  [VRCL](http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Extension-within-city-limits-indicator-vr.html)    | changed to reference VRCL, rather than phinvads valueset |
| [ExtensionBypassEditFlagVitalRecords] | -  | [VRCL][ExtensionBypassEditFlagVitalRecords] | New addition |
| [ExtensionCityCodeVitalRecords] | -  |  [VRCL][ExtensionCityCodeVitalRecords]    | New addition |
| [ExtensionDistrictCodeVitalRecords] | -  |  [VRCL][ExtensionDistrictCodeVitalRecords]    | New addition |
| [ExtensionPartialDateVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-partial-date-vr.html) |  [VRCL][ExtensionPartialDateVitalRecords]    | - |
| [ExtensionPostDirectionalVitalRecords] | - |  [VRCL][ExtensionPostDirectionalVitalRecords]     | New addition |
| [ExtensionPreDirectionalVitalRecords] | - |  [VRCL][ExtensionPreDirectionalVitalRecords]     | New addition |
| [ExtensionReportedParentAgeAtDeliveryVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-reported-parent-age-at-delivery-vr.html)  |  [VRCL][ExtensionReportedParentAgeAtDeliveryVitalRecords]   | - |
| [ExtensionStreetDesignatorVitalRecords] | -  |  [VRCL][ExtensionStreetDesignatorVitalRecords]    | New addition |
| [ExtensionStreetNameVitalRecords] | -  |  [VRCL][ExtensionStreetNameVitalRecords]    | New addition |
| [ExtensionStreetNumberVitalRecords] | -  |  [VRCL][ExtensionStreetNumberVitalRecords]    | New addition |
| [ExtensionUnitOrAptNumberVitalRecords] | -  |  [VRCL][ExtensionUnitOrAptNumberVitalRecords]    | New addition |
{: .grid }

### Current Valuesets

| Name         | Previous IG  |  Current IG      | Comments/Updates  |
| :----------: | -----------  |  -----------     | :---------------: |
| [ValueSetHispanicOriginVitalRecords] | [VRDR](https://build.fhir.org/ig/HL7/vrdr/ValueSet-vrdr-hispanic-origin-vs.html) | [VRCL](http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-hispanic-origin-vr.html) | renamed to [ValueSetHispanicOriginVitalRecords] | 
{: .grid }

### Removed Profiles

| Name         | Previous IG  |  Current IG      | Comments/Updates  |
| :----------: | -----------  |  -----------     | :---------------: |
| [ConditionEclampsiaHypertension] | [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Condition-eclampsia-hypertension-vr.html) | [BFDR](placeholder.html) | renamed to [ConditionEclampsiaHypertension] | 
| [LocationInjuryVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Location-injury-vr.html) | [VRDR](placeholder.html) | only used for death use case, so omitted from VRCL | 
{: .grid }

### Removed Extensions

| Name         | Previous IG  |  Current IG      | Comments/Updates  |
| :----------: | -----------  |  -----------     | :---------------: |
{: .grid }

### Removed Valuesets

| Name         | Previous IG  |  Current IG      | Comments/Updates  |
| :----------: | -----------  |  -----------     | :---------------: |
| [ValueSetApgarTimingVitalRecords](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Observation-apgar-score-vr.html) |  [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Observation-apgar-score-vr.html) |  [BFDR](placeholder.html)    | Moved to Birth and Fetal Death Reporting IG |
{: .grid }


{% include markdown-link-references.md %}