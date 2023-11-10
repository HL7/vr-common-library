### FHIR Paradigm

The Vital Records Common Profiles Library defines data structures, but does not define any data exchange mechanisms ("paradigms"), such as Documents, Messages, or Services. Nor does is define a RESTful API. Those are defined by the use case specific FHIR IGs, ass appropriate.
For more information on these aspects of FHIR, please refer to the [FHIR Exchange Module](https://hl7.org/fhir/R4/exchange-module.html).

### Profiles and Extensions

To claim conformance to a Vital Records Common Profiles Library, servers SHALL be able to populate all profile data elements that have a minimum cardinality >= 1 and/or flagged as Must Support as defined by that profile’s StructureDefinition. 

### General Guidance

This section outlines important definitions, interpretations, and requirements common to this guide. The conformance verbs - SHALL, SHOULD, MAY - used in this guide are defined in [FHIR Conformance Rules](https://hl7.org/fhir/R4/conformance-rules.html).

#### US Core

This IG relies on the US Core specification (STU 5, v5.0.1) where possible. If a US Core profile does not exist for a required concept, then other resources are referenced instead.

See [US Core Implementation Guide](http://hl7.org/fhir/us/core/STU5.0.1/) for more information.

#### Must Support

For querying and reading profiles in this IG, Must Support on any profile data element SHALL be interpreted as follows:

* Sources SHALL be capable of populating all data elements as part of the query results.
* Consumers SHALL be capable of processing resource instances containing the data elements without generating an error or causing the application to fail. In other words Consumers SHOULD be capable of displaying the data elements for human use or storing it for other purposes.
* When querying Sources, Consumers SHALL interpret missing data elements within resource instances as data not present in the Sources’s system.
* In situations where information on a particular data element is missing and the Source knows the precise reason for the absence of data, Sources SHALL send the reason for the missing information using values (such as nullFlavors) from the value set where they exist or using the dataAbsentReason extension.
* Consumers SHALL be able to process resource instances containing data elements asserting missing information.