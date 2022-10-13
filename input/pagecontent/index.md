### Overview

The purpose of this project is to create an HL7 Fast Healthcare Interoperability Resources (FHIR) Library standard to support the needs of multiple Vital Records Implementation Guides.

This guide is a FHIR Resources (FHIR) Library to support the needs of multiple Vital Records Implementation Guides. It does not provide any use case or scenario specific content or additional guidance on how to use these artifacts, but serves as a source for a standard set of profiles for reuse in multiple use case specific implementation guides focusing on the exchange of Vital Records information. Implementation details such as how and when to use a given artifact will be supplied in these guides.

### Background
After evaluation and analysis of two separate FHIR IG projects - [Birth Defects Reporting](https://build.fhir.org/ig/HL7/fhir-birthdefectsreporting-ig/) and [Birth and Fetal Death Reporting](http://hl7.org/fhir/us/bfdr/), it was determined that there are many common data elements between the two IGs. The short-term scope of this common profiles library will include data elements common to the above-mentioned FHIR IGs and will define a US Realm specific framework that defines common elements for the implementation guides. The longer-term scope of this profiles library will include analysis and possible inclusion of data elements from other Vital Records projects (such as [Vital Records Mortality and Morbidity Reporting FHIR IG](http://hl7.org/fhir/us/vrdr/)).

To avoid defining the same profiles multiple times, this IG contains a US Realm focused profile library for use by Vital Records and other FHIR standards development efforts to define the appropriate FHIR profiles, value sets, etc., once and allow them to be referenced by each of the specific implementation guides. This profile library will provide a standard framework for inclusion in multiple use case specific implementation guides focused on the exchange of Vital Records information to support interoperability among public health systems and reduce provider and implementer burden. This FHIR implementation guide uses the US Core profiles. Where this FHIR implementation guide is unable to use a US Core profile, we have followed the Cross-Group Projects Work Group's variance request process and have provided the US Realm Steering Committee an approved rationale for deviation in the implementation guide.

For Clinical Safety Information please refer to the [FHIR Implementer’s Safety Checklist](http://hl7.org/fhir/safety.html).

### How to Read This Guide

This Guide is divided into several pages which are listed at the top of each page in the menu bar.

* Home: The home page provides the introduction and background for HL7 FHIR® Vital Records Common Profiles Library.
* Terminology: This page provides a listing of the value sets used in this guide.
* Downloads: This page provides links to downloadable artifacts.
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


