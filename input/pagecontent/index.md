### Overview

The purpose of this project is to create an HL7 Fast Healthcare Interoperability Resources (FHIR) Library standard to support the needs of multiple Vital Records Implementation Guides.

After evaluation and analysis of two separate FHIR IG projects - [Birth Defects Reporting](https://build.fhir.org/ig/HL7/fhir-birthdefectsreporting-ig/) and [Birth and Fetal Death Reporting](http://build.fhir.org/ig/HL7/fhir-bfdr), it was determined that there are many common data elements between the two IGs. The short-term scope of this common profiles library will include data elements common to the above-mentioned FHIR IGs and will define a US Realm specific framework that defines common elements for the implementation guides. The longer-term scope of this profiles library will include analysis and possible inclusion of data elements from other Vital Records projects (such as [Vital Records Mortality and Morbidity Reporting FHIR IG](https://build.fhir.org/ig/HL7/vrdr/)).

To avoid defining the same profiles multiple times, we propose to create a US Realm focused profile library for use by Vital Records and other FHIR standards development efforts to define the appropriate FHIR profiles, value sets, etc., once and allow them to be referenced by each of the specific implementation guides. This profile library will provide a standard framework for inclusion in multiple use case specific implementation guides focused on the exchange of Vital Records information to support interoperability among public health systems and reduce provider and implementer burden.



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




[Next Page - Downloads](downloads.html)