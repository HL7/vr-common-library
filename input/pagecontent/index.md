### Overview

This guide is a FHIR Resources (FHIR) Library to support the needs of multiple Vital Records Implementation Guides (IGs) as well as the needs of related IGs.
It does not provide any use case or scenario specific content or additional guidance on how to use these artifacts, but serves as a source for a standard set of profiles, extensions, codesystems and valuesets for reuse in multiple use case specific implementation guides focusing on the exchange of Vital Records information. Implementation details such as how and when to use a given artifact will be supplied in these guides.

### Background
The initial development of the STU1 version of this IG was motivated by the opportunity for reuse between the [Birth and Fetal Death Reporting (BFDR) ](http://hl7.org/fhir/us/bfdr/) and [Birth Defects Reporting (BDR)](https://build.fhir.org/ig/HL7/fhir-birthdefectsreporting-ig/) IGs. Following publication of STU1 versions of [BFDR](http://hl7.org/fhir/us/bfdr/) and [Medicolegal and Death Investigation (MDI)](https://hl7.org/fhir/us/mdi), an STU2 version of [Vital Records Death Reporting (VRDR) ](http://hl7.org/fhir/us/vrdr/), we have taken a broader view of reuse within these IGs as well as the anticipated needs of the as-yet unballoted [BDR](https://build.fhir.org/ig/HL7/fhir-birthdefectsreporting-ig/) to develop the STU2 content for this IG. This process is described in  [Vital Records IG Harmonization](https://hl7.org/fhir/us/vr-common-library/2024Jan/vr_ig_harmonization.html). 

Many of the profiles previously included to support BDR have been moved to the companion STU2 version of BFDR, and the content of this IG has been focused on FHIR resources that were redundantly defined across BFDR, VRDR and MDI, representing the vital records approach to common data elements.  VRDR is the most mature of the vital records related FHIR IGs, having already moved into production usage by several jurisdictions and NCHS, and some of the patterns for FHIR implementation that were defined in the VRDR IG have been incorporated in the STU2 version of VRCL, and its companion STU2 version of BFDR.   These patterns include definition of codesystems and valuesets within this IG, in lieu of reference to [Public Health Information Network Vocabulary Access and Distribution System (PHIN VADS)](https://phinvads.cdc.gov/vads/), support for "edit flags" within existing profiles, in lieu of additional companion Observation profiles, and standardized extensions for partial dates and times, and coded components of addresses.

This profile library will provide a standard framework for inclusion by reference in multiple use case specific IGs (i.e., BFDR, BDR, VRDR, MDI)  to support interoperability among public health systems and reduce provider and implementer burden, and to streamline maintenance of the IGs.

### How to Read This Guide

This Guide is divided into several pages which are listed at the top of each page in the menu bar.

* [Home](index.html): provides the introduction and background for this I
* [Artifacts](artifacts.html): provides a list of the FHIR artifacts (profiles, examples, and value sets) defined as part of this guide.
* [Specification](the_specification.html): provides general information about the FHIR specification
* [Usage](usage.html): provides notes that are referenced by resources in this IG, and their uses in other IGs.
* [Change Log](change_log.html): provides a change history
* [STU1.1 to STU2 Changes](content-transitions.html): shows the provenance of all resources included in the STU2 version of this IG, as well as all of the disposition of the resources no longer included in this IG.
* [Downloads](downloads.html): provides links to downloadable artifacts.

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

{% include markdown-link-references.md %}
