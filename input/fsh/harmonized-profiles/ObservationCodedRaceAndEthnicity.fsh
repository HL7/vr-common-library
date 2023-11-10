Profile: ObservationCodedRaceAndEthnicityVitalRecords
Parent: Observation
Id: coded-race-and-ethnicity-vr
Title: "Observation - Coded Race and Ethnicity Vital Records"
Description: "Coded (from NCHS) Race and Ethnicity (Observation). This is information that is coded by NCHS and sent back to jurisdictions, and will not be processed if submitted to NCHS by jurisdictions.

This profile is only for use in a Vital Records Exchange. Systems looking to exchange this observation more broadly should reference US Core.

Note:  NCHS stopped providing RaceRecode40 data in 2022.

Submission of race and ethnicity data and return of coded race and ethnicity is done with a uniform approach across all vital records use cases.
The formats for Fetal Race and Ethnicity (FRE), Mortality Race and Ethnicity(MRE), and Natality Race and Ethnicity (NRE) are described
in [NCHS Procedures for Multiple-Race and Hispanic Origin Coding](https://www.cdc.gov/nchs/data/dvs/multiple_race_documentation_5-10-04.pdf)."
* code from ValueSetCodedRaceAndEthnicityPersonVitalRecords (required) //  code = ObservationsCS#codedraceandethnicity
* value[x] 0..0
* insert SubjectRelatedPattern
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
// * insert NCHSObservationCommon
* insert obscodecomponent(FirstEditedCode,ValueSetRaceCodeVitalRecords) // First through eighth edited codes
* insert obscodecomponent(SecondEditedCode,ValueSetRaceCodeVitalRecords)
* insert obscodecomponent(ThirdEditedCode,ValueSetRaceCodeVitalRecords)
* insert obscodecomponent(FourthEditedCode,ValueSetRaceCodeVitalRecords)
* insert obscodecomponent(FifthEditedCode,ValueSetRaceCodeVitalRecords)
* insert obscodecomponent(SixthEditedCode,ValueSetRaceCodeVitalRecords)
* insert obscodecomponent(SeventhEditedCode,ValueSetRaceCodeVitalRecords)
* insert obscodecomponent(EighthEditedCode,ValueSetRaceCodeVitalRecords)
* insert obscodecomponent(FirstAmericanIndianCode,ValueSetRaceCodeVitalRecords)
* insert obscodecomponent(SecondAmericanIndianCode,ValueSetRaceCodeVitalRecords)
* insert obscodecomponent(FirstOtherAsianCode,ValueSetRaceCodeVitalRecords)
* insert obscodecomponent(SecondOtherAsianCode,ValueSetRaceCodeVitalRecords)
* insert obscodecomponent(FirstOtherPacificIslanderCode,ValueSetRaceCodeVitalRecords)
* insert obscodecomponent(SecondOtherPacificIslanderCode,ValueSetRaceCodeVitalRecords)
* insert obscodecomponent(FirstOtherRaceCode,ValueSetRaceCodeVitalRecords)
* insert obscodecomponent(SecondOtherRaceCode,ValueSetRaceCodeVitalRecords)
* insert obscodecomponent(RaceRecode40,ValueSetRaceRecode40VitalRecords)
* insert obscodecomponent(HispanicCode,ValueSetHispanicOriginVitalRecords)
* insert obscodecomponent(HispanicCodeForLiteral,ValueSetHispanicOriginVitalRecords)
