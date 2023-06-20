### Overview

This guide is a FHIR Resources Library to support the needs of multiple vital records implementation guides (IGs). It does not provide any use case (scenario) specific content or additional guidance on how to use these artifacts, but serves as a source for a standard set of profiles for reuse in multiple use case specific IGs focusing on the exchange of vital records information. Implementation details such as how and when to use a given artifact will be supplied in these guides.

### Background
Two FHIR IG projects, [Birth Defects](https://www.hl7.org/special/Committees/projman/searchableProjectIndex.cfm?action=edit&ProjectNumber=1532) and [Birth and Fetal Death Reporting](http://hl7.org/fhir/us/bfdr/), share many common data elements or concepts. The initial scope of this Vital Records Common Profiles Library included data elements common to these two FHIR projects in a US Realm framework. The current update adds data elements shared by another vital records FHIR IG, [Vital Records Death Reporting (VRDR)](http://hl7.org/fhir/us/vrdr/), and the [Medicolegal Death Investigation (MDI)](http://hl7.org/fhir/us/mdi/).

A FHIR common profiles library avoids defining the same data element multiple times across IGs, instead allowing them to be referenced by each IG. This profile library will provide a standard framework for vital records information to support interoperability among public health systems and reduce provider and implementer burden. This FHIR implementation guide uses the US Core profiles. Where this FHIR implementation guide is unable to use a US Core profile, we have followed the Cross-Group Projects Work Group's variance request process and have provided the US Realm Steering Committee an approved rationale for deviation in the implementation guide.

For Clinical Safety Information please refer to the [FHIR Implementer’s Safety Checklist](http://hl7.org/fhir/safety.html).

### How to Read This Guide
This Guide is divided into several pages which are listed at the top of each page in the menu bar.

* Home: The home page provides the introduction and background for HL7 FHIR® Vital Records Common Profiles Library.
* Terminology: This page provides a listing of the value sets used in this guide.
* Downloads: This page provides links to downloadable artifacts.
* Change Log: This page provides details of changes made in each version of this IG.
* Artifact Index: This page provides a list of the FHIR artifacts (profiles, examples, and value sets) defined as part of this guide.



### Authors

<table>
<thead>
<tr>
<th>Name</th>
<th>Email/URL</th>
</tr>
</thead>
<tbody>
<tr>
<td>HL7 International - Public Health</td>
<td><a href="http://www.hl7.org/Special/committees/pher" target="_new">http://www.hl7.org/Special/committees/pher</a></td>
</tr>
</tbody>
</table>


