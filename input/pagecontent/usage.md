### Local Time
All event times should be recorded as the local time and local time zone where they took place.

### Partial Dates and Times
The purpose of the these extensions ([ExtensionPartialDateVitalRecords] and [ExtensionPartialDateTimeVitalRecords]) is to be able to express [date](https://hl7.org/fhir/R4B/datatypes.html#date) and [datetime](https://hl7.org/fhir/R4B/datatypes.html#datetime) values when some components are not known.  For some fields reported in vital records, all four components (year, month, day, time) can be reported/absent independently, resulting in combinations that are not supported by a FHIR dateTime (YYYY, YYYY-MM, YYYY-MM-DD, or a full dateTime).  The additional combinations supported by these extensions include:

* YYYY-XX-DD (year & day with no month)
* XXXX-MM-DD (month & day with no year)
* XXXX-XX-DD (day only)
* XXXX-XX-XX (no recorded date)
* All of the above options with present or missing time

When using these extensions, a value must be specified for each component (e.g., year, month, day), or a missing value code specified.  This allows dates where any component is missing to be specified.   These extensions *SHALL NOT* be used to represent partial values that can be represented by the FHIR date and dateTime directly. The value of the field being extended should provide the portion of the date or dateTime value that can be represented by the FHIR data type.   For vital records purposes, the content of the PartialDateTime extension will be used and [data absent reasons][ValueSetPartialDateDataAbsentReasonVitalRecords] are restricted to `unknown` and `temp-unknown`.  Other consumers of the data may not be aware of the extensions, and will rely on the value provided. For example, if the date is 2023-XX-01 (the month being unknown), the value of the date should be 2023, and the partialDate extension would represent all three components.

A value of unknown (all 9's) in IJE is equivalent to a component with DataAbsentReason extension with code `unknown`.  See [this][patient-child-vr-babyg-quinn-common-2] for an example of both unknown integer values -- an unknown month of birth, "99" in IJE -- and unknown time value -- the time of birth, "9999" in IJE.

A value of blank (all ' ') in IJE is equivalent to a a component with a DataAbsentReason extension with code `temp-unknown`.

The following table illustrates the appropriate use of a dateTime field with a partial date time extension.   xxxx is a dataAbsentReason of 'temp-unknown'.  XXXX is a dataAbsentReason of 'unknown'.

<head>
  <style>
  table {
    border-collapse: collapse;
    width: 100%;
  }
  th, td {
    border: 1px solid black;
    padding: 8px;
    text-align: left;
  }
</style>
</head>
<body>
  <table>
    <tr>
      <th>FHIR dateTime</th>
      <th>Partial Date Time Extension Components YYYY-MM-DD TTTT</th>
      <th>IJE YYYY</th>
      <th>IJE MM</th>
      <th>IJE DD</th>
      <th>IJE TTTT</th>
      <th>Description</th>
    </tr>
    <tr>
      <td>2023</td>
      <td>(none)</td>
      <td>2023</td>
      <td>blank</td>
      <td>blank</td>
      <td>blank</td>
      <td>Correct Usage</td>
    </tr>
    <tr>
      <td>2023-12</td>
      <td>(none)</td>
      <td>2023</td>
      <td>12</td>
      <td>blank</td>
      <td>blank</td>
      <td>Correct Usage. No extension is required because dateTime can express this partial dateTime.</td>
    </tr>
    <tr>
      <td>2023-12-23</td>
      <td>(none)</td>
      <td>2023</td>
      <td>12</td>
      <td>23</td>
      <td>blank</td>
      <td>Correct Usage. No extension is required because dateTime can express this partial dateTime.</td>
    </tr>
      <tr>
        <td>2023-12-23 T13:28:17-05:00</td>
        <td>(none)</td>
        <td>2023</td>
        <td>12</td>
        <td>23</td>
        <td>1328. (uses local time)</td>
        <td>Correct usage if data originates in FHIR and Time Zone is known. </td>
      </tr>
      <tr>
        <td>(none)</td>
        <td>2023-12-23-1328</td>
        <td>2023</td>
        <td>12</td>
        <td>23</td>
        <td>1328. (uses local time)</td>
        <td>Correct usage for converting IJE content (where time zone is not known) to FHIR. </td>
      </tr>
     <tr>
      <td>2023-12-23</td>
      <td>2023-12-23 XXXX</td>
      <td>2023</td>
      <td>12</td>
      <td>23</td>
      <td>9999</td>
      <td>Correct Usage. The extension is required to express the unknown components. The dateTime shows what it can.</td>
    </tr>
        <tr>
        <td>(none)</td>
        <td>XXXX-12-23 1828</td>
        <td>9999</td>
        <td>12</td>
        <td>23</td>
        <td>1828</td>
        <td>Correct usage. The extension is required and the dateTimecannot express any of this date.</td>
      </tr>
      <tr>
        <td>(none)</td>
        <td>XXXX-12-23 1828</td>
        <td>9999</td>
        <td>12</td>
        <td>23</td>
        <td>1828</td>
        <td>Correct usage. The extension is required and the dateTimecannot express any of this date.</td>
      </tr>
          <tr>
      <td>2023 </td>
      <td>2023-XX-23 XXXX</td>
      <td>2023</td>
      <td>99</td>
      <td>23</td>
      <td>9999</td>
      <td>Correct Usage. The extension is required to express the unknown
        components. The dateTime shows what it can.</td>
    </tr>
    <tr>
      <td>2023 </td>
      <td>2023-xx-23 XXXX</td>
      <td>2023</td>
      <td>blank</td>
      <td>23</td>
      <td>9999</td>
      <td>Correct Usage. The extension is required to express the unknown
        components. The dateTime shows what it can. The time is unknown, and the
        month is temporarily unknown.</td>
    </tr>
        <tr>
      <td>(none)</td>
        <td>2023-12-23 xxxx</td>
        <td>2023</td>
        <td>12</td>
        <td>23</td>
        <td>blank</td>
        <td>Incorrect usage. This date can be expressed as a FHIR dateTime without the extension.</td>
      </tr>
      <tr>
        <td>2023-12-23</td>
        <td>2023-12-23 xxxx</td>
        <td>2023</td>
        <td>12</td>
        <td>23</td>
        <td>blank</td>
        <td>Incorrect usage. This date can be expressed as a FHIR dateTime without the extension. </td>
      </tr>
      <tr>
        <td>(none) </td>
        <td>2023-12-23 XXXX</td>
        <td>2023</td>
        <td>12</td>
        <td>23</td>
        <td>9999</td>
        <td> Incorrect usage. The extension is required because the unknown time component cannot be expressed as a FHIR dateTime. However, the dateTime should reflect 2023-12-23.</td>
      </tr>
        <tr>
      <td>(none)</td>
        <td>2023-12-23 xxxx</td>
        <td>2023</td>
        <td>12</td>
        <td>23</td>
        <td>blank</td>
        <td>Incorrect usage. The dateTime should be 2023-12-23. No extension is required because this date can be expressed as a FHIR dateTime.</td>
      </tr>
    </table>
</body>




### Birth Date and Time
The [USCorePatient] profile provides a field for capturing the patient's birthdate. Within the vital records use cases, the date and time of birth are needed.  The published IG includes the ability to represent partial dates and times, but the use of this capability has been *deprecated*.  The content of the partial date and time extensions should be ignored by all receivers.  This extension should be removed when the IG is next republished (see [FHIR-50422](https://jira.hl7.org/browse/FHIR-50422).  For submission of vital records to NCHS, use of the partialDateTime extension will trigger a business rule that will result in rejection of submissions.

The date and time of birth should be captured as follows:
* If both the date and time of birth are known, the Patient.birthDate field should include the birth [date](https://hl7.org/fhir/R4B/datatypes.html#date), and the [PatientBirthTime] extension should include the birth date and time encoded as a FHIR [dateTime](https://hl7.org/fhir/R4B/datatypes.html#dateTime). Example: [patient-child-vr-babyg-quinn-common].
* If the date of birth is known, but the time of birth is unknown, the Patient.birthDate field should include the birth [date](https://hl7.org/fhir/R4B/datatypes.html#date), and the [PatientBirthTime] extension should be omitted. Example: [patient-child-vr-babyg-quinn-common-1].   Valid and invalid uses are desribed in the table below.


<table style="font-weight: 400; width: 711px;">
<tbody>
<tr>
<td style="width: 23px;">
<p>&nbsp;</p>
</td>
<td style="width: 185px;">
<p>&nbsp;</p>
</td>
<td style="width: 185px; text-align: center;" colspan="3">IDOB</td>
<td style="width: 184.906px; text-align: center;">TB</td>
<td style="width: 185px;">&nbsp;dateTime</td>
<td style="width: 104px;">
<p>date</p>
</td>
<td style="width: 162px;">
<p>comment</p>
</td>
</tr>
<tr>
<td style="width: 23px;">
<p>&nbsp;#</p>
</td>
<td style="width: 185px;">
<p><strong>Case</strong></p>
</td>
<td style="width: 185px;">YYYY</td>
<td style="width: 185px;">MM</td>
<td style="width: 185.094px;">DD</td>
<td style="width: 184.906px;">HHMM</td>
<td style="width: 185px;">&nbsp;<strong>Birthdate.ext[birthtime]</strong></td>
<td style="width: 104px;">
<p><strong>birthDate</strong></p>
</td>
<td style="width: 162px;">
<p>Comment</p>
</td>
</tr>
<tr>
<td style="width: 23px;">&nbsp;</td>
<td style="width: 185px;">
<p>Complete Birth Date and Time (with Time Zone)</p>
</td>
<td style="width: 185px;">
<p>2023</p>
</td>
<td style="width: 185px;">
<p>12</p>
</td>
<td style="width: 185.094px;">
<p>23</p>
</td>
<td style="width: 184.906px;">
<p>1328</p>
</td>
<td style="width: 185px;">
<p>2023-12-23 T13:28:17-05:00</p>
</td>
<td style="width: 104px;">&nbsp;2023-12-23</td>
<td style="width: 162px;"><strong>Valid</strong>.<br />This is the expected case.&nbsp;<br /><br />When converting from IJE to FHIR, us the TB as local time, and choose an arbitrary valid timezone offset.</td>
</tr>
<tr>
<td style="width: 23px;">
<p>2</p>
</td>
<td style="width: 185px;">
<p>Only Date</p>
</td>
<td style="width: 185px;">
<p>2023</p>
</td>
<td style="width: 185px;">
<p>12</p>
</td>
<td style="width: 185.094px;">
<p>23</p>
</td>
<td style="width: 184.906px;">
<p>9999</p>
</td>
<td style="width: 185px;">
<p style="text-align: center;">-</p>
</td>
<td style="width: 104px;">
<p>2023-12-23</p>
</td>
<td style="width: 162px;">
<p style="text-align: left;"><strong>Valid</strong>.<br />Birthtime is required, so if it is absent that is a statement that it is unknown.</p>
</td>
</tr>
<tr>
<td style="width: 23px;">&nbsp;</td>
<td style="width: 185px;">
<p>Only Date</p>
</td>
<td style="width: 185px;">
<p>2023</p>
</td>
<td style="width: 185px;">
<p>12</p>
</td>
<td style="width: 185.094px;">
<p>23</p>
</td>
<td style="width: 184.906px;">
<p>&lt;blank&gt;</p>
</td>
<td style="width: 185px;">-&nbsp;</td>
<td style="width: 104px;">&nbsp;2023-12-23</td>
<td style="width: 162px;">I<strong>nvalid</strong>.<br />Birthtime is required. When converting FHIR to IJE, absence of birthtime should indicate a TB of 9999.</td>
</tr>
<tr>
<td style="width: 23px;">
<p>3</p>
</td>
<td style="width: 185px;">
<p>Only Time&nbsp;</p>
</td>
<td style="width: 185px;">&nbsp;&lt;blank&gt;</td>
<td style="width: 185px;">&nbsp;&lt;blank&gt;</td>
<td style="width: 185.094px;">&nbsp;&lt;blank&gt;</td>
<td style="width: 184.906px;">&nbsp;1328</td>
<td style="width: 185px; text-align: center;">
<p>NA</p>
</td>
<td style="width: 104px; text-align: center;">
<p style="text-align: center;">NA</p>
</td>
<td style="width: 162px;">
<p><strong>Invalid</strong>.&nbsp; <br />Both date and time are required.&nbsp; NCHS will not accept.</p>
</td>
</tr>
<tr>
<td style="width: 23px;">
<p>4</p>
</td>
<td style="width: 185px;">
<p>Partial Date with time</p>
</td>
<td style="width: 185px;">2023</td>
<td style="width: 185px;">12</td>
<td style="width: 185.094px;">99</td>
<td style="width: 184.906px;">&nbsp;1328</td>
<td style="width: 185px; text-align: center;">NA</td>
<td style="width: 104px; text-align: center;">
<p style="text-align: center;">NA</p>
</td>
<td style="width: 162px;">
<p><strong>Invalid</strong>. <br />All components of date are required.&nbsp; NCHS will not accept this record.</p>
</td>
</tr>
</tbody>
</table>

### City Codes
FHIR [addresses](https://hl7.org/fhir/R4B/datatypes.html#Address) support a string value for city. The death record submission requires a 5 digit coded value, so the IG defines an extension [ExtensionCityCodeVitalRecords] for this purpose. The code should be selected to match the literal content of the city field. As of the date of publication, these codes should be in accordance with the [NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014](https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf).

### County Codes
FHIR [addresses](https://hl7.org/fhir/R4B/datatypes.html#Address) support a string value for county (district). The death record submission requires a 3 digit coded value, so the IG defines an extension [ExtensionDistrictCodeVitalRecords] for this purpose. The code should be selected to match the literal content of the district field. As of the date of publication, these codes should be in accordance with the [NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014](https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf).

### State Literals
States and jurisdictions are consistently represented using two letter postal codes bound to a string field.   The IJE typically represents states using a 2 letter postal code and a separate literal field.  Mapping from the 2 letter codes to literals must be provided outside of the VRCL IG, and can leverage the [ValueSetStatesTerritoriesAndProvincesVitalRecords].

### Country Literals
Countries are consistently represented using two letter postal codes bound to a string field.   The IJE typically represents countries using a 2 letter postal code and a separate literal field.  Mapping from the 2 letter codes to literals must be provided outside of the VRCL IG, and can leverage the [CodeSystemCountryCodeVitalRecords].

### Gender
[US Core Patient]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-patient.html) profile conformance requires that gender be provided.   A value of 'unknown' will satisfy this requirement.    Complete vital record submissions may fail FHIR validation due to lack of a value for gender. There is no IJE field that is mapped to the Patient.gender field.

### Handling of Edit Flags
Edit flags supports validation as part of the Jurisdiction to NCHS use case for submission of birth, fetal death, and death records and can be ignored for other use cases. For details on the use of edit flags see the use-case specific FHIR Implementation Guides.

{% include markdown-link-references.md %}
