
# Current Profiles
| Name         | Previous IG  |  Current IG      | Comments/Updates  |
| :----------: | -----------  |  -----------     | :---------------: |
| [PatientVitalRecords] | - | [VRCL][PatientVitalRecords] | Serves as an abstract profile (parent to [PatientChildVitalRecords], [PatientDecedentFetusVitalRecords], [PatientMotherVitalRecords], and [Decedent]) |
| [PatientChildVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Patient-child-vr.html) | [VRCL]([PatientChildVitalRecords]) | Now inherits from [PatientVitalRecords] rather than [USCorePatientProfile], removed slices for identifier, added bypassedit flag to multiplebirth, birthTime, dataAbsentReason, partialDate no longer extensions  |
{: .grid }

# Current Extensions
| Name         | Previous IG  |  Current IG      | Comments/Updates  |
| :----------: | -----------  |  -----------     | :---------------: |
| [ExtensionWithinCityLimitsIndicatorVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Extension-within-city-limits-indicator-vr.html)  |  [VRCL](http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Extension-within-city-limits-indicator-vr.html)    | changed to reference VRCL, rather than phinvads valueset |
{: .grid }

# Current Valuesets
| Name         | Previous IG  |  Current IG      | Comments/Updates  |
| :----------: | -----------  |  -----------     | :---------------: |
| [ValueSetHispanicOriginVitalRecords] | [VRDR](https://build.fhir.org/ig/HL7/vrdr/ValueSet-vrdr-hispanic-origin-vs.html) | [VRCL](http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-hispanic-origin-vr.html) | renamed to [ValueSetHispanicOriginVitalRecords] | 
{: .grid }

# Removed Profiles
| Name         | Previous IG  |  Current IG      | Comments/Updates  |
| :----------: | -----------  |  -----------     | :---------------: |
| [ConditionEclampsiaHypertension] | [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Condition-eclampsia-hypertension-vr.html) | [BFDR](placeholder.html) | renamed to [ConditionEclampsiaHypertension] | 
| [LocationInjuryVitalRecords] | [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Location-injury-vr.html) | [VRDR](placeholder.html) | only used for death use case, so omitted from VRCL | 
{: .grid }

# Removed Extensions
| Name         | Previous IG  |  Current IG      | Comments/Updates  |
| :----------: | -----------  |  -----------     | :---------------: |
{: .grid }

# Removed Valuesets
| Name         | Previous IG  |  Current IG      | Comments/Updates  |
| :----------: | -----------  |  -----------     | :---------------: |
| [ValueSetApgarTimingVitalRecords](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Observation-apgar-score-vr.html) |  [VRCL](http://hl7.org/fhir/us/vr-common-library/StructureDefinition-Observation-apgar-score-vr.html) |  [BFDR](placeholder.html)    | Moved to Birth and Fetal Death Reporting IG |
{: .grid }


{% include markdown-link-references.md %}