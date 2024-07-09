ValueSet: ValueSetMaritalStatusVitalRecords
Id: ValueSet-marital-status-vr
Title: "Marital Status Vital Records"
Description: "The set of codes used to indicate the marital status of the decedent

Note: 'Domestic Partnership' is not supported by NCHS and will be mapped to 'U' unknown

Mapping to IJE codes [here](ConceptMap-ConceptMapMaritalStatusVitalRecords.html)." 
* $v3-MaritalStatus#D "Divorced"
* $v3-MaritalStatus#L "Legally Separated"
* $v3-MaritalStatus#M "Married"
* $v3-MaritalStatus#S "Never Married"
* $v3-MaritalStatus#W "Widowed"
* $v3-MaritalStatus#T "Domestic Partner" // not currently supported by NCHS
* $v3-NullFlavor#UNK "unknown"
* ^experimental = false