
<style>
 .context-menu {cursor: context-menu; color: #438bca;}
 .context-menu:hover {opacity: 0.5;}
</style>
### IJE Mapping
<details>

<summary>

<strong class='context-menu' > Natality </strong>

</summary>
<table class='grid'>
<thead>
  <tr>
    <th style='text-align: center'><strong>Use Case</strong></th>
    <th><strong>#</strong></th>
    <th><strong>Description</strong></th>
    <th><strong>IJE Name</strong></th>
    <th><strong>Field</strong></th>
    <th><strong>Type</strong></th>
    <th><strong>Value Set/Comments</strong></th>
  </tr>
</thead>
<tbody>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>32</td>
  <td>Mother's Education</td>
  <td>MEDUC</td>
  <td>value,  <br />code=57712-2 (Highest level of education Mother)</td>
  <td>codeable</td>
  <td><a href='ValueSet-ValueSet-education-level-vr.html'>ValueSetEducationLevelVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>33</td>
  <td>Mother's Education--Edit Flag</td>
  <td>MEDUC_BYPASS</td>
  <td>value.extension[bypassEditFlag].value, <br />code=57712-2 (Highest level of education Mother)</td>
  <td>codeable</td>
  <td><a href='ValueSet-valueset-edit-bypass-01234-vr.html'>ValueSetEditBypass01234VitalRecords</a>, <br />See <a href='usage.html#handling-of-edit-flags'>Handling of edit flags</a></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>78</td>
  <td>Father's Education</td>
  <td>FEDUC</td>
  <td>value, <br />code=87300-0 (Highest level of education Father)</td>
  <td>codeable</td>
  <td><a href='ValueSet-ValueSet-education-level-vr.html'>ValueSetEducationLevelVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>79</td>
  <td>Father's Education--Edit Flag</td>
  <td>FEDUC_BYPASS</td>
  <td>value.extension[bypassEditFlag].value, <br />code=87300-0 (Highest level of education Father)</td>
  <td>codeable</td>
  <td><a href='ValueSet-valueset-edit-bypass-01234-vr.html'>ValueSetEditBypass01234VitalRecords</a>, <br />See <a href='usage.html#handling-of-edit-flags'>Handling of edit flags</a></td>
</tr>

</tbody>
</table>

</details>
<p></p>

<details>

<summary>

<strong class='context-menu'> Fetal Death </strong>

</summary>
<table class='grid'>
<thead>
  <tr>
    <th style='text-align: center'><strong>Use Case</strong></th>
    <th><strong>#</strong></th>
    <th><strong>Description</strong></th>
    <th><strong>IJE Name</strong></th>
    <th><strong>Field</strong></th>
    <th><strong>Type</strong></th>
    <th><strong>Value Set/Comments</strong></th>
  </tr>
</thead>
<tbody>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>32</td>
  <td>Mother's Education</td>
  <td>MEDUC</td>
  <td>value, <br />code=57712-2 (Highest level of education Mother)</td>
  <td>codeable</td>
  <td><a href='ValueSet-ValueSet-education-level-vr.html'>ValueSetEducationLevelVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>33</td>
  <td>Mother's Education--Edit Flag</td>
  <td>MEDUC_BYPASS</td>
  <td>value.extension[bypassEditFlag].value, <br />code=57712-2 (Highest level of education Mother)</td>
  <td>codeable</td>
  <td><a href='ValueSet-valueset-edit-bypass-01234-vr.html'>ValueSetEditBypass01234VitalRecords</a>, <br />See <a href='usage.html#handling-of-edit-flags'>Handling of edit flags</a></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>283</td>
  <td>Father's Education</td>
  <td>FEDUC</td>
  <td>value, <br />code=87300-0 (Highest level of education Father)</td>
  <td>codeable</td>
  <td><a href='ValueSet-ValueSet-education-level-vr.html'>ValueSetEducationLevelVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>284</td>
  <td>Father's Education--Edit Flag</td>
  <td>FEDUC_BYPASS</td>
  <td>value.extension[bypassEditFlag].value, <br />code=87300-0 (Highest level of education Father)</td>
  <td>codeable</td>
  <td><a href='ValueSet-valueset-edit-bypass-01234-vr.html'>ValueSetEditBypass01234VitalRecords</a>, <br />See <a href='usage.html#handling-of-edit-flags'>Handling of edit flags</a></td>
</tr>

</tbody>
</table>

</details>
<p></p>

### Form Mapping
<details>

<summary>

<strong class='context-menu' >Form Mapping</strong>

</summary>
<table class='grid'>
<thead>
  <tr>
    <th style='text-align: center'><strong>Item #</strong></th>
    <th><strong>Form Field</strong></th>
    <th><strong>FHIR Profile Field</strong></th>
    <th><strong>Reference</strong></th>
  </tr>
</thead>
<tbody>
<tr>
  <td style='text-align: center'>20</td>
  <td>Mother’s Education</td>
  <td>value</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf'> Certificate of Live Birth</a></td>
</tr>
<tr>
  <td style='text-align: center'>23</td>
  <td>Father’s Education</td>
  <td>value</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf'> Certificate of Live Birth</a></td>
</tr>
<tr>
  <td style='text-align: center'>8</td>
  <td>What is the highest level of schooling that you will have completed at the time of delivery?</td>
  <td>value</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf'> Mothers Worksheet for Child’s Birth Certificate</a></td>
</tr>
<tr>
  <td style='text-align: center'>22</td>
  <td>What is the highest level of schooling that the father will have completed at the time of delivery?</td>
  <td>value</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf'> Mothers Worksheet for Child’s Birth Certificate</a></td>
</tr>
<tr>
  <td style='text-align: center'>19</td>
  <td>Mother’s Education</td>
  <td>value</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf'> Report of Fetal Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>8</td>
  <td>What is the highest level of schooling that you have completed at the time of delivery?</td>
  <td>value</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/fetal-death-mother-worksheet-english-2019-508.pdf'> Patient’s Worksheet for the Report of Fetal Death</a></td>
</tr>
</tbody>
</table>

</details>
<p></p>
