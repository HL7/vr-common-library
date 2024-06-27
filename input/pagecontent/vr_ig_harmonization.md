### Current Vital Records Related FHIR IG Development
#### National Vital Statistics System (NVSS) Modernization: Mortality and Birth
The Centers for Disease Control (CDC) National Center for Health Statistics (NCHS) Division of Vital Statics (DVS) is currently transitioning to FHIR-based submission of vital records to the National Vital Statistics System (NVSS) as part of ongoing modernization efforts.  CDC/NCHS/DVS funds the development of the FHIR IGs for submission submission of death, birth and fetal death records, manages the NVSS Community of Practice (CoP), and holds quarterly testing events.
Vital records offices (VROs) participate in these testing events with some on the path to pre-certification as a milestone for moving into production submission via FHIR to NVSS.

NCHS is transitioning the submission of death, birth, and fetal death records by VROs to NCHS based on published FHIR IGs, starting with submission of death records.   

#### CDC/NCHS Active Projects: Medicolegal Death Investigation

FHIR Implementation Collaborative led by the CDC Foundation is working with CDC/NCHS’s Collaborating Office for Medical Examiners and Coroners (COMEC) to test and pilot FHIR-based Application Programming Interface (API) enabled data exchange for  medicolegal death investigation workflows.  This effort is a collaboration with MDI offices and identified partners: state vital records offices, toxicology labs and/or other entities.  It funds development of the Medicolegal Death Investigation (MDI) FHIR IG as well as collaborative testing events  with MDI sites.  

### FHIR IG Harmonization
This FHIR IG is part of NCHS's efforts to facilitate the transition to FHIR through reuse of resources, and standardization of documentation.  

The goals of FHIR IG development and harmonization are:
* Support known/anticipated use cases
  * direct (death, birth, fetal death, MDI) vital records use cases
  * ancillary (birth defects) vital records use cases
* Support all Interjurisdictional Exchange (IJE) fields in current/contemplated usage
* Support full round trip IJE-->FHIR-->IJE without data loss
  * NCHS approach to race/ethnicity
  * Address coding
  * Clear distinction between No, Unknown, and Not Provided
  * Eliminate redundancy & improve consistency of representation among VR IGs
  * Consistent documentation style across vital records IGs to ease implementation

### Harmonizing Vital Records  Related FHIR IGs
Achieving the goals for harmonization listed above required modification to the content of previous versions of IGs, development of new content, and transition of content between the IGs.  This reduced the proliferation of content across the set of IGs that was due to redundancy and near-redundancy.

Figure 1 shows the dependencies among published vital reocrds FHIR IGs.  Figure 2 shows the dependencies after harmonization.  Harmonization has resulted in significant simplification of the MDI IG, and consolidation of all general Vital Records specific content within the VRCL.

<center>
<table><tr><td><figure><img src="HarmonizationPlan-Current.svg"/><figcaption style='font-weight: bold'>Figure 1: Current Vital Records FHIR IG Dependencies</figcaption></figure></td></tr></table>
</center>

<center>
<table><tr><td><figure><img src="HarmonizationPlan-Harmonized.svg"/><figcaption style='font-weight: bold'>Figure 2: Harmonized Vital Records FHIR IG Dependencies</figcaption></figure></td></tr></table>
</center>

### Approach to Harmonization
To implement the goals of harmonization described above, the following content changes were made:

* Birth-specific content --> BFDR STU2
  * Primary change:  move birth/fetal-death specific content VRCL --> BFDR STU2
* Death specific content --> VRDR STU3
  * Primary change:  MDI STU2 dependency on VRDR STU3
* Generalize VRDR STU2 content to support VRDR and MDI
* Common demographic elements, extensions, valueSets --> VRCL STU2
  * Primary change:  VRDR STU3, MDI STU2, BFDR STU2 dependency on VRCL STU2
  * VRCL STU2 provides content supporting vital records approach to race, ethnicity, partial dates/times, addresses, education level




