
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
  <td>25</td>
  <td>Date of Birth (Father)--Year</td>
  <td>FDOB_YR</td>
  <td>birthDate</td>
  <td>date</td>
  <td>See <a href='usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>26</td>
  <td>Date of Birth (Father)--Month</td>
  <td>FDOB_MO</td>
  <td>birthDate</td>
  <td>date</td>
  <td>See <a href='usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>27</td>
  <td>Date of Birth (Father)--Day</td>
  <td>FDOB_DY</td>
  <td>birthDate</td>
  <td>date</td>
  <td>See <a href='usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>274</td>
  <td>Father's First Name</td>
  <td>DADFNAME</td>
  <td>name.given, <br />name.use = official</td>
  <td>string</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>275</td>
  <td>Father's Middle Name</td>
  <td>DADMNAME</td>
  <td>name.given, <br />name.use = official</td>
  <td>string</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>276</td>
  <td>Father's Last Name</td>
  <td>DADLNAME</td>
  <td>name.family, <br />name.use = official</td>
  <td>string</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>277</td>
  <td>Father's Surname Suffix</td>
  <td>DADSUFFX</td>
  <td>name.suffix, <br />name.use = official</td>
  <td>string</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>279</td>
  <td>Father's Social Security Number</td>
  <td>DAD_SSN</td>
  <td>identifier.value where system = ‘http://terminology.hl7.org/CodeSystem/v2-0203' <br />and type.coding.code=”SS” </td>
  <td>string</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>290</td>
  <td>State, U.S. Territory or Canadian Province of Birth (Father) - code</td>
  <td>FBPLACD_ST_TER_C</td>
  <td>extension[Extension-relatedperson-birthplace-vr].value[x].state</td>
  <td>string</td>
  <td><a href='ValueSet-ValueSet-states-territories-provinces-vr.html'>ValueSetStatesTerritoriesAndProvincesVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>291</td>
  <td>Father's Country of Birth (Code)</td>
  <td>FBPLACE_CNT_C</td>
  <td>extension[Extension-relatedperson-birthplace-vr].value[x].country</td>
  <td>string</td>
  <td><a href='ValueSet-ValueSet-birthplace-country-vr.html'>ValueSetBirthplaceCountryVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>307</td>
  <td>State, U.S. Territory or Canadian Province of Birth (Father) - literal</td>
  <td>FBPLACE_ST_TER_TXT</td>
  <td>extension[Extension-relatedperson-birthplace-vr].value[x].state (expanded from 2 letter code)</td>
  <td>string</td>
  <td>See <a href='usage.html#state-literals'>StateLiterals</a></td>
</tr>
<tr>
  <td style='text-align: center'>Natality</td>
  <td>308</td>
  <td>Father's Country of Birth (Literal)</td>
  <td>FBPLACE_CNTRY_TXT</td>
  <td>extension[Extension-relatedperson-birthplace-vr].value[x].country (expanded from 2 letter code)</td>
  <td>string</td>
  <td>See <a href='usage.html#country-literals'>CountryLiterals</a></td>
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
  <td>25</td>
  <td>Date of Birth (Father)--Year</td>
  <td>FDOB_YR</td>
  <td>birthDate</td>
  <td>date</td>
  <td>See <a href='usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>26</td>
  <td>Date of Birth (Father)--Month</td>
  <td>FDOB_MO</td>
  <td>birthDate</td>
  <td>date</td>
  <td>See <a href='usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>27</td>
  <td>Date of Birth (Father)--Day</td>
  <td>FDOB_DY</td>
  <td>birthDate</td>
  <td>date</td>
  <td>See <a href='usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>261</td>
  <td>Father's Legal First Name</td>
  <td>DADFNAME</td>
  <td>name.given, <br />name.use = official</td>
  <td>string</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>262</td>
  <td>Father's Legal Middle Name</td>
  <td>DADMNAME</td>
  <td>name.given, <br />name.use = official</td>
  <td>string</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>263</td>
  <td>Father's Legal Last Name</td>
  <td>DADLNAME</td>
  <td>name.family, <br />name.use = official</td>
  <td>string</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>264</td>
  <td>Father's Legal Surname Suffix</td>
  <td>DADSUFFIX</td>
  <td>name.suffix, <br />name.use = official</td>
  <td>string</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>266</td>
  <td>Father's Social Security Number</td>
  <td>DAD_SSN</td>
  <td>identifier.value where system = ‘http://terminology.hl7.org/CodeSystem/v2-0203' <br />and type.coding.code=”SS” </td>
  <td>string</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>277</td>
  <td>State, U.S. Territory or Canadian Province of Birth (Father) - code</td>
  <td>FBPLACD_ST_TER_C</td>
  <td>extension[Extension-relatedperson-birthplace-vr].value[x].state</td>
  <td>string</td>
  <td><a href='ValueSet-ValueSet-states-territories-provinces-vr.html'>ValueSetStatesTerritoriesAndProvincesVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>278</td>
  <td>Father's Country of Birth (Code)</td>
  <td>FBPLACE_CNT_C</td>
  <td>extension[Extension-relatedperson-birthplace-vr].value[x].country</td>
  <td>string</td>
  <td><a href='ValueSet-ValueSet-birthplace-country-vr.html'>ValueSetBirthplaceCountryVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>281</td>
  <td>State, U.S. Territory or Canadian Province of Birth (Father) - literal</td>
  <td>FBPLACE_ST_TER_TXT</td>
  <td>extension[Extension-relatedperson-birthplace-vr].value[x].state (expanded from 2 letter code)</td>
  <td>string</td>
  <td>See <a href='usage.html#state-literals'>StateLiterals</a></td>
</tr>
<tr>
  <td style='text-align: center'>Fetal Death</td>
  <td>282</td>
  <td>Father's Country of Birth (Literal)</td>
  <td>FBPLACE_CNTRY_TXT</td>
  <td>extension[Extension-relatedperson-birthplace-vr].value[x].country (expanded from 2 letter code)</td>
  <td>string</td>
  <td>See <a href='usage.html#country-literals'>CountryLiterals</a></td>
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
  <td style='text-align: center'>10a</td>
  <td>Father’s Current Legal Name</td>
  <td>name:currentLegalName</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf'> Certificate of Live Birth</a></td>
</tr>
<tr>
  <td style='text-align: center'>10b</td>
  <td>Father’s Date Of Birth</td>
  <td>birthDate</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf'> Certificate of Live Birth</a></td>
</tr>
<tr>
  <td style='text-align: center'>10c</td>
  <td>Father’s Birthplace</td>
  <td>extension:birthPlace</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf'> Certificate of Live Birth</a></td>
</tr>
<tr>
  <td style='text-align: center'>19</td>
  <td>Father’s Social Security Number</td>
  <td>identifier:SSN</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf'> Certificate of Live Birth</a></td>
</tr>
<tr>
  <td style='text-align: center'>19</td>
  <td>What is the current legal name of your baby’s father?</td>
  <td>name</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf'> Mothers Worksheet for Child’s Birth Certificate</a></td>
</tr>
<tr>
  <td style='text-align: center'>20</td>
  <td>What is the father’s date of birth?</td>
  <td>birthDate</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf'> Mothers Worksheet for Child’s Birth Certificate</a></td>
</tr>
<tr>
  <td style='text-align: center'>21</td>
  <td>In what State, U.S. territory, or foreign country was the father born?</td>
  <td>extension:birthPlace</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf'> Mothers Worksheet for Child’s Birth Certificate</a></td>
</tr>
<tr>
  <td style='text-align: center'>23</td>
  <td>Is the father Spanish/Hispanic/Latino?</td>
  <td>extension:ethnictiy</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf'> Mothers Worksheet for Child’s Birth Certificate</a></td>
</tr>
<tr>
  <td style='text-align: center'>24</td>
  <td>What is the father’s race?</td>
  <td>extension:ethnicity</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf'> Mothers Worksheet for Child’s Birth Certificate</a></td>
</tr>
<tr>
  <td style='text-align: center'>25b</td>
  <td>What is the father’s Social Security Number?</td>
  <td>identifier:SSN</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/moms-worksheet-2016-508.pdf'> Mothers Worksheet for Child’s Birth Certificate</a></td>
</tr>
<tr>
  <td style='text-align: center'>12a</td>
  <td>Father’s Current Legal Name</td>
  <td>name:currentLegalName</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf'> Report of Fetal Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>12b</td>
  <td>Father's Date of Birth</td>
  <td>birthDate</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf'> Report of Fetal Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>12c</td>
  <td>Father's Birthplace</td>
  <td>extension:birthPlace</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf'> Report of Fetal Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>11</td>
  <td>What is the current legal name of your baby’s father?</td>
  <td>name:currentLegalName</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/fetal-death-mother-worksheet-english-2019-508.pdf'> Patient’s Worksheet for the Report of Fetal Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>12</td>
  <td>What is the father’s date of birth?</td>
  <td>birthDate</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/fetal-death-mother-worksheet-english-2019-508.pdf'> Patient’s Worksheet for the Report of Fetal Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>13</td>
  <td>In what State, U.S. territory, or foreign country was the father born?</td>
  <td>extension:birthPlace</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/fetal-death-mother-worksheet-english-2019-508.pdf'> Patient’s Worksheet for the Report of Fetal Death</a></td>
</tr>
</tbody>
</table>

</details>
<p></p>
