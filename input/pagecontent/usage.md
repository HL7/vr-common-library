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
The [USCorePatient] profile provides a field for capturing the patient's birthdate. Within the vital records use cases, the date and time of birth are needed, as well as the ability to capture partial dates.  The date and time of birth should be captured as follows:
* If both the date and time of birth are known, the Patient.birthDate field should include the birth [date](https://hl7.org/fhir/R4B/datatypes.html#date), and the [PatientBirthTime] extension should include the birth date and time encoded as a FHIR [dateTime](https://hl7.org/fhir/R4B/datatypes.html#dateTime). Example: [patient-child-vr-babyg-quinn-common].
* If the date of birth is known, but the time of birth is unknown, the Patient.birthDate field should include the birth [date](https://hl7.org/fhir/R4B/datatypes.html#date), and the [PatientBirthTime] and [ExtensionPartialDateTimeVitalRecords] extensions should be omitted. Example: [patient-child-vr-babyg-quinn-common-1]
* If the date of birth is partially known, the [ExtensionPartialDateTimeVitalRecords] extension should be used to express this.  If the partial [date](https://hl7.org/fhir/R4B/datatypes.html#date) can be expressed within the birthDate field it should be included there as well.  The [PatientBirthTime] extension should be omitted. Example: [patient-child-vr-babyg-quinn-common-2]

<table style="font-weight: 400; width: 711px;">
<tbody>
<tr>
<td style="width: 23px;">
<p>&nbsp;</p>
</td>
<td style="width: 185px;">
<p>&nbsp;</p>
</td>
<td style="width: 185px;">&nbsp;</td>
<td style="width: 104px;">
<p>date</p>
</td>
<td style="width: 203px;">
<p>partialDateTime</p>
</td>
<td style="width: 162px;">
<p>dateTime</p>
</td>
</tr>
<tr>
<td style="width: 23px;">
<p>&nbsp;#</p>
</td>
<td style="width: 185px;">
<p><strong>Case</strong></p>
</td>
<td style="width: 185px;">&nbsp;</td>
<td style="width: 104px;">
<p><strong>birthDate</strong></p>
</td>
<td style="width: 203px;">
<p><strong>birthDate.ext[partialDateTime]</strong></p>
</td>
<td style="width: 162px;">
<p><strong>Birthdate.ext[birthtime]</strong></p>
</td>
</tr>
<tr>
<td style="width: 23px;">
<p>0</p>
</td>
<td style="width: 185px;">
<p>Complete Birth Date and Time (with Time Zone)</p>
</td>
<td style="width: 185px;">
<p>2023-12-23 T13:28:17-05:00</p>
</td>
<td style="width: 104px;">&nbsp;23-12-23</td>
<td style="width: 203px; text-align: center;">&nbsp;-</td>
<td style="width: 162px;">&nbsp;2023-12-23 T13:28:17-05:00.&nbsp; <strong>This is the only case where the birthTime adds value.&nbsp; Perhaps this is the only place it should be rendered in FHIR?&nbsp; This cannot be round trippped through IJE.</strong></td>
</tr>
<tr>
<td style="width: 23px;">
<p>1</p>
</td>
<td style="width: 185px;">
<p>Birth Date and Birth Time without Time Zone (from IJE conversion)</p>
</td>
<td style="width: 185px;">
<p>2023-12-23 13:28:17&nbsp;</p>
</td>
<td style="width: 104px;">23-12-23&nbsp;</td>
<td style="width: 203px;">Represent all components of partial date and time.&nbsp;</td>
<td style="width: 162px;">
<p>-</p>
<p>This can be round tripped through IJE.&nbsp;</p>
</td>
</tr>
<tr>
<td style="width: 23px;">
<p>2</p>
</td>
<td style="width: 185px;">
<p>Only Date</p>
</td>
<td style="width: 185px;">
<p>2020-12-02</p>
</td>
<td style="width: 104px;">
<p>2020-12-02</p>
</td>
<td style="width: 203px;">
<p style="text-align: center;">-</p>
</td>
<td style="width: 162px;">
<p style="text-align: center;">2020-12-02 or absent.&nbsp; &nbsp;<strong>This doesn't add any value, so better for it to be absent.</strong></p>
</td>
</tr>
<tr>
<td style="width: 23px;">
<p>3</p>
</td>
<td style="width: 185px;">
<p>Only Time (including TZ)</p>
</td>
<td style="width: 185px;">
<p>01:01:01-05:00</p>
</td>
<td style="width: 104px;">
<p style="text-align: center;">-</p>
</td>
<td style="width: 203px;">
<p>Include HH(01), MM(01), SS(01)</p>
</td>
<td style="width: 162px;">
<p>Can&rsquo;t represent a time only in a dateTime.&nbsp; The TZ can't be represented in the partialDateTime extension.&nbsp;&nbsp;<strong>Perhaps the library should only support what can be supported in a dateTime.</strong></p>
</td>
</tr>
<tr>
<td style="width: 23px;">
<p>4</p>
</td>
<td style="width: 185px;">
<p>Only time (missing TZ).&nbsp; No real difference with #3.</p>
</td>
<td style="width: 185px;">&nbsp;01:01:01</td>
<td style="width: 104px;">
<p style="text-align: center;">-</p>
</td>
<td style="width: 203px;">
<p>&nbsp;</p>
<p>Include HH(01), MM(01), SS(01)</p>
</td>
<td style="width: 162px;">
<p>Can&rsquo;t represent a time only in a dateTime.&nbsp; The TZ can't be represented in the partialDateTime extension.&nbsp;&nbsp;<strong>Perhaps the library should only support what can be supported in a dateTime.</strong></p>
</td>
</tr>
<tr>
<td style="width: 23px;">
<p>5</p>
</td>
<td style="width: 185px;">
<p>Partial Date with no time</p>
</td>
<td style="width: 185px;">&nbsp;2023-12</td>
<td style="width: 104px;">
<p>2023-12</p>
</td>
<td style="width: 203px;">
<p>-</p>
</td>
<td style="width: 162px;">
<p>Usual rules for partial dates.</p>
</td>
</tr>
<tr>
<td style="width: 23px;">
<p>6</p>
</td>
<td style="width: 185px;">
<p>Partial Date with no time</p>
</td>
<td style="width: 185px;">&nbsp;2023-XX-23</td>
<td style="width: 104px;">&nbsp;2023</td>
<td style="width: 203px;">&nbsp;Include YYYY(2023), DD(23)</td>
<td style="width: 162px;">&nbsp;Usual rules for partial dates.</td>
</tr>
<tr>
<td style="width: 23px;">
<p>7</p>
</td>
<td style="width: 185px;">
<p>Partial Date with time (without TZ)</p>
</td>
<td style="width: 185px;">&nbsp;2023-XX-23 13:28:17&nbsp;</td>
<td style="width: 104px;">
<p>2023</p>
</td>
<td style="width: 203px;">
<p>Include date components and time compnents</p>
</td>
<td style="width: 162px;">
<p>Can&rsquo;t represent a time only in a dateTime.</p>
</td>
</tr>
<tr>
<td style="width: 23px;">
<p>8</p>
</td>
<td style="width: 185px;">
<p>Partial Date with time (with TZ) no real difference with #6</p>
</td>
<td style="width: 185px;">2023-XX-23 13:28:17-05:00&nbsp;&nbsp;</td>
<td style="width: 104px;">
<p>2023</p>
</td>
<td style="width: 203px;">
<p>Include date components and time compnents</p>
</td>
<td style="width: 162px;">
<p>Can&rsquo;t represent a time only in a dateTime.</p>
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
