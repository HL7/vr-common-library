Profile: ObservationCodedRaceAndEthnicityVitalRecords
Parent: Observation
Id: coded-race-and-ethnicity-vr
Title: "Observation - Coded Race and Ethnicity Vital Records"
Description: "Coded (from NCHS) Race and Ethnicity (Observation). 
This is information that is coded by NCHS and sent back to jurisdictions."
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
