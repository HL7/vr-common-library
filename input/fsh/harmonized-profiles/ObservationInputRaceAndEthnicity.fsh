Profile: ObservationInputRaceAndEthnicityVitalRecords
Parent: Observation
Id: input-race-and-ethnicity-vr
Title: "Observation - Input Race and Ethnicity Vital Records"
Description: "Input (from EDRS or EBRS) Race and Ethnicity (Observation). This is information collected by jurisdictions and submitted to NCHS.

This profile is only for use in a Vital Records Exchange. Systems looking to exchange this observation more broadly should reference US Core.

Submission of race and ethnicity data and return of coded race and ethnicity is done with a uniform approach across all vital records use cases.
The formats for Fetal Race and Ethnicity (FRE), Mortality Race and Ethnicity(MRE), and Natality Race and Ethnicity (NRE) are described
in [NCHS Procedures for Multiple-Race and Hispanic Origin Coding](https://www.cdc.gov/nchs/data/dvs/multiple_race_documentation_5-10-04.pdf)."
* code from ValueSetInputRaceAndEthnicityPersonVitalRecords (required) //  ObservationsCS#inputraceandethnicity
* value[x] 0..0
* insert SubjectRelatedPattern
* status only code
* status = #final (exactly)
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* insert primobscodecomponent(White,boolean)
* insert primobscodecomponent(BlackOrAfricanAmerican,boolean)
* insert primobscodecomponent(AmericanIndianOrAlaskanNative,boolean)
* insert primobscodecomponent(AsianIndian,boolean)
* insert primobscodecomponent(Chinese,boolean)
* insert primobscodecomponent(Filipino,boolean)
* insert primobscodecomponent(Japanese,boolean)
* insert primobscodecomponent(Korean,boolean)
* insert primobscodecomponent(Vietnamese,boolean)
* insert primobscodecomponent(OtherAsian,boolean)
* insert primobscodecomponent(NativeHawaiian,boolean)
* insert primobscodecomponent(GuamanianOrChamorro,boolean)
* insert primobscodecomponent(Samoan,boolean)
* insert primobscodecomponent(OtherPacificIslander,boolean)
* insert primobscodecomponent(OtherRace,boolean)
* insert primobscodecomponent(FirstAmericanIndianOrAlaskanNativeLiteral,string)
* insert primobscodecomponent(SecondAmericanIndianOrAlaskanNativeLiteral,string)
* insert primobscodecomponent(FirstOtherAsianLiteral,string)
* insert primobscodecomponent(SecondOtherAsianLiteral,string)
* insert primobscodecomponent(FirstOtherPacificIslanderLiteral,string)
* insert primobscodecomponent(SecondOtherPacificIslanderLiteral,string)
* insert primobscodecomponent(FirstOtherRaceLiteral,string)
* insert primobscodecomponent(SecondOtherRaceLiteral,string)
* insert obscodecomponent(RACEMVR,ValueSetRaceMissingValueReasonVitalRecords)
* insert obscodecomponent(HispanicMexican,ValueSetHispanicNoUnknownVitalRecords)
* insert obscodecomponent(HispanicPuertoRican,ValueSetHispanicNoUnknownVitalRecords)
* insert obscodecomponent(HispanicCuban,ValueSetHispanicNoUnknownVitalRecords)
* insert obscodecomponent(HispanicOther,ValueSetHispanicNoUnknownVitalRecords)
* insert primobscodecomponent(HispanicLiteral,string)
