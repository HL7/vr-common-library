ValueSet: ValueSetRaceMissingValueReasonVitalRecords
Id: ValueSet-race-missing-value-reason-vr
Title: "Value Set - Race Missing Value Reason Vital Records"
Description: "This valueset contains the set of codes used to indicate the reason decedent race data is absent.

Mapping to IJE codes [here](ConceptMap-ConceptMapRaceMissingValueReasonVitalRecords.html)."
* insert boilerplate
// * CodeSystemMissingValueReasonVitalRecords#R "Refused"
* $v3-ActReason#PREFUS "patient refuse" // "R = refused"
* $v3-NullFlavor#ASKU "asked but unknown" // "S = Sought, but unknown"
* $v3-NullFlavor#UNK "unknown"            // "N = Not obtainable"
* ^experimental = false