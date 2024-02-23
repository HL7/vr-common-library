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
  * state from ValueSetStatesTerritoriesAndProvincesVitalRecords  (required)  // BPLACE_ST / BSTATE
  * state ^short = "State/Jurisdiction of birth.  Provide only for US or Canadian states/provinces/territories. Use value in Jurisdiction if present."
  * state.extension contains
    ExtensionLocationJurisdictionIdVitalRecords named nationalReportingJurisdictionId 0..1  // jurisdiction_id
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
//  * use 1..1 
  * family // 1..
    * extension ^slicing.discriminator.type = #value
      * ^slicing.discriminator.path = "url"
      * ^slicing.rules = #open
    * extension contains $data-absent-reason named dataAbsentReason 0..1 
  * given 
    * extension ^slicing.discriminator.type = #value
      * ^slicing.discriminator.path = "url"
      * ^slicing.rules = #open
    * extension contains $data-absent-reason named dataAbsentReason 0..1 

* birthDate.extension contains
    ExtensionPartialDateTimeVitalRecords named partialDateTime 0..1 and
    $patient-birthTime named birthTime 0..1 and
    BypassEditFlag named bypassEditFlag 0..1
* birthDate.extension[partialDateTime] ^short = "partialDateTIme"
* birthDate.extension[partialDateTime] ^definition = "Alternative component representation of partial date and time. See [note on birth date and time]."
* birthDate.extension[bypassEditFlag]
  * valueCodeableConcept from ValueSetDateOfBirthEditFlagsVitalRecords (required)
  * value[x] only CodeableConcept
    * ^short = "To reflect the relevant edit possibilities for date of birth."
    * ^binding.description = "Date of Birth Edit Flags (NCHS)"
* address
  * country from ValueSetResidenceCountryVitalRecords (required)  // COUNTRYC
  * state from ValueSetStatesTerritoriesAndProvincesVitalRecords (required)  // STATEC
  * extension contains ExtensionWithinCityLimitsIndicatorVitalRecords named withinCityLimitsIndicator 0..1 
  * extension[withinCityLimitsIndicator] ^short = "Used to indicate whether or not an address is within city limits."
  * extension[withinCityLimitsIndicator] ^definition = "Used to indicate whether or not an address is within city limits."
* insert CityCode
* insert CountyCode
* insert AddressComponents
* extension contains ExtensionReportedParentAgeAtDeliveryVitalRecords named parentReportedAgeAtDelivery 0..2
* insert multipleBirths
* deceasedBoolean.extension contains ExtensionPatientFetalDeathVitalRecords named fetalDeath 0..1 
* deceasedBoolean ^short = "Boolean indicator. True if the individual is deceased."
* deceasedBoolean.extension[fetalDeath] ^short = "Boolean indicator. True if the Patient died as a fetus."
* deceasedBoolean obeys fetalDeathOnlyIfDeceased


Invariant: fetalDeathOnlyIfDeceased
Description: "Fetal death should only be indicated if Patient is deceased."
Severity: #error
* expression = 
     "(extension.where(url = 'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-patient-fetal-death-vr').exists(value.exists() and value = 'true'))
   implies
      (value.exists() and
      value = 'true')"

      // extension.where(url = 'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-patient-fetal-death-vr').value.exists() and
      // extension.where(url = 'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-patient-fetal-death-vr').value = 'true')
RuleSet: multipleBirths
* multipleBirth[x] 
  * ^short = "If not single birth - born first, second, third, etc."
  * ^definition = "If not single birth, specify born 1st, 2nd, etc. – For multiple deliveries, the order this infant was delivered in the set. Include all live births and fetal losses."
// Add Edit Flags, a la VRDR 
* multipleBirth[x].extension contains
    BypassEditFlag named bypassEditFlag 0..1 and
    PatMultipleBirthTotal named multipleBirthTotal 0..1 
* multipleBirth[x].extension[bypassEditFlag]
  * value[x] from ValueSetPluralityEditFlagsVitalRecords (required)
  * value[x] only CodeableConcept
    * ^binding.description = "Plurality Edit Flags (NCHS)"
* multipleBirth[x].extension[multipleBirthTotal] 
  * ^definition = "Where a patient is a part of a multiple delivery, this is the total number of deliveries that occurred in this pregnancy." 




