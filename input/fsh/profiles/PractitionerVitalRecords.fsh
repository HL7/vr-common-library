Profile: PractitionerVitalRecords
Parent: USCorePractitionerProfile
Id: Practitioner-vr
Title: "Practitioner - Vital Records"
Description: "This Practitioner profile represents a practitioner who is involved in vital records (births, fetal death, death, etc.) as a certifier or an attendant. This profile is based on the US Core Practitioner and adds a further constraint to capture the title of the practitioner."
* insert RequireMetaProfile(Profile: PractitionerVitalRecords)
// PractitionerVitalRecords uses the qualification field to differentiate between different 'attendees at birth', which iMHO is incorrect. This information would be better passed in the performer.function of some procedure/encounter relating to the birth. That would make it consistent with the way VRDR did it, and 
// it could be used for Certifier as well with appropriate constraining of the value set used for performer.function. See https://jira.hl7.org/browse/FHIR-41780
* name 1..1
* name ^short = "name"
  * text ^short = "name"
* address ^short = "address"
* address.city ^short = "city"
* address.district ^short = "county"
* address.postalCode ^short = "zip"
* insert CityCode
* insert CountyCode
* insert AddressComponents
* address.country from ValueSetResidenceCountryVitalRecords (required)
* address.state from ValueSetStatesTerritoriesAndProvincesVitalRecords (required)
* identifier[NPI] ^short = "Practitioner's NPI Number"
* qualification ^short = "Practitioner's certification, licenses, or training pertaining to the provision of care"

