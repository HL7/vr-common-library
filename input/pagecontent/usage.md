### Partial Dates and Times
The purpose of the these extensions ([ExtensionPartialDateVitalRecords] and [ExtensionPartialDateTimeVitalRecords]) is to be able to express [date](https://hl7.org/fhir/R4B/datatypes.html#date) and [datetime](https://hl7.org/fhir/R4B/datatypes.html#datetime) values when some components are not known.  For some fields reported in vital records, all four components (year, month, day, time) can be reported/absent independently, resulting in combinations that are not supported by a FHIR dateTime (YYYY, YYYY-MM, YYYY-MM-DD, or a full dateTime).  The additional combinations supported by these extensions include:

* YYYY-XX-DD (year & day with no month)
* XXXX-MM-DD (month & day with no year)
* XXXX-XX-DD (day only)
* XXXX-XX-XX (no recorded date)
* All of the above options with present or missing time

When using these extensions, a value must be specified for each component (e.g., year, month, day), or a missing value code specified.  This allows dates where any component is missing to be specified.   These extensions *SHALL NOT* be used to represent partial values that can be represented by the FHIR date and dateTime directly. The value of the field being extended should provide the portion of the date or dateTime value that can be represented by the FHIR data type.   For vital records purposes, the content of the PartialDateTime extension will be used.  Other consumers of the data may not be aware of the extensions, and will rely on the value provided. For example, if the date is 2023-XX-01 (the month being unknown), the value of the date should be 2023, and the partialDate extension would represent all three components.

A value of unknown (all 9's) in IJE is equivalent to a component with DataAbsentReason extension with code `unknown`.  See [this][patient-child-vr-babyg-quinn-common-2] for an example of both unknown integer values -- an unknown month of birth, "99" in IJE -- and unknown time value -- the time of birth, "9999" in IJE.

A value of blank (all ' ') in IJE is equivalent to a a component with a DataAbsentReason extension with code `temp-unknown`.

The following table illustrates the appropriate use of a dateTime field with a partial date time extension:

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
    <th>Partial Date Time Extension Components</th>
    <th>IJE YYYY</th>
    <th>IJE MM</th>
    <th>IJE DD</th>
    <th>IJE TTTT</th>
  </tr>
  <tr>
    <td>2023</td>
    <td>(none)</td>
    <td>2023</td>
    <td>blank</td>
    <td>blank</td>
    <td>blank</td>
  </tr>
  <tr>
    <td>2023 (this is correct usage)</td>
    <td>2023-XX-23 XXXX</td>
    <td>2023</td>
    <td>99</td>
    <td>23</td>
    <td>9999</td>
  </tr>
  <tr>
    <td>2023-12</td>
    <td>(none)</td>
    <td>2023</td>
    <td>12</td>
    <td>blank</td>
    <td>blank</td>
  </tr>
  <tr>
    <td>2023-12-23</td>
    <td>(none)</td>
    <td>2023</td>
    <td>12</td>
    <td>23</td>
    <td>blank</td>
  </tr>
  <tr>
    <td>2023-12-23</td>
    <td>2023-12-23 XXXX</td>
    <td>2023</td>
    <td>12</td>
    <td>23</td>
    <td>9999</td>
  </tr>
  <tr>
    <td>(none) this is incorrect usage. It should be</td>
    <td>2023-12-23.</td>
    <td>2023</td>
    <td>12</td>
    <td>23</td>
    <td>9999</td>
  </tr>
  <tr>
    <td>2023-12-23 T13:28:17-05:00</td>
    <td>(none)</td>
    <td>2023</td>
    <td>12</td>
    <td>23</td>
    <td>1328. (uses local time)</td>
  </tr>
  <tr>
    <td>(none)</td>
    <td>XXXX-12-23 1828</td>
    <td>9999</td>
    <td>12</td>
    <td>23</td>
    <td>1828</td>
  </tr>
</table>

</body>


### Birth Date and Time
The [USCorePatient] profile provides a field for capturing the patient's birthdate. Within the vital records use cases, the date and time of birth are needed, as well as the ability to capture partial dates.  The date and time of birth should be captured as follows:
* If both the date and time of birth are known, the Patient.birthDate field should include the birth [date](https://hl7.org/fhir/R4B/datatypes.html#date), and the [PatientBirthTime] extension should include the birth date and time encoded as a FHIR [dateTIme](https://hl7.org/fhir/R4B/datatypes.html#dateTime). Example: [patient-child-vr-babyg-quinn-common].
* If the date of birth is known, but the time of birth is unknown, the Patient.birthDate field should include the birth [date](https://hl7.org/fhir/R4B/datatypes.html#date), and the [PatientBirthTime] and [ExtensionPartialDateTimeVitalRecords] extensions should be omitted. Example: [patient-child-vr-babyg-quinn-common-1]
* If the date of birth is partially known, the [ExtensionPartialDateTimeVitalRecords] extension should be used to express this.  If the partial [date](https://hl7.org/fhir/R4B/datatypes.html#date) can be expressed within the birthDate field it should be included there as well.  The [PatientBirthTime] extension should be omitted. Example: [patient-child-vr-babyg-quinn-common-2]

### City Codes
FHIR [addresses](https://hl7.org/fhir/R4B/datatypes.html#Address) support a string value for city. The death record submission requires a 5 digit coded value, so the IG defines an extension [ExtensionCityCodeVitalRecords] for this purpose. The code should be selected to match the literal content of the city field. As of the date of publication, these codes should be in accordance with the [NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014](https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf).

### County Codes
FHIR [addresses](https://hl7.org/fhir/R4B/datatypes.html#Address) support a string value for county (district). The death record submission requires a 3 digit coded value, so the IG defines an extension [ExtensionDistrictCodeVitalRecords] for this purpose. The code should be selected to match the literal content of the district field. As of the date of publication, these codes should be in accordance with the [NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014](https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf).

### State Literals
States and jurisdictions are consistently represented using two letter postal codes bound to a string field.   The IJE typically represents states using a 2 letter postal code and a separate literal field.  Mapping from the 2 letter codes to literals must be provided outside of the VRCL IG, and can leverage the [ValueSetStatesTerritoriesAndProvincesVitalRecords].

### Country Literals
Countries are consistently represented using two letter postal codes bound to a string field.   The IJE typically represents countries using a 2 letter postal code and a separate literal field.  Mapping from the 2 letter codes to literals must be provided outside of the VRCL IG, and can leverage the [CodeSystemCountryCodeVitalRecords].

### Gender
Profile conformance requires that gender be provided.   A value of 'unknown' will satisfy this requirement.   There is no IJE field that is mapped to the Patient.gender field.

### Handling of Edit Flags
TBD

{% include markdown-link-references.md %}
