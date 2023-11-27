
### Current Profiles

| Name | Previous IG |  Comments/Updates |
| ---------- | ----------- | --------------- |
| [ObservationAutopsyPerformedIndicatorVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Observation-autopsy-performed-indicator-vr.html) | Value field now a slice definition ("actual result") and "autopsy was performed?" is reported under valueCodeableConcept field |
| [ObservationCodedRaceAndEthnicityVitalRecords] | [VRCL - race](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-race-vr.html), [VRCL - tabulated](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-tabulated-ethnicity-vr.html) | Tabulated race was deprecated, with the new profile encapsulating information coded by NCHS to be sent back to jurisdictions |
| [ObservationEducationLevelVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Observation-parent-education-level-vr.html)  | Generalized profile now has subject set to [patient](http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Patient-vr.html), focus set to [mother](http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Patient-mother-vr.html) or [parent](http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-RelatedPerson-parent-vr.html), and profile now includes bypassEditFlag |
| [ObservationEmergingIssuesVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-emerging-issues.html) | Moved to VRCL to be used in BFDR and BFDR |
| [ObservationInputRaceAndEthnicityVitalRecords] | [VRCL - race](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-race-vr.html), [VRCL - tabulated](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-tabulated-ethnicity-vr.html) | Race profiles refactored, new profile represents information sent from jurisdictions to NCHS to be coded |
| [PatientChildVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Patient-child-vr.html) | Now inherits from [PatientVitalRecords] rather than [USCorePatient], added bypassedit flag to multiplebirth, birthTime, dataAbsentReason, partialDate no longer extensions  |
| [PatientMotherVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Patient-mother-vr.html) | New profile inherits from  [PatientVitalRecords] rather than [USCorePatient] |
| [PatientVitalRecords] | - | New addition, serves as a new abstract profile (parent to [PatientChildVitalRecords], [PatientDecedentFetus](http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Patient-decedent-fetus.html), [PatientMotherVitalRecords], and [Decedent](https://build.fhir.org/ig/HL7/vrdr/StructureDefinition-vrdr-decedent.html)) |
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
| [ValueSetBirthplaceCountryVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-birthplace-country-vs.html) | Meant to be used outside of just mortality use case  |
| [ValueSetBirthSexChildVitalRecords] | [USCoreBirthSex]  | - |
| [ValueSetBirthSexFetusVitalRecords] | -  | New addition |
| [ValueSetCodedRaceAndEthnicityPersonVitalRecords] | -  | New addition |
| [ValueSetEditBypass01234VitalRecords] | [VRDR](https://build.fhir.org/ig/HL7/vrdr/ValueSet-vrdr-edit-bypass-01234-vs.html) | Meant to be used outside of just mortality use case  | 
| [ValueSetEducationLevelVitalRecords] | [PHINVADS](https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7582) | < HS diploma codes now "Elementary School" and "secondary or high school education" |
| [ValueSetEducationLevelPersonVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-education-level-person-vr.html) | Now includes "Highest level of education [US Standard Certificate of Death]" |
| [ValueSetFatherRelationshipVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-father-relationship-vr.html)  | - |
| [ValueSetHispanicNoUnknownVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-hispanic-no-unknown-vs.html)  | Meant to be used outside of just mortality use case  |
| [ValueSetHispanicOriginVitalRecords] | [VRDR](https://build.fhir.org/ig/HL7/vrdr/ValueSet-vrdr-hispanic-origin-vs.html) | Meant to be used outside of just mortality use case  |
| [ValueSetJurisdictionVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-jurisdiction-vs.html)  | - |
| [ValueSetInputRaceAndEthnicityPersonVitalRecords] | - | New addition |
| [ValueSetMotherRelationshipVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-mother-relationship-vr.html)  | - |
| [ValueSetMothersDateOfBirthEditFlagsVitalRecords] | [PHINVADS](https://phinvads.cdc.gov/vads/ViewValueSet.action?id=3BD473EE-40DD-E811-816D-0017A477041A) | - |
| [ValueSetPluralityEditFlagsVitalRecords] | [PHINVADS](https://phinvads.cdc.gov/vads/ViewValueSet.action?id=3A484C53-FDFD-E611-A856-0017A477041A)  | - |
| [ValueSetRaceCodeVitalRecords] | replacing [PHINVADS](https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7373), based on [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-race-code-vs.html) VS  | - |
| [ValueSetRaceMissingValueReasonVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-race-missing-value-reason-vs.html)  | Meant to be used outside of just mortality use case  |
| [ValueSetRaceRecode40VitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-race-recode-40-vs.html) | Meant to be used outside of just mortality use case  |
| [ValueSetResidenceCountryVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-residence-country-vs.html)  | Meant to be used outside of just mortality use case  |
| [ValueSetStatesTerritoriesAndProvincesVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-states-territories-provinces-vs.html) | Meant to be used outside of just mortality use case  |
| [ValueSetUSStatesAndTerritoriesVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-usstates-territories-vs.html) | Meant to be used outside of just mortality use case  |
| [ValueSetUnitsOfAgeVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-units-of-age-vs.html) | - |
| [ValueSetYesNoNotApplicableVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-yes-no-not-applicable-vr.html) | - |
| [ValueSetYesNoUnknownVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-yes-no-unknown-vr.html)  | - |
| [ValueSetYesNoUnknownNotApplicableVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-yes-no-unknown-not-applicable-vr.html) | - |
{: .grid }

### Current Codesystems

| Name         | Previous IG  | Comments/Updates  |
| :----------: | -----------  | :---------------: |
| [CodeSystemCanadianProvincesVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-canada-provinces-vs.html) | Meant to be used outside of just mortality use case | 
| [CodeSystemComponentVitalRecords] | [VRCL][CodeSystemLocalComponentCodesVitalRecords]  | - |
| [CodeSystemCountryCodeVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-country-code-cs.html)  |  Meant to be used outside of just mortality use case  |
| [CodeSystemHispanicOriginVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-hispanic-origin-cs.html)  |  Meant to be used outside of just mortality use case  |
| [CodeSystemJurisdictionsVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-jurisdictions-cs.html)  |  Meant to be used outside of just mortality use case  |
| [CodeSystemMissingValueReasonVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-missing-value-reason-cs.html) |  Meant to be used outside of just mortality use case  |
| [CodeSystemRaceCodeVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-race-code-cs.html) |  Meant to be used outside of just mortality use case  |
| [CodeSystemRaceRecode40VitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-race-recode-40-cs.html)  |  Meant to be used outside of just mortality use case  |
| [CodeSystemEditFlagsVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-bypass-edit-flag-cs.html)  | Includes additional codes for plurality and date of birth value sets, meant to be used outside of just mortality use case  |
| [CodeSystemLocalObservationsCodesVitalRecords] | [VRDR](http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-observations-cs.html) | Includes additional codes for decedent, mother, and father use cases |
{: .grid }



### Removed Profiles

| Name         | Current IG      | Comments/Updates  |
| :----------: | -----------     | :---------------: |
| [ConditionEclampsiaHypertensionVitalRecords]| [BFDR][ConditionEclampsiaHypertension]  |  Only used for birth use case, omitted from VRCL | 
| [ConditionGestationalDiabetesVitalRecords] | [BFDR][ConditionGestationalDiabetes]    |  Only used for birth use case, omitted from VRCL |
| [ConditionGestationalHypertensionVitalRecords] | [BFDR][ConditionGestationalHypertension]   |  Only used for birth use case, omitted from VRCL |
| [ConditionPrepregnancyDiabetesVitalRecords] | [BFDR][ConditionPrepregnancyDiabetes]   |  Only used for birth use case, omitted from VRCL |
| [ConditionPrepregnancyHypertensionVitalRecords] | [BFDR][ConditionPrepregnancyHypertension]   |  Only used for birth use case, omitted from VRCL |
| [LocationDeathVitalRecords] | [VRDR][DeathLocation]   |  Only used for death use case, omitted from VRCL |
| [LocationInjuryVitalRecords] | [VRDR][InjuryLocation] |  Only used for death use case, omitted from VRCL | 
| [ObservationApgarScoreVitalRecords] | [BFDR][ObservationApgarScore]   |  Only used for birth use case, omitted from VRCL |
| [ObservationBirthWeightVitalRecords] | [BFDR][ObservationBirthWeight]   |  Only used for birth use case, omitted from VRCL |
| [ObservationCauseOfDeathPart1VitalRecords] | [VRDR][CauseOfDeathPart1] |  Only used for death use case, omitted from VRCL | 
| [ObservationContributingCauseOfDeathPart2VitalRecords] | [VRDR][CauseOfDeathPart2] |  Only used for death use case, omitted from VRCL | 
| [ObservationDeathDateVitalRecords] | [VRDR][DeathDate] |  Only used for death use case, omitted from VRCL | 
| [ObservationDecedentPregnancyVitalRecords] | [VRDR][DecedentPregnancyStatus] |  Only used for death use case, omitted from VRCL | 
| [ObservationGestationalAgeAtDeliveryVitalRecords] | [BFDR][ObservationGestationalAgeAtDelivery]   |  Only used for birth use case, omitted from VRCL |
| [ObservationInfantLivingVitalRecords] | [BFDR][ObservationInfantLiving]   |  Only used for birth use case, omitted from VRCL |
| [ObservationInjuryIncidentVitalRecords] | [VRDR][InjuryIncident] |  Only used for death use case, omitted from VRCL | 
| [ObservationLastMenstrualPeriodVitalRecords] | [BFDR][ObservationLastMenstrualPeriod]   |  Only used for birth use case, omitted from VRCL |
| [ObservationMannerOfDeathVitalRecords] | [VRDR][MannerOfDeath] |  Only used for death use case, omitted from VRCL | 
| [ObservationMotherDeliveryWeightVitalRecords] | [BFDR][ObservationMotherDeliveryWeight]   |  Only used for birth use case, omitted from VRCL |
| [ObservationMotherHeightVitalRecords] | [BFDR][ObservationMotherHeight]   |  Only used for birth use case, omitted from VRCL |
| [ObservationMotherPrepregnancyWeightVitalRecords] | [BFDR][ObservationMotherPrepregnancyWeight]   |  Only used for birth use case, omitted from VRCL |
| [ObservationNoneOfSpecifiedPregnancyRiskFactorsVitalRecords] | [BFDR][ObservationNoneOfSpecifiedPregnancyRiskFactors]   |  Only used for birth use case, omitted from VRCL |
| [ObservationNumberBirthsNowDeadVitalRecords] | [BFDR][ObservationNumberBirthsNowDead]   |  Only used for birth use case, omitted from VRCL |
| [ObservationNumberBirthsNowLivingVitalRecords] | [BFDR][ObservationNumberBirthsNowLiving]   |  Only used for birth use case, omitted from VRCL |
| [ObservationNumberFetalDeathsThisDeliveryVitalRecords] | [BFDR][ObservationNumberFetalDeathsThisDelivery]   |  Only used for birth use case, omitted from VRCL |
| [ObservationNumberLiveBirthsThisDeliveryVitalRecords] | [BFDR][ObservationNumberLiveBirthsThisDelivery]   |  Only used for birth use case, omitted from VRCL |
| [ObservationNumberOtherPregnancyOutcomesVitalRecords] | [BFDR][ObservationNumberOtherPregnancyOutcomes]   |  Only used for birth use case, omitted from VRCL |
| [ObservationNumberPrenatalVisitsVitalRecords] | [BFDR][ObservationNumberPrenatalVisits]   |  Only used for birth use case, omitted from VRCL |
| [ObservationNumberPreviousCesareansVitalRecords] | [BFDR][ObservationNumberPreviousCesareans]   |  Only used for birth use case, omitted from VRCL |
| [ObservationParentEducationLevelVitalRecords] | -  |  Removed (only relying on [ObservationEducationLevelVitalRecords]) |
| [ObservationPluralityVitalRecords] | -   |  Removed (plurality is now specified with alive/dead births) |
| [ObservationPreviousCesareanVitalRecords] | [BFDR][ObservationPreviousCesarean]   |  Only used for birth use case, omitted from VRCL |
| [ObservationPreviousPretermBirthVitalRecords] | [BFDR][ObservationPreviousPretermBirth]   |  Only used for birth use case, omitted from VRCL |
| [ObservationRaceVitalRecords] | -  |  Superseded by [input][ObservationInputRaceAndEthnicityVitalRecords] and [coded][ObservationCodedRaceAndEthnicityVitalRecords] race |
| [ObservationTabulatedEthnicityVitalRecords] | -  |  Use was deprecated, superseded by [input][ObservationInputRaceAndEthnicityVitalRecords] and [coded][ObservationCodedRaceAndEthnicityVitalRecords] race |
| [ParametersCodingStatusValuesVitalRecords] | [VRDR][CodingStatusValues]    |  Only used for death use case, omitted from VRCL |
| [PatientDecedentFetusVitalRecords] | [BFDR][PatientDecedentFetus]   |  Only used for birth use case, omitted from VRCL |
| [ProcedureArtificialInseminationVitalRecords] | [BFDR][ProcedureArtificialInsemination]   |  Only used for birth use case, omitted from VRCL |
| [ProcedureAssistedFertilizationVitalRecords] | [BFDR][ProcedureAssistedFertilization]   |  Only used for birth use case, omitted from VRCL |
| [ProcedureDeathCertificationVitalRecords] | [VRDR][DeathCertification] |  Only used for death use case, omitted from VRCL | 
| [ProcedureInfertilityTreatmentVitalRecords] | [BFDR][ProcedureInfertilityTreatment]   |  Only used for birth use case, omitted from VRCL |
| [RelatedPersonMotherGestationalVitalRecords] |  -  | Removed |
{: .grid }

### Removed Extensions

| Name         |  Current IG      | Comments/Updates  |
| [ExtensionDateDayVitalRecords] |  -  | No longer used in date/time extensions |
| [ExtensionDateTimeVitalRecords] |  -    | No longer used in date/time extensions |
| [ExtensionDateTimeVitalRecords] |  -    | No longer used in [ExtensionPartialDateTimeVitalRecords] |
| [ExtensionDateYearVitalRecords] |  -  | No longer used in date/time extensions |
{: .grid }


### Removed Valuesets

| Name         |  Current IG      | Comments/Updates  |
| :----------: |  -----------     | :---------------: |
| [ValueSetApgarTimingVitalRecords] |  [BFDR][ApgarTimingVS]    | Only relevant to birth use case |
| [ValueSetCertifierTypesVitalRecords] |   [VRDR][CertifierTypesVS]    | No codesystem, codes are directly used in a valueset, only relevant to mortality use case |
| [ValueSetContributoryTobaccoUseVitalRecords] | [VRDR][ContributoryTobaccoUseVS]     | Only relevant to mortality use case |
| [ValueSetDateEstablishmentApproachVitalRecords] | [VRDR][DateOfDeathDeterminationMethodsVS]   | Only relevant to mortality use case |
| [ValueSetDeathPregnancyStatusVitalRecords] |  [VRDR][DeathPregnancyStatusVS]    | Only relevant to mortality use case |
| [ValueSetIntentionalRejectVitalRecords] |  [VRDR][IntentionalRejectVS]   | Only relevant to mortality use case |
| [ValueSetMannerOfDeathVitalRecords] |  [VRDR][MannerOfDeathVS]    | Only relevant to mortality use case |
| [ValueSetPlaceOfDeathVitalRecords] |  [VRDR][PlaceOfDeathVS]   | Only relevant to mortality use case |
| [ValueSetSystemRejectVitalRecords] |  [VRDR][SystemRejectVS]   | Only relevant to mortality use case |
| [ValueSetTransaxConversionVitalRecords] |  [VRDR][TransaxConversionVS]   | Only relevant to mortality use case |
| [ValueSetTransportationIncidentRoleVitalRecords] |  [VRDR][TransportationIncidentRoleVS]     | Only relevant to mortality use case |
{: .grid }


### Removed Codesystems

| Name         |  Current IG      | Comments/Updates  |
| :----------: |  -----------     | :---------------: |
| [CodeSystemDeathPregnancyStatusVitalRecords]|  [VRDR][DeathPregnancyStatusCS]    | Only relevant to mortality use case |
| [CodeSystemDeathReportingCodesVitalRecords] |  [MDI][CodeSystemMDI]     | Only relevant to death investigation use case |
| [IntentionalRejectCS] |  [VRDR][IntentionalRejectCS]     | Only relevant to mortality use case |
| [CodeSystemLocalComponentCodesVitalRecords] |  [VRDR][ObservationsCS]    | Only relevant to mortality use case |
| [CodeSystemSystemRejectVitalRecords] |  [VRDR][SystemRejectCS]    | Only relevant to mortality use case |
| [CodeSystemTransaxConversionVitalRecords] |  [VRDR][TransaxConversionCS]   | Only relevant to mortality use case |
{: .grid }


{% include markdown-link-references.md %}