**Sections 3.1 - 3.2 describe the changes between [STU 1.1 publication](https://hl7.org/fhir/us/vr-common-library/STU1.1/) (October 2023) and the STU 2 ballot (Jan 2024). For a history of previous changes, please see the prior change logs in the [appropriate versions](https://hl7.org/fhir/us/vr-common-library/STU1.1/change_log.html).**

### STU 2.0 Ballot Reconciliation
* [FHIR-46470](https://jira.hl7.org/browse/FHIR-46470) -- Moved [AutopsyPerformedIndicatorVitalRecords](https://hl7.org/fhir/us/vr-common-library/2024Jan/StructureDefinition-Observation-autopsy-performed-indicator-vr.html) profile to BFDR and changed value binding from [ValueSetYesNoUnknownVitalRecords] to PerformedNotPerformedPlannedVS (in BFDR) 
* [FHIR-44596](https://jira.hl7.org/browse/FHIR-44596) -- Restricted data absent reasons to codes 'unknown' and 'temp-unknown' in [ExtensionPartialDateVitalRecords] and [ExtensionPartialDateTimeVitalRecords]. Added [ValueSetPartialDateDataAbsentReasonVitalRecords] 
* [FHIR-44411](https://jira.hl7.org/browse/FHIR-44411) -- Replaced local codesystem for Canadian Provinces with https://canadapost.ca/CodeSystem/ProvinceCodes
* [FHIR-44184](https://jira.hl7.org/browse/FHIR-44184) -- Made top navigation bar labels the same as page titles
* [FHIR-44419](https://jira.hl7.org/browse/FHIR-44419) -- Eliminated the local code system for missing race value reasons that was used for [ValueSetRaceMissingValueReasonVitalRecords]. Reworked the value set and concept map with NullFlavor and ActReason codes. 
* [FHIR-44749](https://jira.hl7.org/browse/FHIR-FHIR-44749) -- Eliminate string length limits on address extensions. Document length limits on submissions in comment.
* [FHIR-44772](https://jira.hl7.org/browse/FHIR-FHIR-44772) -- Eliminate Unused Extensions for Related Person (deceased, race, ethnicity).  These are not needed.
* [FHIR-44754](https://jira.hl7.org/browse/FHIR-FHIR-44754) -- Change [ExtensionPatientFetalDeathVitalRecords] to be a Boolean extension of Patient.deceased
* [FHIR-43403](https://jira.hl7.org/browse/FHIR-43403) -- constrain units of parent ages -- [ExtensionReportedParentAgeAtDeliveryVitalRecords].
* added missing IJE mapping content for [RelatedPersonFatherNaturalVitalRecords] profile page
* [FHIR-43416](https://jira.hl7.org/browse/FHIR-43416) -- Add [Marital Status Value Set][ValueSetMaritalStatusVitalRecords] (from VRDR)
* [FHIR-43427](https://jira.hl7.org/browse/FHIR-43427) -- Add abstract profile of USCoreLocation to serve as the basis for VRDR and BFDR Location profiles.
* [FHIR-43473](https://jira.hl7.org/browse/FHIR-43473) -- Added record identifiers that are used in VRDR and BFDR to common library
* [FHIR-44460](https://jira.hl7.org/browse/FHIR-44460) -- Renamed [ValueSetMothersDateOfBirthEditFlagsVitalRecords](https://hl7.org/fhir/us/vr-common-library/2024Jan/ValueSet-ValueSet-mothers-date-of-birth-edit-flags-vr.html) to [ValueSetDateOfBirthEditFlagsVitalRecords] to generalize utility. 
* [FHIR-44427](https://jira.hl7.org/browse/FHIR-44427) -- Eliminated  HispanicNoUknown valueset which was content-identical with [ValueSetYesNoUnknownVitalRecords].
* [FHIR-44445](https://jira.hl7.org/browse/FHIR-44445) -- consolidate [ValueSetBirthSexChildVitalRecords](https://hl7.org/fhir/us/vr-common-library/2024Jan//ValueSet/ValueSet-birth-sex-child-vr) and [ValueSetBirthSexFetusVitalRecords](https://hl7.org/fhir/us/vr-common-library/2024Jan//ValueSet/ValueSet-birth-sex-fetus-vr) into a single VS called [ValueSetSexAssignedAtBirthVitalRecords]
* [FHIR-44463](https://jira.hl7.org/browse/FHIR-44463) and [FHIR-44464](https://jira.hl7.org/browse/FHIR-44464) -- drop prefixes in titles so words like codesystem, valueset, extension, and conceptmap don't appear twice
* [FHIR-44771](https://jira.hl7.org/browse/FHIR-44771) -- use an inline extension for motherOrFather in [ExtensionReportedParentAgeAtDeliveryVitalRecords]
* [FHIR-44418](https://jira.hl7.org/browse/FHIR-44418) -- removing Missing Value Reason codesystem ([ValueSetRaceMissingValueReasonVitalRecords] uses THO codes)
* [FHIR-44998](https://jira.hl7.org/browse/FHIR-44998) -- add Domestic Partnership to [ValueSetMaritalStatusVitalRecords]
* [FHIR-44426](https://jira.hl7.org/browse/FHIR-44426) -- removing Hispanic Y/N/U valueset


### STU 2.0 Ballot - January 2024
* Restrict birth sex for newborn to M,F,U. Added [ValueSetBirthSexChildVitalRecords](https://hl7.org/fhir/us/vr-common-library/2024Jan//ValueSet/ValueSet-birth-sex-child-vr), and referenced from [PatientChildVitalRecords] 
* Added abstract patient profile [PatientVitalRecords], which is derived from [USCorePatient]. Child profiles of Patient: [PatientChildVitalRecords], [PatientDecedentFetusVitalRecords], [PatientMotherVitalRecords] 
* Generalization of Parent Education Level to Education Level. [ObservationEducationLevelVitalRecords] now accomodates use cases in VRDR and BFDR, with subject now a generalized [PatientVitalRecords], focus can now be a [RelatedPersonParentVitalRecords] or Mother (rather than just Mother/Father), and the addition of a bypass edit flag  
* ObservationParentEducationLevelVitalRecords and related example was removed (doesn't add value given ObservationEducationLevelVitalRecords exists). PatientDecedentFetusVitalRecords and related examples moved to BFDR. RelatedPersonMotherGestationalVitalRecords and related example was removed (doesn't add value given ObservationEducationLevelVitalRecords exists).   

See the [Content Transitions](content-transitions.html) page for more details on movement of and changes to content.

{% include markdown-link-references.md %}