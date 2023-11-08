Instance: observation-autopsy-performed-not-named-common
InstanceOf: ObservationAutopsyPerformedIndicatorVitalRecords
Title: "Observation - Autopsy Performed example [Fetus Not Named]"
Description: "Example of Observation-autopsy-performed-vr profile (Fetus Not Named)"
Usage: #example
* status = #final
//* code = $loinc#73768-4 "Autopsy was performed [US Standard Report of Fetal Death]"
* subject = Reference(patient-decedent-fetus-not-named)
* effectiveDateTime = "2019-12-02"
* focus = Reference(Practitioner/practitioner-vital-records-janet-seito)
* valueCodeableConcept = $v2-0136#N "No" // $sct#719828003 "Autopsy not done"