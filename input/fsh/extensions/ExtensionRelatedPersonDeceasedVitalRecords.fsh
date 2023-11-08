Extension: ExtensionRelatedPersonDeceasedVitalRecords
Id: Extension-relatedperson-deceased-vr
Title: "Extension - RelatedPerson Deceased Vital Records"
Description: "The deceased indicator for a RelatedPerson. Deceased date/time is preferred."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2022-10-12T22:12:55.189+00:00"
* ^meta.source = "#RV6iydLDg1moEhmg"
* ^contact.name = "HL7 International - Public Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* value[x] 1..
* value[x] only boolean or dateTime