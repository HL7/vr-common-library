
{% include transitions_documentation.md %}
### Current Profiles

| Name | Previous Version/Location |  Comments/Updates |
| :----------: | ----------- | :---------------: |
| [ObservationAutopsyPerformedIndicatorVitalRecords] | [VRCL][ObservationAutopsyPerformedIndicatorVitalRecordsOld] | Value field now a slice definition ("actual result") and "autopsy was performed?" is reported under valueCodeableConcept field |
| [ObservationCodedRaceAndEthnicityVitalRecords] | [VRDR][CodedRaceAndEthnicityOld] | Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases) |
| [ObservationEducationLevelVitalRecords] | [VRCL][ObservationParentEducationLevelVitalRecordsOld]  | Generalized profile now has subject set to [patient](http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Patient-vr.html), focus set to [mother](http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Patient-mother-vr.html) or [parent](http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-RelatedPerson-parent-vr.html), and profile now includes bypassEditFlag |
[EmergingIssuesOld] | Moved to VRCL to be used in BFDR (fetal birth/death) and VRDR (mortality) use cases |
| [ObservationInputRaceAndEthnicityVitalRecords] | [VRDR][InputRaceAndEthnicityOld] | Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases) |
| [ObservationUsualWorkVitalRecords] | [VRDR][UsualWorkOld] | Incorporated standard vital records approach to industry and occupation to support all vital records use cases) |
| [PatientChildVitalRecords] | [VRCL][PatientChildVitalRecordsOld] | Now inherits from [PatientVitalRecords] rather than [USCorePatient], added bypassedit flag to multiplebirth, birthTime, dataAbsentReason, partialDate no longer extensions  |
| [PatientMotherVitalRecords] | [VRCL][PatientMotherVitalRecordsOld] | New profile inherits from  [PatientVitalRecords] rather than [USCorePatient] |
| [PatientVitalRecords] | New | New addition, serves as a new abstract profile (parent to [PatientChildVitalRecords], [PatientDecedentFetus][PatientDecedentFetusOld], [PatientMotherVitalRecords], and [Decedent][DecedentOld]) |
| [PractitionerVitalRecords] | [VRCL][PractitionerVitalRecordsOld] | Now includes slice for qualification, additional address slice items, and name field constrained to exactly one|
| [RelatedPersonFatherNaturalVitalRecords] | [VRCL][RelatedPersonFatherNaturalVitalRecordsOld] | - |
| [RelatedPersonFatherVitalRecords] | [VRCL][RelatedPersonFatherVitalRecordsOld] | Now includes birthDate bypassEditFlag |
| [RelatedPersonMotherVitalRecords] | [VRCL][RelatedPersonMotherVitalRecordsOld] | Now includes birthDate bypassEditFlag, communication field no longer MS   |
| [RelatedPersonParentVitalRecords] | [VRCL][RelatedPersonParentVitalRecordsOld] | Now includes birthDate bypassEditFlag, subject generalized to [PatientVitalRecords] |
{: .grid }

### Current Extensions

| Name         | Previous Version/Location  |  Comments/Updates  |
| :----------: | -----------  |  :---------------: |
| [ExtensionDatePartAbsentReasonVitalRecords]| New | New addition |
| [ExtensionPartialDateTimeVitalRecords] | [VRCL][ExtensionPartialDateTimeVitalRecordsOld]   | - |
| [ExtensionRelatedpersonBirthplaceVitalRecords] | [VRCL][ExtensionRelatedpersonBirthplaceVitalRecordsOld]   | - |
| [ExtensionRelatedPersonDeceasedVitalRecords] | [VRCL][ExtensionRelatedPersonDeceasedVitalRecordsOld]   | - |
| [ExtensionWithinCityLimitsIndicatorVitalRecords] | [VRCL][ExtensionWithinCityLimitsIndicatorVitalRecordsOld]   | changed to reference VRCL, rather than phinvads valueset |
| [ExtensionBypassEditFlagVitalRecords] | [VRDR][BypassEditFlag] | - |
| [ExtensionCityCodeVitalRecords] | [VRDR][CityCodeOld] | - |
| [ExtensionDistrictCodeVitalRecords] | [VRDR][DistrictCodeOld]  | - |
| [ExtensionPartialDateVitalRecords] | [VRCL][ExtensionPartialDateVitalRecordsOld] | - |
| [ExtensionPostDirectionalVitalRecords] | [VRDR][PostDirectionalOld] | - |
| [ExtensionPreDirectionalVitalRecords] | [VRDR][PreDirectionalOld] |  - |
| [ExtensionReportedParentAgeAtDeliveryVitalRecords] | [VRCL][ExtensionReportedParentAgeAtDeliveryVitalRecordsOld]  | - |
| [ExtensionStreetDesignatorVitalRecords] | [VRDR][StreetDesignatorOld]  | - |
| [ExtensionStreetNameVitalRecords] | [VRDR][StreetNameOld] | - |
| [ExtensionStreetNumberVitalRecords] | [VRDR][StreetNumberOld] | - |
| [ExtensionUnitOrAptNumberVitalRecords] | [VRDR][UnitOrAptNumberOld] | - |
| [ExtensionRoleVitalRecords] | New | New Addition |
{: .grid }

### Current Valuesets

| Name         | Previous Version/Location  | Comments/Updates  |
| :----------: | -----------  | :---------------: |
| [ValueSetBirthAttendantTitlesVitalRecords] | [PHINVADS](https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7111) | - |
| [ValueSetBirthplaceCountryVitalRecords] | [VRDR][BirthplaceCountryVSOld] | Incorporated standard vital records approach to address  |
| [ValueSetBirthSexChildVitalRecords] | [USCoreBirthSex]  | Restricted to NCHS-specific codes |
| [ValueSetBirthSexFetusVitalRecords] | [USCoreBirthSex]  | Restricted to NCHS-specific codes  |
| [ValueSetCodedRaceAndEthnicityPersonVitalRecords] | New | New addition, incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases) |
| [ValueSetEducationLevelVitalRecords] | [VRDR][EducationLevelVSOld] | replaced [PHINVADS](https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7582) |
| [ValueSetEducationLevelPersonVitalRecords] | [VRCL][ValueSetEducationLevelPersonVitalRecords] | Now includes "Highest level of education [US Standard Certificate of Death]" |
| [ValueSetFatherRelationshipVitalRecords] | [VRCL][ValueSetFatherRelationshipVitalRecords]  | - |
| [ValueSetHispanicNoUnknownVitalRecords] | [VRDR][HispanicNoUnknownVSOld]  | Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases)  |
| [ValueSetHispanicOriginVitalRecords] | [VRDR][HispanicOriginVSOld] | Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases)  |
| [ValueSetJurisdictionVitalRecords] | [VRDR][JurisdictionVSOld]  | Incorporated standard vital records approach to address |
| [ValueSetInputRaceAndEthnicityPersonVitalRecords] | - | Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases) |
| [ValueSetMotherRelationshipVitalRecords] | [VRCL][ValueSetMotherRelationshipVitalRecords]  | - |
| [ValueSetRaceCodeVitalRecords] | [VRDR][RaceCodeVSOld]  | Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases) |
| [ValueSetRaceMissingValueReasonVitalRecords] | [VRDR][RaceMissingValueReasonVSOld]  | Meant to be used outside of just mortality use case  |
| [ValueSetRaceRecode40VitalRecords] | [VRDR][RaceRecode40VSOld] | Meant to be used outside of just mortality use case  |
| [ValueSetResidenceCountryVitalRecords] | [VRDR][ResidenceCountryVSOld]  | Incorporated standard vital records approach to address  |
| [ValueSetStatesTerritoriesAndProvincesVitalRecords] | [VRDR][StatesTerritoriesAndProvincesVSOld] | Incorporated standard vital records approach to address  |
| [ValueSetUSStatesAndTerritoriesVitalRecords] | [VRDR][USStatesAndTerritoriesVSOld] | Incorporated standard vital records approach to address  |
| [ValueSetUnitsOfAgeVitalRecords] | [VRDR][UnitsOfAgeVSOld] | - |
| [ValueSetYesNoNotApplicableVitalRecords] | [VRCL][ValueSetYesNoNotApplicableVitalRecords] | - |
| [ValueSetYesNoUnknownVitalRecords] | [VRCL][ValueSetYesNoUnknownVitalRecords]  | - |
| [ValueSetYesNoUnknownNotApplicableVitalRecords] | [VRCL][ValueSetYesNoUnknownNotApplicableVitalRecords] | - |
| [ValueSetEditBypass01234VitalRecords] | [VRDR][EditBypass01234VSOld] | Meant to be used outside of just mortality use case  | 
| [ValueSetMothersDateOfBirthEditFlagsVitalRecords] | [PHINVADS](https://phinvads.cdc.gov/vads/ViewValueSet.action?id=3BD473EE-40DD-E811-816D-0017A477041A) | - |
| [ValueSetPluralityEditFlagsVitalRecords] | [PHINVADS](https://phinvads.cdc.gov/vads/ViewValueSet.action?id=3A484C53-FDFD-E611-A856-0017A477041A)  | - |
{: .grid }

### Current Codesystems

| Name         | Previous Version/Location  | Comments/Updates  |
| :----------: | -----------  | :---------------: |
| [CodeSystemCanadianProvincesVitalRecords] | [VRDR][CanadaProvincesVSOld] | Incorporated standard vital records approach to address | 
| [CodeSystemComponentVitalRecords] | [VRCL][CodeSystemLocalComponentCodesVitalRecords]  | - |
| [CodeSystemCountryCodeVitalRecords] | [VRDR][CountryCodeCSOld]  |  Incorporated standard vital records approach to address  |
| [CodeSystemHispanicOriginVitalRecords] | [VRDR][HispanicOriginCSOld]  |  Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases)  |
| [CodeSystemJurisdictionsVitalRecords] | [VRDR][JurisdictionsCSOld]  |  Meant to be used outside of just mortality use case  |
| [CodeSystemMissingValueReasonVitalRecords] | [VRDR][MissingValueReasonCSOld] |  Meant to be used outside of just mortality use case  |
| [CodeSystemRaceCodeVitalRecords] | [VRDR][RaceCodeCSOld] |  Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases) |
| [CodeSystemRaceRecode40VitalRecords] | [VRDR][RaceRecode40CSOld]  |  Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases)  |
| [CodeSystemLocalObservationsCodesVitalRecords] | [VRDR][ObservationsCSOld] | Includes additional codes for decedent, mother, and father use cases |
| [CodeSystemEditFlagsVitalRecords] | [VRDR][BypassEditFlagCSOld]  | Includes additional codes for plurality and date of birth value sets, meant to be used outside of just mortality use case  |
{: .grid }



### Removed Profiles

| Name         | Current Version/Location      | Comments/Updates  |
| :----------: | -----------     | :---------------: |
| [ConditionEclampsiaHypertensionVitalRecords]| [BFDR][ConditionEclampsiaHypertension]  |  Only used for birth use case | 
| [ConditionGestationalDiabetesVitalRecords] | [BFDR][ConditionGestationalDiabetes]    |  Only used for birth use case |
| [ConditionGestationalHypertensionVitalRecords] | [BFDR][ConditionGestationalHypertension]   |  Only used for birth use case |
| [ConditionPrepregnancyDiabetesVitalRecords] | [BFDR][ConditionPrepregnancyDiabetes]   |  Only used for birth use case |
| [ConditionPrepregnancyHypertensionVitalRecords] | [BFDR][ConditionPrepregnancyHypertension]   |  Only used for birth use case |
| [LocationDeathVitalRecords] | [VRDR][DeathLocation]   |  Only used for death use case |
| [LocationInjuryVitalRecords] | [VRDR][InjuryLocation] |  Only used for death use case | 
| [ObservationApgarScoreVitalRecords] | [BFDR][ObservationApgarScore]   |  Only used for birth use case |
| [ObservationBirthWeightVitalRecords] | [BFDR][ObservationBirthWeight]   |  Only used for birth use case |
| [ObservationCauseOfDeathPart1VitalRecords] | [VRDR][CauseOfDeathPart1] |  Only used for death use case | 
| [ObservationContributingCauseOfDeathPart2VitalRecords] | [VRDR][CauseOfDeathPart2] |  Only used for death use case | 
| [ObservationDeathDateVitalRecords] | [VRDR][DeathDate] |  Only used for death use case | 
| [ObservationDecedentPregnancyVitalRecords] | [VRDR][DecedentPregnancyStatus] |  Only used for death use case | 
| [ObservationGestationalAgeAtDeliveryVitalRecords] | [BFDR][ObservationGestationalAgeAtDelivery]   |  Only used for birth use case |
| [ObservationInfantLivingVitalRecords] | [BFDR][ObservationInfantLiving]   |  Only used for birth use case |
| [ObservationInjuryIncidentVitalRecords] | [VRDR][InjuryIncident] |  Only used for death use case | 
| [ObservationLastMenstrualPeriodVitalRecords] | [BFDR][ObservationLastMenstrualPeriod]   |  Only used for birth use case |
| [ObservationMannerOfDeathVitalRecords] | [VRDR][MannerOfDeath] |  Only used for death use case | 
| [ObservationMotherDeliveryWeightVitalRecords] | [BFDR][ObservationMotherDeliveryWeight]   |  Only used for birth use case |
| [ObservationMotherHeightVitalRecords] | [BFDR][ObservationMotherHeight]   |  Only used for birth use case |
| [ObservationMotherPrepregnancyWeightVitalRecords] | [BFDR][ObservationMotherPrepregnancyWeight]   |  Only used for birth use case |
| [ObservationNoneOfSpecifiedPregnancyRiskFactorsVitalRecords] | [BFDR][ObservationNoneOfSpecifiedPregnancyRiskFactors]   |  Only used for birth use case |
| [ObservationNumberBirthsNowDeadVitalRecords] | [BFDR][ObservationNumberBirthsNowDead]   |  Only used for birth use case |
| [ObservationNumberBirthsNowLivingVitalRecords] | [BFDR][ObservationNumberBirthsNowLiving]   |  Only used for birth use case |
| [ObservationNumberFetalDeathsThisDeliveryVitalRecords] | [BFDR][ObservationNumberFetalDeathsThisDelivery]   |  Only used for birth use case |
| [ObservationNumberLiveBirthsThisDeliveryVitalRecords] | [BFDR][ObservationNumberLiveBirthsThisDelivery]   |  Only used for birth use case |
| [ObservationNumberOtherPregnancyOutcomesVitalRecords] | [BFDR][ObservationNumberOtherPregnancyOutcomes]   |  Only used for birth use case |
| [ObservationNumberPrenatalVisitsVitalRecords] | [BFDR][ObservationNumberPrenatalVisits]   |  Only used for birth use case |
| [ObservationNumberPreviousCesareansVitalRecords] | [BFDR][ObservationNumberPreviousCesareans]   |  Only used for birth use case |
| [ObservationParentEducationLevelVitalRecords] | -  |  Removed (only relying on [ObservationEducationLevelVitalRecords]) |
| [ObservationPluralityVitalRecords] | -   |  Removed (plurality is now specified with alive/dead births) |
| [ObservationPreviousCesareanVitalRecords] | [BFDR][ObservationPreviousCesarean]   |  Only used for birth use case |
| [ObservationPreviousPretermBirthVitalRecords] | [BFDR][ObservationPreviousPretermBirth]   |  Only used for birth use case |
| [ObservationRaceVitalRecords] | -  |  Superseded by [input][ObservationInputRaceAndEthnicityVitalRecords] and [coded][ObservationCodedRaceAndEthnicityVitalRecords] race |
| [ObservationTabulatedEthnicityVitalRecords] | -  |  Use was deprecated, superseded by [input][ObservationInputRaceAndEthnicityVitalRecords] and [coded][ObservationCodedRaceAndEthnicityVitalRecords] race |
| [ParametersCodingStatusValuesVitalRecords] | [VRDR][CodingStatusValues]    |  Only used for death use case |
| [PatientDecedentFetusVitalRecords] | [BFDR][PatientDecedentFetus]   |  Only used for birth use case |
| [ProcedureArtificialInseminationVitalRecords] | [BFDR][ProcedureArtificialInsemination]   |  Only used for birth use case |
| [ProcedureAssistedFertilizationVitalRecords] | [BFDR][ProcedureAssistedFertilization]   |  Only used for birth use case |
| [ProcedureDeathCertificationVitalRecords] | [VRDR][DeathCertification] |  Only used for death use case | 
| [ProcedureInfertilityTreatmentVitalRecords] | [BFDR][ProcedureInfertilityTreatment]   |  Only used for birth use case |
| [RelatedPersonMotherGestationalVitalRecords] |  -  | Removed |
{: .grid }

### Removed Extensions

| Name         |  Current Version/Location      | Comments/Updates  |
| :----------: |  -----------     | :---------------: |
| [ExtensionDateDayVitalRecords] |  -  | No longer used in date/time extensions |
| [ExtensionDateTimeVitalRecords] |  -    | No longer used in date/time extensions |
| [ExtensionDateTimeVitalRecords] |  -    | No longer used in [ExtensionPartialDateTimeVitalRecords] |
| [ExtensionDateYearVitalRecords] |  -  | No longer used in date/time extensions |
{: .grid }


### Removed Valuesets

| Name         |  Current Version/Location      | Comments/Updates  |
| :----------: |  -----------     | :---------------: |
| [ValueSetApgarTimingVitalRecords] |  [BFDR][ApgarTimingVS]    | Only relevant to birth use case |
| [ValueSetCertifierTypesVitalRecords] |   [VRDR][CertifierTypesVS]    | Only relevant to mortality use case |
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

| Name         |  Current Version/Location      | Comments/Updates  |
| :----------: |  -----------     | :---------------: |
| [CodeSystemDeathPregnancyStatusVitalRecords]|  [VRDR][DeathPregnancyStatusCS]    | Only relevant to mortality use case |
| [CodeSystemDeathReportingCodesVitalRecords] |  [MDI][CodeSystemMDI]     | Only relevant to death investigation use case |
| [IntentionalRejectCS] |  [VRDR][IntentionalRejectCS]     | Only relevant to mortality use case |
| [CodeSystemLocalComponentCodesVitalRecords] |  [VRDR][ObservationsCS]    | Only relevant to mortality use case |
| [CodeSystemSystemRejectVitalRecords] |  [VRDR][SystemRejectCS]    | Only relevant to mortality use case |
| [CodeSystemTransaxConversionVitalRecords] |  [VRDR][TransaxConversionCS]   | Only relevant to mortality use case |
{: .grid }


{% include markdown-link-references.md %}