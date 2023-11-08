Profile: PatientVitalRecords
Parent: USCorePatientProfile
Id: Patient-vr
Title: "Patient - Vital Records"
Description: "This abstract Patient profile includes common extensions and slicing used across vital records."
* ^abstract = true 
* extension contains $patient-birthPlace named birthPlace 0..1 
* extension[birthPlace] ^short = "Place of Birth for the patient should include the state and/or country"
* extension[birthPlace].valueAddress
  * country from ValueSetBirthplaceCountryVitalRecords (required)    // BPLACE_CNT
  * state from ValueSetStatesTerritoriesAndProvincesVitalRecords (required) // BPLACE_ST
  * district.extension contains
       DistrictCode named districtCode 0..1
  * district.extension[districtCode] ^label = "County code"
  * district.extension[districtCode] ^short = "County code"
  * city.extension contains
      CityCode named cityCode 0..1
// Add usage note that codes are from: https://ftp.cdc.gov/pub/health_Statistics/nchs/Manuals/Mortality/PLACE_CODES.txt and
  * district.extension[districtCode] ^definition = "Numeric code in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf) and https://ftp.cdc.gov/pub/health_Statistics/nchs/Manuals/Mortality/PLACE_CODES.txt."
  * city.extension[cityCode] ^definition = "Numeric code in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf) and https://ftp.cdc.gov/pub/health_Statistics/nchs/Manuals/Mortality/PLACE_CODES.txt."

* identifier ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "type"
  * ^slicing.description = "Slice based on ID type"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
* identifier contains
    MRN 0..*  and
    SSN 0..1 
* identifier[MRN] ^short = "Medical Record Number"
  * type = $v2-0203#MR
* identifier[SSN] ^short = "SSN if available and appropriate to send"
  * type = $v2-0203#SS
  * system = $ssn
* name 
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "use"
  * ^slicing.rules = #open
* name contains
    currentLegalName 0..1  and
    namePriorToFirstMarriage 0..1 
* name[currentLegalName] 
  * ^short = "current legal name"
  * use = #official (exactly)
* name[namePriorToFirstMarriage]
  * use = #maiden (exactly)
  * ^short = "Name prior to first marriage"
* name 
  * use 1..1 
  * family 1..
    * ^short = "When child not named use code \"unknown\""
    * extension ^slicing.discriminator.type = #value
      * ^slicing.discriminator.path = "url"
      * ^slicing.rules = #open
    * extension contains $data-absent-reason named dataAbsentReason 0..1 
  * given ^short = "When child not named use code \"unknown\""
    * extension ^slicing.discriminator.type = #value
      * ^slicing.discriminator.path = "url"
      * ^slicing.rules = #open
    * extension contains $data-absent-reason named dataAbsentReason 0..1 

* birthDate.extension contains
    ExtensionPartialDateVitalRecords named partialDate 0..1 and
    //PartialDate named partialDate 0..1 and
    ExtensionDatePartAbsentReasonVitalRecords named datePartAbsentReason 0..*  and
    $patient-birthTime named birthTime 0..1 and
    BypassEditFlag named bypassEditFlag 0..1
* birthDate.extension[datePartAbsentReason] ^short = "Indicates reason for missing data on either the birthDate or the birthTime."
* birthDate.extension[datePartAbsentReason] ^definition = "Indicates reason for missing data on either the birthDate or the birthTime."
* birthDate.extension[partialDate] ^short = "partialDate"
* birthDate.extension[partialDate] ^definition = "Alternative component representation of partial date."
* birthDate.extension[bypassEditFlag]
  * valueCodeableConcept from ValueSetMothersDateOfBirthEditFlagsVitalRecords (required)
  * value[x] only CodeableConcept
    * ^short = "To reflect the relevant edit possibilities for date of birth."
    * ^binding.description = "Date of Birth Edit Flags (NCHS)"
* address
  * country from ValueSetResidenceCountryVitalRecords (required)  // COUNTRYC
  * state from ValueSetStatesTerritoriesAndProvincesVitalRecords (required)  // STATEC
  * extension contains ExtensionWithinCityLimitsIndicatorVitalRecords named withinCityLimitsIndicator 0..1 MS
  * extension[withinCityLimitsIndicator] ^short = "Used to indicate whether or not an address is within city limits."
  * extension[withinCityLimitsIndicator] ^definition = "Used to indicate whether or not an address is within city limits."
* insert CityCode
* insert CountyCode
* insert AddressComponents


