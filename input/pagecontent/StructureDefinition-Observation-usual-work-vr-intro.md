Implementors are free to use the coded fields with the defined valuesets for inter-jurisdictional exchange, 
but coded values are not expected for vital records submissions. 

Note that the coded industry and occupation fields are bound to PHINVADs-hosted value sets. 

For NCHS provided coded values the specific vocabulary used will depend on the death year.
### IJE Mapping

<style>
 .context-menu {cursor: context-menu; color: #438bca;}
 .context-menu:hover {opacity: 0.5;}
</style>
<details open>

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
  <td>282</td>
  <td>Occupation of Mother</td>
  <td>MOM_OC_T</td>
  <td>value.text, <br />extension[roleVitalRecords].value='MTH'</td>
  <td>string(40)</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>284</td>
  <td>Occupation of Father</td>
  <td>DAD_OC_T</td>
  <td>value.text, <br />extension[roleVitalRecords].value='FTH'</td>
  <td>string(40)</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>286</td>
  <td>Industry of Mother</td>
  <td>MOM_IN_T</td>
  <td>component [odh-UsualIndustry].value.text, <br />extension[roleVitalRecords].value='MTH'</td>
  <td>string(40)</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>288</td>
  <td>Industry of Father</td>
  <td>DAD_IN_T</td>
  <td>component [odh-UsualIndustry].value.text, <br />extension[roleVitalRecords].value='FTH'</td>
  <td>string(40)</td>
  <td></td>
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
  <td>269</td>
  <td>Occupation of Mother</td>
  <td>MOM_OC_T</td>
  <td>value.text, <br />extension[roleVitalRecords].value='MTH'</td>
  <td>string(40)</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>271</td>
  <td>Occupation of Father</td>
  <td>DAD_OC_T</td>
  <td>value.text, <br />extension[roleVitalRecords].value='FTH'</td>
  <td>string(40)</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>273</td>
  <td>Industry of Mother</td>
  <td>MOM_IN_T</td>
  <td>component [odh-UsualIndustry].value.text, <br />extension[roleVitalRecords].value='MTH'</td>
  <td>string(40)</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>275</td>
  <td>Industry of Father</td>
  <td>DAD_IN_T</td>
  <td>component [odh-UsualIndustry].value.text, <br />extension[roleVitalRecords].value='FTH'</td>
  <td>string(40)</td>
  <td></td>
</tr>

</tbody>
</table>

</details>
<p></p>

<details>

<summary>

<strong class='context-menu'> Mortality (Decedent) </strong>

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
  <td style='text-align: center'>Mortality</td>
  <td>84</td>
  <td>Occupation -- Literal </td>
  <td>OCCUP</td>
  <td>value.text</td>
  <td>string(40)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>86</td>
  <td>Industry -- Literal </td>
  <td>INDUST</td>
  <td>component [odh-UsualIndustry	].value.text</td>
  <td>string(40)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>94</td>
  <td>Occupation -- 4 digit Code </td>
  <td>OCCUPC4</td>
  <td>valueCodeableConcept.coding[occupationCDCCensus2018] </td>
  <td>codeable</td>
  <td><a href='https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.8065'>PHVS_Occupation_CDC_Census2018VS</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>95</td>
  <td>Industry -- 4 digit Code</td>
  <td>INDUSTC4</td>
  <td>component[odh-UsualIndustry].valueCodeableConcept.coding[industryCDCCensus2018] </td>
  <td>codeable</td>
  <td><a href='https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.8066'>PHVS_Industry_CDC_Census2018VS</a></td>
</tr>

</tbody>
</table>

</details>
<p></p>

