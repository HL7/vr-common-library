
### Current Profiles

| Name | Previous IG |  Comments/Updates |
| ---------- | ----------- | --------------- |
| [ObservationAutopsyPerformedIndicatorVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Observation-autopsy-performed-indicator-vr.html) | - |
| [ObservationCodedRaceAndEthnicityVitalRecords] | [VRCL - race](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-race-vr.html), [VRCL - tabulated](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-tabulated-ethnicity-vr.html) | Tabulated race was deprecated, with the new profile encapsulating information coded by NCHS to be sent back to jurisdictions |
| [ObservationEducationLevelVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Observation-parent-education-level-vr.html)  | Generalized profile now has subject set to [patient](http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Patient-vr.html), focus set to [mother](http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Patient-mother-vr.html) or [parent](http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-RelatedPerson-parent-vr.html), and profile now includes bypassEditFlag |
| [ObservationEmergingIssuesVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-emerging-issues.html) | Moved to VRCL to be used in BFDR and BFDR |
| [ObservationInputRaceAndEthnicityVitalRecords] | [VRCL - race](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-race-vr.html), [VRCL - tabulated](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-tabulated-ethnicity-vr.html) | Race profiles refactored, new profile represents information sent from jurisdictions to NCHS to be coded |
| [PatientChildVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Patient-child-vr.html) | Now inherits from [PatientVitalRecords] rather than [USCorePatient], added bypassedit flag to multiplebirth, birthTime, dataAbsentReason, partialDate no longer extensions  |
| [PatientMotherVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Patient-mother-vr.html) | New profile inherits from  [PatientVitalRecords] rather than [USCorePatient] |
| [PatientVitalRecords] | new addition | Serves as a new abstract profile (parent to [PatientChildVitalRecords], [PatientDecedentFetus](http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Patient-decedent-fetus.html), [PatientMotherVitalRecords], and [Decedent](https://build.fhir.org/ig/HL7/vrdr/StructureDefinition-vrdr-decedent.html)) |
| [PractitionerVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Practitioner-vr.html) | Now includes slice for qualification, additional address slice items, and name field constrained to exactly one|
| [RelatedPersonFatherNaturalVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-RelatedPerson-father-natural-vr.html) | - |
| [RelatedPersonFatherVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-RelatedPerson-father-vr.html) | Now includes birthDate bypassEditFlag |
| [RelatedPersonMotherVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-RelatedPerson-mother-vr.html) | Now includes birthDate bypassEditFlag, communication field no longer MS   |
| [RelatedPersonParentVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-RelatedPerson-parent-vr.html) | Now includes birthDate bypassEditFlag, subject generalized to [PatientVitalRecords] |
{: .grid }

### Current Extensions

| Name         | Previous IG  |  Comments/Updates  |
| :----------: | -----------  |  :---------------: |
| [ExtensionDatePartAbsentReasonVitalRecords]| -   | New addition |
| [ExtensionPartialDateTimeVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-partial-date-time-vr.html)    | - |
| [ExtensionRelatedpersonBirthplaceVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-relatedperson-birthplace-vr.html)   | - |
| [ExtensionRelatedPersonDeceasedVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-relatedperson-deceased-vr.html)   | - |
| [ExtensionWithinCityLimitsIndicatorVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-within-city-limits-indicator-vr.html)   | changed to reference VRCL, rather than phinvads valueset |
| [ExtensionBypassEditFlagVitalRecords] | - | New addition |
| [ExtensionCityCodeVitalRecords] | - | New addition |
| [ExtensionDistrictCodeVitalRecords] | -  | New addition |
| [ExtensionPartialDateVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-partial-date-vr.html) | - |
| [ExtensionPostDirectionalVitalRecords] | - | New addition |
| [ExtensionPreDirectionalVitalRecords] | - |  New addition |
| [ExtensionReportedParentAgeAtDeliveryVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-reported-parent-age-at-delivery-vr.html)  | - |
| [ExtensionStreetDesignatorVitalRecords] | -    | New addition |
| [ExtensionStreetNameVitalRecords] | -  | New addition |
| [ExtensionStreetNumberVitalRecords] | -  | New addition |
| [ExtensionUnitOrAptNumberVitalRecords] | - | New addition |
{: .grid }

### Current Valuesets

| Name         | Previous IG  | Comments/Updates  |
| :----------: | -----------  | :---------------: |
| [ValueSetBirthAttendantTitlesVitalRecords] | [PHINVADS](https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7111) | - |
| [ValueSetBirthplaceCountryVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-birthplace-country-vs.html) | - |
| [ValueSetBirthSexChildVitalRecords] | [USCoreBirthSex]  | - |
| [ValueSetBirthSexFetusVitalRecords] | New addition  | - |
| [ValueSetCodedRaceAndEthnicityPersonVitalRecords] | New addition  | - |
| [ValueSetEditBypass01234VitalRecords] | [VRDR](https://build.fhir.org/ig/HL7/vrdr/ValueSet-vrdr-edit-bypass-01234-vs.html) | - | 
| [ValueSetEducationLevelVitalRecords] | [PHINVADS](https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7582) | < HS diploma codes now "Elementary School" and "secondary or high school education" |
| [ValueSetEducationLevelPersonVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-education-level-person-vr.html) | Now includes "Highest level of education [US Standard Certificate of Death]" |
| [ValueSetFatherRelationshipVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-father-relationship-vr.html)  | - |
| [ValueSetHispanicNoUnknownVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-hispanic-no-unknown-vs.html)  | - |
| [ValueSetHispanicOriginVitalRecords] | [VRDR](https://build.fhir.org/ig/HL7/vrdr/ValueSet-vrdr-hispanic-origin-vs.html) | renamed to [ValueSetHispanicOriginVitalRecords] |
| [ValueSetJurisdictionVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-jurisdiction-vs.html)  | - |
| [ValueSetInputRaceAndEthnicityPersonVitalRecords] | New addition | - |
| [ValueSetMotherRelationshipVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-mother-relationship-vr.html)  | - |
| [ValueSetMothersDateOfBirthEditFlagsVitalRecords] | [PHINVADS](https://phinvads.cdc.gov/vads/ViewValueSet.action?id=3BD473EE-40DD-E811-816D-0017A477041A) | - |
| [ValueSetPluralityEditFlagsVitalRecords] | [PHINVADS](https://phinvads.cdc.gov/vads/ViewValueSet.action?id=3A484C53-FDFD-E611-A856-0017A477041A)  | - |
| [ValueSetRaceCodeVitalRecords] | replacing [PHINVADS](https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7373), based on [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-race-code-vs.html) VS  | - |
| [ValueSetRaceMissingValueReasonVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-race-missing-value-reason-vs.html)  | - |
| [ValueSetRaceRecode40VitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-race-recode-40-vs.html) | - |
| [ValueSetResidenceCountryVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-residence-country-vs.html)  | - |
| [ValueSetStatesTerritoriesAndProvincesVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-states-territories-provinces-vs.html) | - |
| [ValueSetUSStatesAndTerritoriesVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-usstates-territories-vs.html) | - |
| [ValueSetUnitsOfAgeVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-units-of-age-vs.html) | - |
| [ValueSetYesNoNotApplicableVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-yes-no-not-applicable-vr.html) | - |
| [ValueSetYesNoUnknownVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-yes-no-unknown-vr.html)  | - |
| [ValueSetYesNoUnknownNotApplicableVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-yes-no-unknown-not-applicable-vr.html) | - |
{: .grid }

### Current Codesystems

| Name         | Previous IG  | Comments/Updates  |
| :----------: | -----------  | :---------------: |
| [CodeSystemCanadianProvincesVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-canada-provinces-vs.html) | - | 
| [CodeSystemComponentVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/CodeSystem-CodeSystem-local-component-codes-vr.html)  | - |
| [CodeSystemCountryCodeVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-country-code-cs.html)  | - |
| [CodeSystemHispanicOriginVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-hispanic-origin-cs.html)  | - |
| [CodeSystemJurisdictionsVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-jurisdictions-cs.html)  | - |
| [CodeSystemMissingValueReasonVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-missing-value-reason-cs.html) | - |
| [CodeSystemRaceCodeVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-race-code-cs.html) | - |
| [CodeSystemRaceRecode40VitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-race-recode-40-cs.html)  | - |
| [CodeSystemEditFlagsVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-bypass-edit-flag-cs.html)  | Includes additional codes for plurality and date of birth value sets |
| [CodeSystemLocalObservationsCodesVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-observations-cs.html) | Includes additional codes for decedent, mother, and father use cases |
{: .grid }

### Removed Profiles

| Name         | Current IG      | Comments/Updates  |
| :----------: | -----------     | :---------------: |
| [ConditionEclampsiaHypertension] | [BFDR](placeholder.html) | renamed to [ConditionEclampsiaHypertension] | 
| [LocationInjuryVitalRecords] | [VRDR](placeholder.html) | only used for death use case, so omitted from VRCL | 
| [RelatedPersonMotherGestationalVitalRecords] |  -  | Removed |
{: .grid }

### Removed Extensions

| Name         |  Current IG      | Comments/Updates  |
| :----------: |  -----------     | :---------------: |
{: .grid }

### Removed Valuesets

| Name         |  Current IG      | Comments/Updates  |
| :----------: |  -----------     | :---------------: |
| [ValueSetApgarTimingVitalRecords](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Observation-apgar-score-vr.html) |  [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Observation-apgar-score-vr.html) |  [BFDR](placeholder.html)    | Moved to Birth and Fetal Death Reporting IG |
{: .grid }


{% include markdown-link-references.md %}