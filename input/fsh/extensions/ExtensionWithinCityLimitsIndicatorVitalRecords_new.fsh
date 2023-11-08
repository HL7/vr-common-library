//changed to reference VRCL vs instead of phinvads vs
Extension: ExtensionWithinCityLimitsIndicatorVitalRecords
Id: Extension-within-city-limits-indicator-vr
Title: "Extension - Within City Limits Indicator Vital Records"
Description: "Used to indicate whether or not an address is within city limits. The content of the component shall be a value from the value set Yes No Unknown."
* ^context.type = #element
* ^context.expression = "Address"
* value[x] 1..1
* value[x] only Coding
* value[x] from ValueSetYesNoUnknownVitalRecords (required)
  * ^short = "Value set used to respond to any question that can be answered Yes, No, or Unknown."
  * ^binding.description = "Yes No Unknown (YNU)"