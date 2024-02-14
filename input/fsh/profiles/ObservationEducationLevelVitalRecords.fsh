/*
DeathRecord:    subject = Decedent (Patient)
Birth:   subject = Child (Patient),   focus = Mother (Patient) or NaturalFather (RelatedPerson) 
Fetal Death:  subject = Fetus (Patient), focus = Mother (Patient) or NaturalFather (RelatedPerson) 

These are the same, except for the code on the Observation.  
The VitalRecords version uses a valueset that includes Mother and Father's education level. If the Decedent education level code was added in, all would be well... The valueset from VRDR will do the trick.
VRCL has a subject and focus. 

VRDR has no MS flags. VRDR has bypassEditFlag extension, VRCL does not. 
*/

Profile: ObservationEducationLevelVitalRecords
Parent: Observation
Id: Observation-education-level-vr
Title: "Observation - Education Level Vital Records"
Description: "The highest degree or level of schooling completed by the decedent or parent. 
This profile is designed to supplant similar profile in VRDR"
* code from ValueSetEducationLevelPersonVitalRecords (required) //created new valueset to include code for decedent's highest level of education, 80913-7
  * ^short = "Persons for whom education level can be reported."
  * ^binding.description = "EducationLevelPerson"
* subject 1..1
* insert SubjectRelatedPattern
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from ValueSetEducationLevelVitalRecords (required) // use VRDR valueset
  * ^short = "The collection of education levels used for vital records reporting."
  * ^binding.description = "Vital Records Education Level (NCHS)"
* value[x].extension contains
    BypassEditFlag named bypassEditFlag 0..1
* value[x].extension[bypassEditFlag].value[x] from ValueSetEditBypass01234VitalRecords (required)
* value[x].extension[bypassEditFlag].value[x] only CodeableConcept