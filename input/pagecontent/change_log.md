### STU 2.0 Changes 
* Most of the changes since STU1.1 relate to [Vital Records IG Harmonization](vr_ig_harmonization.html).  For a summary of harmonization-related changes see  the [Content Transitions](content-transitions.html) page.
* Restricted data absent reasons to codes 'unknown' and 'temp-unknown' in [ExtensionPartialDateVitalRecords] and [ExtensionPartialDateTimeVitalRecords]. Added [ValueSetPartialDateDataAbsentReasonVitalRecords] 
* Replaced local codesystem for Canadian Provinces with https://canadapost.ca/CodeSystem/ProvinceCodes
* In valueset [ValueSetBirthAttendantTitlesVitalRecords] replaced retired SNOMEDCT code for Medical Doctor 112247003 with active code 309343006.
* Eliminated the local code system for missing race value reasons that was used for [ValueSetRaceMissingValueReasonVitalRecords]. Reworked the value set and concept map with NullFlavor and ActReason codes. 
* Eliminate string length limits on address extensions. Document length limits on submissions in comment.
* Eliminate Unused Extensions for Related Person (deceased, race, ethnicity).  These are not needed.
* Change [ExtensionPatientFetalDeathVitalRecords] to be a Boolean extension of Patient.deceased
* Constrain units of parent ages -- [ExtensionReportedParentAgeAtDeliveryVitalRecords].
* Add abstract profile of USCoreLocation to serve as the basis for VRDR and BFDR Location profiles.
* Added record identifiers that are used in VRDR and BFDR to common library
* Renamed [ValueSetMothersDateOfBirthEditFlagsVitalRecords](https://hl7.org/fhir/us/vr-common-library/2024Jan/ValueSet-ValueSet-mothers-date-of-birth-edit-flags-vr.html) to [ValueSetDateOfBirthEditFlagsVitalRecords] to generalize utility. 
* Eliminated  HispanicNoUknown valueset which was content-identical with [ValueSetYesNoUnknownVitalRecords].
* Consolidate [ValueSetBirthSexChildVitalRecords](https://hl7.org/fhir/us/vr-common-library/2024Jan//ValueSet/ValueSet-birth-sex-child-vr) and [ValueSetBirthSexFetusVitalRecords](https://hl7.org/fhir/us/vr-common-library/2024Jan//ValueSet/ValueSet-birth-sex-fetus-vr) into a single VS called [ValueSetSexAssignedAtBirthVitalRecords]
* Use an inline extension for motherOrFather in [ExtensionReportedParentAgeAtDeliveryVitalRecords]
* Removing Missing Value Reason codesystem ([ValueSetRaceMissingValueReasonVitalRecords] uses THO codes)
* Add Domestic Partnership to [ValueSetMaritalStatusVitalRecords]
* Restrict birth sex for newborn to M,F,U. Added [ValueSetBirthSexChildVitalRecords](https://hl7.org/fhir/us/vr-common-library/2024Jan//ValueSet/ValueSet-birth-sex-child-vr), and referenced from [PatientChildVitalRecords] 
* Added abstract patient profile [PatientVitalRecords], which is derived from [USCorePatient], and is the basis for  [PatientChildVitalRecords] and [PatientMotherVitalRecords], as well as Patient profiles in VRDR and BFDR.
* Generalization of Parent Education Level to Education Level. [ObservationEducationLevelVitalRecords] now accomodates use cases in VRDR and BFDR, with subject now a generalized [PatientVitalRecords], focus can now be a [RelatedPersonParentVitalRecords] or Mother (rather than just Mother/Father), and the addition of a bypass edit flag.  


### Previous Versions
See the change log in the ([previous versios](https://hl7.org/fhir/us/vr-common-library/STU1.1/change_log.html)).

{% include markdown-link-references.md %}