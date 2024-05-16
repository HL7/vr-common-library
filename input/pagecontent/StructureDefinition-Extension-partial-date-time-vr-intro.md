
If a component is missing, it is assumed unknown.
* This extension SHOULD NOT be used when the value can be expressed as a [dateTime](https://hl7.org/fhir/R4B/datatypes.html#dateTime), specifically YYYY, YYYY-MM, YYYY-MM-DD, or a full dateTime.
* This extension SHOULD NOT be used to express that the dateTime in its entirety is missing/unknown.  In this case a simple dataAbsent reason extension should be used on the dateTime.
* This extension SHOULD be used to express missing components of dateTime including XXXX-XX-DD, YYYY-XX-DD, YYYY-MM-XX, as well as all cases where the time is known, but one or more components of the date is unknown.
* If a component is missing, the interpretation should be equivalent to it being present, with a data absent reason of 'unknown'.  If the data absent reason is other than 'unknown', the component may be included wih a data absent reason.

When the known components of the date can be expressed as a valid dateTime, the value SHALL be present.  So, for example 2022-12-XX-1201212, the dateTime value should be \"2022-12\".
