### Overview

### Description

This guide is a Fast Healthcare Interoperability Resources (FHIR) Profiles Library to support the needs of multiple vital records implementation guides (IGs). It does not provide any use case (scenario) specific content or additional guidance on how to use these artifacts, but serves as a source for a standard set of profiles for reuse in multiple use case specific IGs focusing on the exchange of vital records information. Implementation details such as how and when to use a given artifact will be supplied in these guides.

### Background
Two FHIR IG projects, [Birth Defects](https://www.hl7.org/special/Committees/projman/searchableProjectIndex.cfm?action=edit&ProjectNumber=1532) and [Birth and Fetal Death Reporting](http://hl7.org/fhir/us/bfdr/), share many common data elements or concepts. The initial scope of this Vital Records Common Profiles Library included data elements common to these two FHIR projects in a US Realm framework. The current update adds data elements shared by two other vital records FHIR IGs, [Vital Records Death Reporting (VRDR)](http://hl7.org/fhir/us/vrdr/), and the [Medicolegal Death Investigation (MDI)](http://hl7.org/fhir/us/mdi/).

Many of the data elements in the vital records IGs (BFDR, VRDR, and this Library) can be identified using the IJE (Inter-Jurisdictional Exchange) data element names (codes). The IJE codes are used for exchange of data among jurisdictions and with authorized data partners, such as NCHS. NCHS has implemented IJE codes for exchange of mortality data with jurisdictions via the VRDR IG, however, the use of IJE codes has not yet been implemented for birth and fetal death reporting to NCHS. [FHIR profile mappings to the IJE format are available for Mortality, Natality, and Fetal Death.](https://github.com/HL7/vr-common-library/raw/master/input/mapping/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.xlsx) The mappings are based on information from: 
 * [200X NCHS Mortality - Demographic File Description](https://www.cdc.gov/nchs/data/dvs/200XMOR_web_with%20clearance%20revisions-acc.pdf)
 * [200X NCHS Natality File Description](https://www.cdc.gov/nchs/data/dvs/200XNAT_web_with%20clearance%20revisions-acc.pdf)
 * [200X NCHS Fetal Death File Description](https://www.cdc.gov/nchs/data/dvs/200XFET_web_with%20clearance%20revisions-acc.pdf)

A FHIR common profiles library avoids defining the same data element multiple times across IGs by allowing each IG to reference them. This profile library will provide a standard framework for vital records information to support interoperability among public health systems and reduce provider and implementer burden. This FHIR IG uses US Core profiles. Where unable to use a US Core profile, we have followed the Cross-Group Projects Work Group's variance request process and have provided the US Realm Steering Committee an approved rationale for deviation in the IG.

For Clinical Safety Information please refer to the [FHIR Implementer’s Safety Checklist](http://hl7.org/fhir/safety.html).

### How to Read This Guide
This Guide is divided into several pages which are listed at the top of each page in the menu bar.

* Home: The introduction and background for HL7® FHIR® Vital Records Common Profiles Library
* [Terminology](terminology.html): A listing of the value sets used in this guide
* [Downloads](downloads.html): Links to downloadable artifacts
* [Change Log](change_log.html): Details of changes made in each version of this IG
* [Artifact Index](artifacts.html): A list of the defined FHIR artifacts (profiles, examples, and value sets) in this guide



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


