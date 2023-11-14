Instance: observation-parent-education-level-vr-carmen-teresa-lee
InstanceOf: ObservationParentEducationLevelVitalRecords
Title: "Observation - Parent Education Level example [Carmen Teresa Lee]"
Description: "Example of Observation-parent-education-level-vr (Carmen Teresa Lee)"
Usage: #example
* status = #final
* code = $loinc#57712-2 "Highest level of education Mother"
* subject = Reference(patient-decedent-fetus-not-named) "Patient - Decedent Fetus (Fetus Not Named)"
* focus = Reference(relatedperson-mother-gestational-carmen-teresa-lee-common) "Patient - Mother (Carmen Teresa Lee)"
* effectiveDateTime = "2019-12-02"
* performer = Reference(relatedperson-mother-gestational-carmen-teresa-lee-common)
* valueCodeableConcept = $HL7_EducationLevelCS#SEC "Some secondary or high school education"
  * text = "9th through 12th grade; no diploma"
