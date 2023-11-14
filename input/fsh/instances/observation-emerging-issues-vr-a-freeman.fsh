Instance: observation-emerging-issues-vr-a-freeman
InstanceOf: ObservationEmergingIssuesVitalRecords
Title: "Observation - EmergingIssues example [A Freeman]"
Description: "Example of Observation-emerging-issues-vr profile (A Freeman)"
Usage: #example
* subject = Reference(us-core-patient-vr-a-freeman)
* status = #final
* insert AddMetaProfile(ObservationEmergingIssuesVitalRecords)
* component[EmergingIssue1_1].valueString = "H"
* component[EmergingIssue1_2].valueString = "I"
* component[EmergingIssue8_1].valueString = "Hi 8_1"
* component[EmergingIssue20].valueString = "Hi 20_1"