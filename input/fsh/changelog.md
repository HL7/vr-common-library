## Change Log

### As of 31 October 2023
- Removed ObservationRaceVitalRecords and ObservationTabulatedEthnicityVitalRecords and related instances

### As of 9 October 2023
- LocationDeathVitalRecords and LocationInjuryVitalRecords were superseded. VRDR and MDI will use SD_DeathLocation and SD_InjuryLocation profiles. 

### As of 9 October 2023

#### **Summary**
VRCL was reorganized to contain only demographic content (education, race, ethnicity, industry/occupation, and location) and key person profiles (patient, practitioner, child, decedent fetus, mother, father). New harmonized person profiles were created using an abstract patient profile. New harmonized profiles were created for coded and input race and ethnicity, and education level. Instances were updated to reference these new profiles as appropriate. Content that is specific to natality/fetal death was moved to BFDR. Content that is specific to mortality was moved to VRDR. Archived copies of these migrating profiles and instances were placed into a folder called "VRCL/superceded," as well as the old person and location profiles that are now harmonized.

#### **Harmonized Profiles**
- observationCodedRaceAndEthnicity_new
- observationEducationLevel_new
- observationInputRaceAndEthnicity_new
- patientChildVitalRecords_new
- patientDecedentFetusVitalRecords_new
- patientMotherFetusVitalRecords_new
- patientFetusVitalRecords_new
- practitionerFetusVitalRecords_new
- relatedPersonFatherFetusVitalRecords_new
- relatedPersonMotherFetusVitalRecords_new
- relatedPersonParentFetusVitalRecords_new

#### **Profiles Moving from VRCL into BFDR**

- conditionEclampsiaHypertensionVitalRecords
- conditionGestationalDiabetesVitalRecords
- conditionGestationalHypertensionVitalRecords
- conditionPrepregnancyDiabetesVitalRecords
- conditionPrepregnancyHypertensionVitalRecords
- observationApgarScoreVitalRecords
- observationBirthWeightVitalRecords
- observationGestationalAgeAtDeliveryVitalRecords
- observationInfantLivingVitalRecords
- observationLastMenstrualPeriodVitalRecords
- observationMotherDeliveryWeightVitalRecords
- observationMotherHeightVitalRecords
- observationMotherPrepregnancyWeightVitalRecords
- observationNoneOfSpecifiedPregnancyRiskFactorsVitalRecords
- observationNumberBirthsNowDeadVitalRecords
- observationNumberBirthsNowLivingVitalRecords
- observationNumberFetalDeathsThisDeliveryVitalRecords
- observationNumberLiveBirthsThisDeliveryVitalRecords
- observationNumberOtherPregnancyOutcomesVitalRecords
- observationNumberPrenatalVisitsVitalRecords
- observationNumberPreviousCesareansVitalRecords
- observationPregnancyRiskFactorVitalRecords
- observationPreviousCesareanVitalRecords
- observationPreviousPretermBirthVitalRecords
- procedureArtificialInseminationVitalRecords
- procedureAssistedFertilizationVitalRecords
- procedureInfertilityTreatmentVitalRecords

#### **Profiles Moving from VRCL into VRDR**

- observationCauseOfDeathPart1VitalRecords
- observationContributingCauseOfDeathPart2VitalRecords
- observationDeathDateVitalRecords
- observationDecedentPregnancyVitalRecords
- observationInjuryIncidentVitalRecords
- observationMannerOfDeathVitalRecords
- observationMethodOfDispositionVitalRecords
- observationTobaccoUseContributedToDeathVitalRecords
- procedureDeathCertificationVitalRecords

#### **Instances Moving from VRCL into BFDR**

- condition-eclampsia-hypertension-jada-ann-quinn
- observation-apgar-score-babyg-quinn-5-min-common
- observation-birth-weight-babyg-quinn-common
- observation-birth-weight-not-named-common
- observation-gestational-age-at-delivery-babyg-quinn-common
- observation-gestational-age-at-delivery-not-named-common
- observation-infant-living-babyg-quinn-common
- observation-last-menstrual-period-carmen-teresa-lee-common
- observation-mother-delivery-weight-carmen-teresa-lee-common
- observation-mother-height-carmen-teresa-lee-common
- observation-mother-prepregnancy-weight-carmen-teresa-lee-common
- observation-nbr-live-births-delivery-carmen-teresa-lee-common
- observation-nbr-other-pregnancy-outcomes-jada-ann-quinn-common
- observation-number-births-now-dead-carmen-teresa-lee-common
- observation-number-births-now-living-carmen-teresa-lee-common
- observation-number-deaths-this-delivery-carmen-teresa-lee-common
- observation-number-live-births-this-delivery-carmen-teresa-lee-common
- observation-number-prenatal-visits-jada-ann-quinn-common
- observation-number-previous-cesareans-carmen-teresa-lee-common
- observation-number-previous-cesareans-carmen-teresa-lee-common
- observation-pregnancy-risk-factor-carmen-teresa-lee-1-common
- observation-previous-cesarean-jada-ann-quinn-common
- procedure-artificial-insemination-jada-ann-quinn-common

#### **Instances Moving from VRCL into VRDR**

- observation-cause-of-death-part1-vr-a-freeman
- observation-contributing-cause-of-death-part2-vr-a-freeman
- observation-death-date-vr-a-freeman
- observation-decedent-pregnancy-vr-a-freeman
- observation-injury-incident-vr-a-freeman-med-ingest
- observation-manner-of-death-vr-a-freeman-accidental
- observation-tobacco-use-vr-a-freeman

#### **Other Superceded Content**

- patientChildVitalRecords
- patientDecedentFetusVitalRecords
- patientMotherVitalRecords
- practitionerVitalRecords
- relatedPersonFatherNaturalVitalRecords
- relatedPersonFatherVitalRecords
- relatedPersonMotherGestationalVitalRecords
- relatedPersonMotherVitalRecords
- relatedPersonParentVitalRecords
- observation-parent-education-level-carmen-teresa-lee-common
- observation-race-jada-ann-quinn-common
- patient-child-babyg-quinn-common
- patient-decedent-fetus-not-named-common
- patient-mother-birth-date-part-absent-common
- patient-mother-carmen-teresa-lee-common
- patient-mother-jada-ann-quinn-common
- practitioner-vital-records-janet-seito-common
- relatedperson-father-natural-tom-yan-lee-common
  
#### **Profiles Moving to VRCL from BFDR**

- patientChild_new
- patientDecedentFetus_new
- patientMother_new

#### **Profiles Moving to VRCL from VRDR**

- observationCodedRaceAndEthnicity_new
- observationInputRaceAndEthnicity_new
