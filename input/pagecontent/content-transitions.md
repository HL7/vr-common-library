<style>
    table.style1 { 
        border-collapse: collapse; 
        width: 100%; 
        table-layout: fixed;
    }  
    table.style1 tbody tr {
        border-bottom: 1px solid #dddddd;
    } 
    table.style1 tbody tr:nth-of-type(even) { 
        background-color: #f3f3f3; 
    } 
    table.style1 tbody tr:last-of-type {
        border-bottom: 2px solid #98c1d9;
    }
    table.style1 td:first-of-type {
        text-align: left;
    }
    table.style1 td:nth-of-type(2) {
        text-align: center;
    }
    table.style1 td:nth-of-type(3) {
        text-align: left;
    }
</style>
{% include transitions_documentation.md %}
<br/><br/>

### STU2 Profiles

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Previous Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='StructureDefinition-Observation-autopsy-performed-indicator-vr.html'>ObservationAutopsyPerformedIndicatorVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-autopsy-performed-indicator-vr.html'>VRCL</a> </td><td> Value field now a slice definition ("actual result") and "autopsy was performed?" is reported under valueCodeableConcept field </td></tr>
<tr><td> <a href='StructureDefinition-coded-race-and-ethnicity-vr.html'>ObservationCodedRaceAndEthnicityVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-coded-race-and-ethnicity.html'>VRDR</a> </td><td> Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases) </td></tr>
<tr><td> <a href='StructureDefinition-Observation-education-level-vr.html'>ObservationEducationLevelVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-parent-education-level-vr.html'>VRCL</a>  </td><td> Generalized profile now has subject set to <a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Patient-vr.html'>patient</a>, focus set to <a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Patient-mother-vr.html'>mother</a> or <a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-RelatedPerson-parent-vr.html'>parent</a>, and profile now includes bypassEditFlag </td></tr>
<tr><td> <a href='StructureDefinition-Observation-emerging-issues-vr'>EmergingIssues</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-emerging-issues.html'>VRDR</a> </td><td>Moved to VRCL to be used in BFDR (fetal birth/death) and VRDR (mortality) use cases </td></tr>
<tr><td> <a href='StructureDefinition-input-race-and-ethnicity-vr.html'>ObservationInputRaceAndEthnicityVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-input-race-and-ethnicity.html'>VRDR</a> </td><td> Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases) </td></tr>
<tr><td> <a href='StructureDefinition-Observation-usual-work-vr.html'>ObservationUsualWorkVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-usual-work.html'>VRDR</a> </td><td> Incorporated standard vital records approach to industry and occupation to support all vital records use cases </td></tr>
<tr><td> <a href='StructureDefinition-Patient-child-vr.html'>PatientChildVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Patient-child-vr.html'>VRCL</a> </td><td> Now inherits from <a href='StructureDefinition-Patient-vr.html'>PatientVitalRecords</a> rather than <a href='http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-patient.html'>USCorePatient</a>, added bypassedit flag to multiplebirth, birthTime, dataAbsentReason, partialDate no longer extensions  </td></tr>
<tr><td> <a href='StructureDefinition-Patient-mother-vr.html'>PatientMotherVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Patient-mother-vr.html'>VRCL</a> </td><td> New profile inherits from  <a href='StructureDefinition-Patient-vr.html'>PatientVitalRecords</a> rather than <a href='http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-patient.html'>USCorePatient</a> </td></tr>
<tr><td> <a href='StructureDefinition-Patient-vr.html'>PatientVitalRecords</a> </td><td> New </td><td> New addition, serves as a new abstract profile (parent to <a href='StructureDefinition-Patient-child-vr.html'>PatientChild</a>, <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Patient-decedent-fetus.html'>PatientDecedentFetus</a>, <a href='StructureDefinition-Patient-mother-vr.html'>PatientMotherVitalRecords</a>, and <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent.html'>Decedent</a>) </td></tr>
<tr><td> <a href='StructureDefinition-Practitioner-vr.html'>PractitionerVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Practitioner-vr.html'>VRCL</a> </td><td> Now includes slice for qualification, additional address slice items, and name field constrained to exactly one</td></tr>
<tr><td> <a href='StructureDefinition-RelatedPerson-father-natural-vr.html'>RelatedPersonFatherNaturalVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-RelatedPerson-father-natural-vr.html'>VRCL</a> </td><td> - </td></tr>
<tr><td> <a href='StructureDefinition-RelatedPerson-father-vr.html'>RelatedPersonFatherVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-RelatedPerson-father-vr.html'>VRCL</a> </td><td> Now includes birthDate bypassEditFlag </td></tr>
<tr><td> <a href='StructureDefinition-RelatedPerson-mother-vr.html'>RelatedPersonMotherVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-RelatedPerson-mother-vr.html'>VRCL</a> </td><td> Now includes birthDate bypassEditFlag, communication field no longer MS   </td></tr>
<tr><td> <a href='StructureDefinition-RelatedPerson-parent-vr.html'>RelatedPersonParentVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-RelatedPerson-parent-vr.html'>VRCL</a> </td><td> Now includes birthDate bypassEditFlag, subject generalized to <a href='StructureDefinition-Patient-vr.html'>PatientVitalRecords</a> </td></tr>
</tbody>
</table>


### STU2 Extensions

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Previous Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='StructureDefinition-ExtensionDatePartAbsentReasonVitalRecords.html'>ExtensionDatePartAbsentReasonVitalRecords</a></td><td> New </td><td> New addition </td></tr>
<tr><td> <a href='StructureDefinition-ExtensionPartialDateTimeVitalRecords.html'>ExtensionPartialDateTimeVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-partial-date-time-vr.html'>VRCL</a> </td><td> - </td></tr>
<tr><td> <a href='StructureDefinition-Extension-relatedperson-birthplace-vr.html'>ExtensionRelatedpersonBirthplaceVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-relatedperson-birthplace-vr.html'>VRCL</a> </td><td> - </td></tr>
<tr><td> <a href='StructureDefinition-Extension-relatedperson-deceased-vr.html'>ExtensionRelatedPersonDeceasedVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-relatedperson-deceased-vr.html'>VRCL</a>   </td><td> - </td></tr>
<tr><td> <a href='StructureDefinition-Extension-within-city-limits-indicator-vr.html'>ExtensionWithinCityLimitsIndicatorVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-within-city-limits-indicator-vr.html'>VRCL</a>   </td><td> changed to reference VRCL, rather than phinvads valueset </td></tr>
<tr><td> <a href='StructureDefinition-BypassEditFlag.html'>ExtensionBypassEditFlagVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-BypassEditFlag.html'>VRDR</a> </td><td> - </td></tr>
<tr><td> <a href='StructureDefinition-CityCode.html'>ExtensionCityCodeVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-CityCode.html'>VRDR</a> </td><td> - </td></tr>
<tr><td> <a href='StructureDefinition-DistrictCode.html'>ExtensionDistrictCodeVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-DistrictCode.html'>VRDR</a>  </td><td> - </td></tr>
<tr><td> <a href='StructureDefinition-ExtensionPartialDateVitalRecords.html'>ExtensionPartialDateVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-partial-date-vr.html'>VRCL</a> </td><td> - </td></tr>
<tr><td> <a href='StructureDefinition-PostDirectional.html'>ExtensionPostDirectionalVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-PostDirectional.html'>VRDR</a> </td><td> - </td></tr>
<tr><td> <a href='StructureDefinition-PreDirectional.html'>ExtensionPreDirectionalVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-PreDirectional.html'>VRDR</a> </td><td>  - </td></tr>
<tr><td> <a href='StructureDefinition-Extension-reported-parent-age-at-delivery-vr.html'>ExtensionReportedParentAgeAtDeliveryVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-reported-parent-age-at-delivery-vr.html'>VRCL</a>  </td><td> - </td></tr>
<tr><td> <a href='StructureDefinition-StreetDesignator.html'>ExtensionStreetDesignatorVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-StreetDesignator.html'>VRDR</a>  </td><td> - </td></tr>
<tr><td> <a href='StructureDefinition-StreetName.html'>ExtensionStreetNameVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-StreetName.html'>VRDR</a> </td><td> - </td></tr>
<tr><td> <a href='StructureDefinition-StreetNumber.html'>ExtensionStreetNumberVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-StreetNumber.html'>VRDR</a> </td><td> - </td></tr>
<tr><td> <a href='StructureDefinition-UnitOrAptNumber.html'>ExtensionUnitOrAptNumberVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-UnitOrAptNumber.html'>VRDR</a> </td><td> - </td></tr>
<tr><td> <a href='StructureDefinition-Extension-role-vr.html'>ExtensionRoleVitalRecords</a> </td><td> New </td><td> New Addition </td></tr>
</tbody>
</table>


### STU2 Valuesets

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Previous Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='ValueSet-ValueSet-birth-attendant-titles-vr.html'>ValueSetBirthAttendantTitlesVitalRecords</a> </td><td> <a href='https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7111'>PHINVADS</a> </td><td> - </td></tr>
<tr><td> <a href='ValueSet-ValueSet-birthplace-country-vr.html'>ValueSetBirthplaceCountryVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-birthplace-country-vs.html'>VRDR</a> </td><td> Incorporated standard vital records approach to address  </td></tr>
<tr><td> <a href='ValueSet-ValueSet-birth-sex-child-vr.html'>ValueSetBirthSexChildVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/core/STU5.0.1/ValueSet-birthsex.html'>USCoreBirthSex</a>  </td><td> Restricted to NCHS-specific codes </td></tr>
<tr><td> <a href='ValueSet-ValueSet-birth-sex-fetus-vr.html'>ValueSetBirthSexFetusVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/core/STU5.0.1/ValueSet-birthsex.html'>USCoreBirthSex</a>  </td><td> Restricted to NCHS-specific codes  </td></tr>
<tr><td> <a href='ValueSet-ValueSet-coded-race-and-ethnicity-person-vr.html'>ValueSetCodedRaceAndEthnicityPersonVitalRecords</a> </td><td> New </td><td> New addition, incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases) </td></tr>
<tr><td> <a href='ValueSet-ValueSet-education-level-vr.html'>ValueSetEducationLevelVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-education-level-vs.html'>VRDR</a> </td><td> replaced <a href='https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7582'>PHINVADS</a> </td></tr>
<tr><td> <a href='ValueSet-ValueSet-education-level-person-vr.html'>ValueSetEducationLevelPersonVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-education-level-person-vr.html'>VRCL</a> </td><td> Now includes "Highest level of education [US Standard Certificate of Death]" </td></tr>
<tr><td> <a href='ValueSet-ValueSet-father-relationship-vr.html'>ValueSetFatherRelationshipVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-father-relationship-vr.html'>VRCL</a>  </td><td> - </td></tr>
<tr><td> <a href='ValueSet-ValueSet-hispanic-no-unknown-vr.html'>ValueSetHispanicNoUnknownVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-hispanic-no-unknown-vs.html'>VRDR</a>  </td><td> Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases)  </td></tr>
<tr><td> <a href='ValueSet-ValueSet-hispanic-origin-vr.html'>ValueSetHispanicOriginVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-hispanic-origin-vs.html'>VRDR</a> </td><td> Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases)  </td></tr>
<tr><td> <a href='ValueSet-ValueSet-jurisdiction-vr.html'>ValueSetJurisdictionVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-jurisdiction-vs.html'>VRDR</a>  </td><td> Incorporated standard vital records approach to address </td></tr>
<tr><td> <a href='ValueSet-ValueSet-input-race-and-ethnicity-person-vr.html'>ValueSetInputRaceAndEthnicityPersonVitalRecords</a> </td><td> New </td><td> Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases) </td></tr>
<tr><td> <a href='ValueSet-ValueSet-mother-relationship-vr.html'>ValueSetMotherRelationshipVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-mother-relationship-vr.html'>VRCL</a>  </td><td> - </td></tr>
<tr><td> <a href='ValueSet-ValueSet-mothers-date-of-birth-edit-flags-vr.html'>ValueSetMothersDateOfBirthEditFlagsVitalRecords</a> </td><td> <a href='https://phinvads.cdc.gov/vads/ViewValueSet.action?id=3BD473EE-40DD-E811-816D-0017A477041A'>PHINVADS</a> </td><td> - </td></tr>
<tr><td> <a href='ValueSet-ValueSet-race-code-vr.html'>ValueSetRaceCodeVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-race-code-vs.html'>VRDR</a>  </td><td> Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases) </td></tr>
<tr><td> <a href='ValueSet-ValueSet-race-missing-value-reason-vr.html'>ValueSetRaceMissingValueReasonVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-race-missing-value-reason-vs.html'>VRDR</a>  </td><td> Meant to be used outside of just mortality use case  </td></tr>
<tr><td> <a href='ValueSet-ValueSet-race-recode-40-vr.html'>ValueSetRaceRecode40VitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-race-recode-40-vs.html'>VRDR</a> </td><td> Meant to be used outside of just mortality use case  </td></tr>
<tr><td> <a href='ValueSet-ValueSet-residence-country-vr.html'>ValueSetResidenceCountryVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-residence-country-vs.html'>VRDR</a>  </td><td> Incorporated standard vital records approach to address  </td></tr>
<tr><td> <a href='ValueSet-ValueSet-states-territories-provinces-vr.html'>ValueSetStatesTerritoriesAndProvincesVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-states-territories-provinces-vs.html'>VRDR</a> </td><td> Incorporated standard vital records approach to address  </td></tr>
<tr><td> <a href='ValueSet-ValueSet-usstates-territories-vr.html'>ValueSetUSStatesAndTerritoriesVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-usstates-territories-vs.html'>VRDR</a> </td><td> Incorporated standard vital records approach to address  </td></tr>
<tr><td> <a href='ValueSet-ValueSet-units-of-age-vr.html'>ValueSetUnitsOfAgeVitalRecords</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-units-of-age-vs.html'>VRDR</a> </td><td> - </td></tr>
<tr><td> <a href='ValueSet-ValueSet-yes-no-not-applicable-vr.html'>ValueSetYesNoNotApplicableVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-yes-no-not-applicable-vr.html'>VRCL</a> </td><td> - </td></tr>
<tr><td> <a href='ValueSet-ValueSet-yes-no-unknown-vr.html'>ValueSetYesNoUnknownVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-yes-no-unknown-vr.html'>VRCL</a>  </td><td> - </td></tr>
<tr><td> <a href='ValueSet-ValueSet-yes-no-unknown-not-applicable-vr.html'>ValueSetYesNoUnknownNotApplicableVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-yes-no-unknown-not-applicable-vr.html'>VRCL</a> </td><td> - </td></tr>
<tr><td> <a href='ValueSet-valueset-edit-bypass-01234-vr.html'>ValueSetEditBypass01234VitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-edit-bypass-01234-vs.html'>VRDR</a> </td><td> Meant to be used outside of just mortality use case  </td></tr> 
<tr><td> <a href='ValueSet-ValueSet-plurality-edit-flags-vr.html'>ValueSetPluralityEditFlagsVitalRecords</a> </td><td> <a href='https://phinvads.cdc.gov/vads/ViewValueSet.action?id=3A484C53-FDFD-E611-A856-0017A477041A'>PHINVADS</a>  </td><td> - </td></tr>
<tr><td> <a href='ValueSet-ValueSet-role-vr.html'>ValueSetRoleVitalRecords</a> </td><td> New </td><td> New Addition </td></tr>
</tbody>
</table>


### STU2 Codesystems

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Previous Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='CodeSystem-CodeSystem-canadian-provinces-vr.html'>CodeSystemCanadianProvincesVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-canada-provinces-vs.html'>VRDR</a> </td><td> Incorporated standard vital records approach to address </td></tr> 
<tr><td> <a href='CodeSystem-codesystem-vr-component.html'>CodeSystemComponentVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/CodeSystem-CodeSystem-local-component-codes-vr.html'>VRCL</a>  </td><td> - </td></tr>
<tr><td> <a href='CodeSystem-CodeSystem-country-code-vr.html'>CodeSystemCountryCodeVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-country-code-cs.html'>VRDR</a>  </td><td>  Incorporated standard vital records approach to address  </td></tr>
<tr><td> <a href='CodeSystem-CodeSystem-hispanic-origin-vr.html'>CodeSystemHispanicOriginVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-hispanic-origin-cs.html'>VRDR</a>  </td><td>  Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases)  </td></tr>
<tr><td> <a href='CodeSystem-CodeSystem-jurisdictions-vr.html'>CodeSystemJurisdictionsVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-jurisdictions-cs.html'>VRDR</a>  </td><td>  Meant to be used outside of just mortality use case  </td></tr>
<tr><td> <a href='CodeSystem-CodeSystem-missing-value-reason-vr.html'>CodeSystemMissingValueReasonVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-missing-value-reason-cs.html'>VRDR</a> </td><td>  Meant to be used outside of just mortality use case  </td></tr>
<tr><td> <a href='CodeSystem-CodeSystem-race-code-vr.html'>CodeSystemRaceCodeVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-race-code-cs.html'>VRDR</a> </td><td>  Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases) </td></tr>
<tr><td> <a href='CodeSystem-CodeSystem-race-recode-40-vr.html'>CodeSystemRaceRecode40VitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-race-recode-40-cs.html'>VRDR</a>  </td><td>  Incorporated standard vital records approach to race & ethnicity (generalized to support all vital records use cases)  </td></tr>
<tr><td> <a href='CodeSystem-CodeSystem-local-observation-codes-vr.html'>CodeSystemLocalObservationsCodesVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-observations-cs.html'>VRDR</a> </td><td> Includes additional codes for decedent, mother, and father use cases </td></tr>
<tr><td> <a href='CodeSystem-CodeSystem-vr-edit-flags.html'>CodeSystemEditFlagsVitalRecords</a> </td><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-bypass-edit-flag-cs.html'>VRDR</a>  </td><td> Includes additional codes for plurality and date of birth value sets, meant to be used outside of just mortality use case  </td></tr>
</tbody>
</table>


### Removed Profiles

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Current Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Condition-eclampsia-hypertension-vr.html'>ConditionEclampsiaHypertensionVitalRecords</a></td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Condition-eclampsia-hypertension.html'>BFDR</a>  </td><td>  Only used for birth use case </td></tr> 
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Condition-gestational-diabetes-vr.html'>ConditionGestationalDiabetesVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Condition-gestational-diabetes.html'>BFDR</a>    </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Condition-gestational-hypertension-vr.html'>ConditionGestationalHypertensionVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Condition-gestational-hypertension.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Condition-prepregnancy-diabetes-vr.html'>ConditionPrepregnancyDiabetesVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Condition-prepregnancy-diabetes.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Condition-prepregnancy-hypertension-vr.html'>ConditionPrepregnancyHypertensionVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Condition-prepregnancy-hypertension.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Location-death-vr.html'>LocationDeathVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/vrdr/StructureDefinition-vrdr-death-location.html'>VRDR</a>   </td><td>  Only used for death use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Location-injury-vr.html'>LocationInjuryVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/vrdr/StructureDefinition-vrdr-injury-location.html'>VRDR</a> </td><td>  Only used for death use case </td></tr> 
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-apgar-score-vr.html'>ObservationApgarScoreVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-apgar-score.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-birth-weight-vr.html'>ObservationBirthWeightVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-birth-weight.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-cause-of-death-part1-vr.html'>ObservationCauseOfDeathPart1VitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/vrdr/StructureDefinition-vrdr-cause-of-death-part1.html'>VRDR</a> </td><td>  Only used for death use case </td></tr> 
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-contributing-cause-of-death-part2-vr.html'>ObservationContributingCauseOfDeathPart2VitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/vrdr/StructureDefinition-vrdr-cause-of-death-part2.html'>VRDR</a> </td><td>  Only used for death use case </td></tr> 
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-death-date-vr.html'>ObservationDeathDateVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/vrdr/StructureDefinition-vrdr-death-date.html'>VRDR</a> </td><td>  Only used for death use case </td></tr> 
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-decedent-pregnancy-vr.html'>ObservationDecedentPregnancyVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/vrdr/StructureDefinition-vrdr-decedent-pregnancy-status.html'>VRDR</a> </td><td>  Only used for death use case </td></tr> 
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-gestational-age-at-delivery-vr.html'>ObservationGestationalAgeAtDeliveryVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-gestational-age-at-delivery.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-infant-living-vr.html'>ObservationInfantLivingVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-infant-living.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-injury-incident-vr.html'>ObservationInjuryIncidentVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/vrdr/StructureDefinition-vrdr-injury-incident.html'>VRDR</a> </td><td>  Only used for death use case </td></tr> 
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-last-menstrual-period-vr.html'>ObservationLastMenstrualPeriodVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-last-menstrual-period.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-manner-of-death-vr.html'>ObservationMannerOfDeathVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/vrdr/StructureDefinition-vrdr-manner-of-death.html'>VRDR</a> </td><td>  Only used for death use case </td></tr> 
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-mother-delivery-weight-vr.html'>ObservationMotherDeliveryWeightVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-mother-delivery-weight.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-mother-height-vr.htm'>ObservationMotherHeightVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-mother-height.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-mother-prepregnancy-weight-vr.html'>ObservationMotherPrepregnancyWeightVitalRecords</a> </td><td><a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-mother-prepregnancy-weight.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-none-of-specified-pregnancy-risk-factors-vr.html'>ObservationNoneOfSpecifiedPregnancyRiskFactorsVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-none-of-specified-pregnancy-risk-factors.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-number-births-now-dead-vr.html'>ObservationNumberBirthsNowDeadVitalRecords</a> </td><td><a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-number-births-now-dead.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-number-births-now-living-vr.html'>ObservationNumberBirthsNowLivingVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-number-births-now-living.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-number-fetal-deaths-this-delivery-vr.html'>ObservationNumberFetalDeathsThisDeliveryVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-number-fetal-deaths-this-delivery.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-number-live-births-this-delivery-vr.html'>ObservationNumberLiveBirthsThisDeliveryVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-number-live-births-this-delivery.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-number-other-pregnancy-outcomes-vr.html'>ObservationNumberOtherPregnancyOutcomesVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-number-other-pregnancy-outcomes.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-number-prenatal-visits-vr.html'>ObservationNumberPrenatalVisitsVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-number-prenatal-visits.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-number-previous-cesareans-vr.html'>ObservationNumberPreviousCesareansVitalRecords</a> </td><td><a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-number-previous-cesareans.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-parent-education-level-vr.html'>ObservationParentEducationLevelVitalRecords</a> </td><td> Deleted  </td><td>  Removed (only relying on <a href='StructureDefinition-Observation-education-level-vr.html'>ObservationEducationLevelVitalRecords</a>) </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-plurality-vr.html'>ObservationPluralityVitalRecords</a> </td><td> Deleted   </td><td>  Removed (plurality is now specified with alive/dead births) </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-previous-cesarean-vr.html'>ObservationPreviousCesareanVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-previous-cesarean.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-previous-preterm-birth-vr.html'>ObservationPreviousPretermBirthVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Observation-previous-preterm-birth.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-race-vr.html'>ObservationRaceVitalRecords</a> </td><td> Deleted  </td><td>  Superseded by <a href='StructureDefinition-input-race-and-ethnicity-vr.html'>input</a> and <a href='StructureDefinition-coded-race-and-ethnicity-vr.html'>coded</a> race </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Observation-tabulated-ethnicity-vr.html'>ObservationTabulatedEthnicityVitalRecords</a> </td><td>  Deleted  </td><td>  Use was deprecated, superseded by <a href='StructureDefinition-input-race-and-ethnicity-vr.html'>input</a> and <a href='StructureDefinition-coded-race-and-ethnicity-vr.html'>coded</a> race </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Parameters-coding-status-values-vr.html'>ParametersCodingStatusValuesVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/vrdr/StructureDefinition-vrdr-coding-status-values.html'>VRDR</a>    </td><td>  Only used for death use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Patient-decedent-fetus-vr.html'>PatientDecedentFetusVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Patient-decedent-fetus.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Procedure-artificial-insemination-vr.html'>ProcedureArtificialInseminationVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Procedure-artificial-insemination.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Procedure-assisted-fertilization-vr.html'>ProcedureAssistedFertilizationVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Procedure-assisted-fertilization.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Procedure-death-certification-vr.html'>ProcedureDeathCertificationVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/vrdr/StructureDefinition-vrdr-death-certification.html'>VRDR</a> </td><td>  Only used for death use case </td></tr> 
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Procedure-infertility-treatment-vr.html'>ProcedureInfertilityTreatmentVitalRecords</a> </td><td> <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/StructureDefinition-Procedure-infertility-treatment.html'>BFDR</a>   </td><td>  Only used for birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-RelatedPerson-mother-gestational-vr.html'>RelatedPersonMotherGestationalVitalRecords</a> </td><td>  Deleted  </td><td> Removed </td></tr>
</tbody>
</table>


### Removed Extensions

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Current Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-date-day-vr.html'>ExtensionDateDayVitalRecords</a> </td><td>  Deleted  </td><td> No longer used in date/time extensions </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-date-time-vr.html'>ExtensionDateTimeVitalRecords</a> </td><td>  Deleted  </td><td> No longer used in <a href='StructureDefinition-ExtensionPartialDateTimeVitalRecords.html'>ExtensionPartialDateTimeVitalRecords</a> </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-date-month-vr.html'>ExtensionDateMonthVitalRecords</a> </td><td>  Deleted  </td><td> No longer used in date/time extensions </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/StructureDefinition-Extension-date-year-vr.html'>ExtensionDateYearVitalRecords</a> </td><td>  Deleted  </td><td> No longer used in date/time extensions </td></tr>
</tbody>
</table>


### Removed Valuesets

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Current Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-apgar-timing-vr.html'>ValueSetApgarTimingVitalRecords</a> </td><td>  <a href='http://build.fhir.org/ig/HL7/fhir-bfdr/ValueSet-ValueSet-apgar-timing.html'>BFDR</a>    </td><td> Only relevant to birth use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-certifier-types-vr.html'>ValueSetCertifierTypesVitalRecords</a> </td><td>   <a href='https://build.fhir.org/ig/HL7/vrdr/ValueSet-vrdr-certifier-types-vs.html'>VRDR</a>    </td><td> Only relevant to mortality use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-contributory-tobacco-use-vr.html'>ValueSetContributoryTobaccoUseVitalRecords</a> </td><td> <a href='https://build.fhir.org/ig/HL7/vrdr/ValueSet-vrdr-contributory-tobacco-use-vs.html'>VRDR</a>     </td><td> Only relevant to mortality use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-date-establishment-approach-vr.html'>ValueSetDateEstablishmentApproachVitalRecords</a> </td><td> <a href='https://build.fhir.org/ig/HL7/vrdr/ValueSet-vrdr-date-of-death-determination-methods-vs.html'>VRDR</a>   </td><td> Only relevant to mortality use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-death-pregnancy-status-vr.html'>ValueSetDeathPregnancyStatusVitalRecords</a> </td><td>  <a href='https://build.fhir.org/ig/HL7/vrdr/ValueSet-vrdr-pregnancy-status-vs.html'>VRDR</a>    </td><td> Only relevant to mortality use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-intentional-reject-vr.html'>ValueSetIntentionalRejectVitalRecords</a> </td><td>  <a href='https://build.fhir.org/ig/HL7/vrdr/ValueSet-vrdr-intentional-reject-vs.html'>VRDR</a>   </td><td> Only relevant to mortality use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-manner-of-death-vr.html'>ValueSetMannerOfDeathVitalRecords</a> </td><td>  <a href='https://build.fhir.org/ig/HL7/vrdr/ValueSet-vrdr-manner-of-death-vs.html'>VRDR</a>    </td><td> Only relevant to mortality use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-place-of-death-vr.html'>ValueSetPlaceOfDeathVitalRecords</a> </td><td>  <a href='https://build.fhir.org/ig/HL7/vrdr/ValueSet-vrdr-place-of-death-vs.html'>VRDR</a>   </td><td> Only relevant to mortality use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-system-reject-vr.html'>ValueSetSystemRejectVitalRecords</a> </td><td>  <a href='https://build.fhir.org/ig/HL7/vrdr/ValueSet-vrdr-system-reject-vs.html'>VRDR</a>   </td><td> Only relevant to mortality use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-transax-conversion-vr.html'>ValueSetTransaxConversionVitalRecords</a> </td><td>  <a href='https://build.fhir.org/ig/HL7/vrdr/ValueSet-vrdr-transax-conversion-vs.html'>VRDR</a>   </td><td> Only relevant to mortality use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/ValueSet-ValueSet-transportation-incident-role-vr.html'>ValueSetTransportationIncidentRoleVitalRecords</a> </td><td>  <a href='https://build.fhir.org/ig/HL7/vrdr/ValueSet-vrdr-transportation-incident-role-vs.html'>VRDR</a>     </td><td> Only relevant to mortality use case </td></tr>
</tbody>
</table>


### Removed Codesystems

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Current Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/CodeSystem-CodeSystem-death-pregnancy-status-vr.html'>CodeSystemDeathPregnancyStatusVitalRecords</a></td><td>  <a href='https://build.fhir.org/ig/HL7/vrdr/CodeSystem-CodeSystem-death-pregnancy-status.html'>VRDR</a>  </td><td> Only relevant to mortality use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/CodeSystem-CodeSystem-death-reporting-codes-vr.html'>CodeSystemDeathReportingCodesVitalRecords</a> </td><td><a href='https://build.fhir.org/ig/HL7/fhir-mdi-ig/CodeSystem-CodeSystem-vr-codes.html'>MDI</a>   </td><td> Only relevant to death investigation use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/CodeSystem-CodeSystem-intentional-reject-vr.html'>IntentionalRejectCS</a> </td><td>  <a href='https://build.fhir.org/ig/HL7/vrdr/CodeSystem-vrdr-intentional-reject-cs.html'>VRDR</a>   </td><td> Only relevant to mortality use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/CodeSystem-CodeSystem-local-component-codes-vr.html'>CodeSystemLocalComponentCodesVitalRecords</a> </td><td>  <a href='https://build.fhir.org/ig/HL7/vrdr/CodeSystem-vrdr-observations-cs.html'>VRDR</a>  </td><td> Only relevant to mortality use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/CodeSystem-CodeSystem-system-reject-vr.html'>CodeSystemSystemRejectVitalRecords</a> </td><td>  <a href='https://build.fhir.org/ig/HL7/vrdr/CodeSystem-vrdr-system-reject-cs.html'>VRDR</a> </td><td> Only relevant to mortality use case </td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vr-common-library/STU1.1/CodeSystem-CodeSystem-transax-conversion-vr.html'>CodeSystemTransaxConversionVitalRecords</a> </td><td><a href='https://build.fhir.org/ig/HL7/vrdr/CodeSystem-vrdr-transax-conversion-cs.html'>VRDR</a> </td><td> Only relevant to mortality use case </td></tr>
</tbody>
</table>
