<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();

	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>ESEM Registration</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body class="blurBg-true" style="background-color:#b2ffa0">



<!-- Start Formoid form-->
<link rel="stylesheet" href="<%=basePath %>static/esemregistration_files/formoid1/formoid-flat-green.css" type="text/css" />
<script type="text/javascript" src="<%=basePath %>static/esemregistration_files/formoid1/jquery.min.js"></script>

<div style="text-align: center; margin-top: 0px;">
	<a href="http://eseiw.iscas.ac.cn/eseiw2015/index.html"><img src="<%=basePath %>static/image/esembg.jpg"/></a>
</div>

<input style="display: none" value="<%=basePath%>" id="basePath" />
<form id="esemregisform" class="formoid-flat-green" action="<%=basePath %>registuser"  style="background-color:#ffffff;font-size:14px;font-family:'Lato', sans-serif;color:#000000;max-width:1200px;min-width:150px" method="post">
    
    <div class="title"><h2>ESEM Registration</h2></div>
    <div>
    	<p>
    		<h3  >To complete registration, please fill out the following online registration form and finalize your payment. 
If you experience any problem during the registration process, please email <a style="color: red;">eseiw_registration@itechs.iscas.ac.cn</a>.</h3>
    		
    	</p>
    </div>
		
	<div class="element-separator" title="Attendee Information"><hr><h3 class="section-break-title">Attendee Information</h3></div>

	<div class="element-select" title="Title"><label class="title">Title<span class="required">*</span></label><div class="small"><span>
		
		<select name="title" required="required">

			<option value="Ms. ">Ms. </option>
			<option value="Mr. ">Mr. </option>
			<option value="Mrs. ">Mrs. </option>
			<option value="Dr. ">Dr. </option>
			<option value="Prof.">Prof.</option>
		</select>
		
		<i></i></span></div></div>
	
	<div class="element-name">
		<label class="title">Name<span class="required">*</span></label><span class="nameFirst"><input  type="text" size="8" name="firstname" required="required"/>
		<label class="subtitle">FirstName</label></span><span class="nameLast"><input  type="text" size="14" name="lastname" required="required"/>
		<label class="subtitle">LastName</label></span>
	</div>
	
	
	<div class="element-select" title="Sex"><label class="title">Sex<span class="required">*</span></label><div class="small"><span>
	
	<select name="sex" required="required">
		<option value="Male">Male</option>
		<option value="Female">Female</option>
	</select>
	
	<i></i></span></div></div>
	

	<div class="element-input" title="Company/Affiliation"><label class="title">Company/Affiliation<span class="required">*</span>
	    </label><input class="medium" type="text" name="company" required="required"/>
	</div>
	
	<div class="element-input" title="Position">
	    <label class="title">Position<span class="required">*</span></label><input class="medium" type="text" name="position" required="required"/>
	</div>
	
	<div class="element-input" title="The other major social position">
		<label class="title">The other major social position<span class="required">*</span></label><input class="medium" type="text" name="otherposition" required="required"/>
	</div>
	
	<div class="element-input" title="Address">
		<label class="title">Address<span class="required">*</span></label><input class="medium" type="text" name="address" required="required"/>
	</div>

	<div class="element-input" title="City">
		<label class="title">City<span class="required">*</span></label><input class="small" type="text" name="city" required="required"/>
	</div>
	
	<div class="element-input" title="Postal Code">
		<label class="title">Postal Code<span class="required">*</span></label><input class="small" type="text" name="postalcode" required="required"/>
	</div>
	
	
	<div class="element-select" title="County"><label class="title">Country<span class="required">*</span></label><div class="small"><span>
	
	<select name="country" required="required">

		<option value="Afghanistan">Afghanistan</option>
		<option value="Albania">Albania</option>
		<option value="Algeria">Algeria</option>
		<option value="American Samoa">American Samoa</option>
		<option value="Andorra">Andorra</option>
		<option value="Angola">Angola</option>
		<option value="Anguilla">Anguilla</option>
		<option value="Antigua & Barbuda">Antigua &amp; Barbuda</option>
		<option value="Argentina">Argentina</option>
		<option value="Armenia">Armenia</option>
		<option value="Aruba">Aruba</option>
		<option value="Australia">Australia</option>
		<option value="Austria">Austria</option>
		<option value="Azerbaijan">Azerbaijan</option>
		<option value="Bahamas">Bahamas</option>
		<option value="Bahrain">Bahrain</option>
		<option value="Bangladesh">Bangladesh</option>
		<option value="Barbados">Barbados</option>
		<option value="Belarus">Belarus</option>
		<option value="Belgium">Belgium</option>
		<option value="Belize">Belize</option>
		<option value="Benin">Benin</option>
		<option value="Bermuda">Bermuda</option>
		<option value="Bhutan">Bhutan</option>
		<option value="Bolivia">Bolivia</option>
		<option value="Bonaire">Bonaire</option>
		<option value="Bosnia & Herzegovina">Bosnia &amp; Herzegovina</option>
		<option value="Botswana">Botswana</option>
		<option value="Brazil">Brazil</option>
		<option value="British Indian Ocean Ter">British Indian Ocean Ter</option>
		<option value="Brunei">Brunei</option>
		<option value="Bulgaria">Bulgaria</option>
		<option value="Burkina Faso">Burkina Faso</option>
		<option value="Burundi">Burundi</option>
		<option value="Cambodia">Cambodia</option>
		<option value="Cameroon">Cameroon</option>
		<option value="Canada">Canada</option>
		<option value="Canary Islands">Canary Islands</option>
		<option value="Cape Verde">Cape Verde</option>
		<option value="Cayman Islands">Cayman Islands</option>
		<option value="Central African Republic">Central African Republic</option>
		<option value="Chad">Chad</option>
		<option value="Channel Islands">Channel Islands</option>
		<option value="Chile">Chile</option>
		<option value="China">China</option>
		<option value="Christmas Island">Christmas Island</option>
		<option value="Cocos Island">Cocos Island</option>
		<option value="Colombia">Colombia</option>
		<option value="Comoros">Comoros</option>
		<option value="Congo">Congo</option>
		<option value="Cook Islands">Cook Islands</option>
		<option value="Costa Rica">Costa Rica</option>
		<option value="Cote D'Ivoire">Cote D'Ivoire</option>
		<option value="Croatia">Croatia</option>
		<option value="Cuba">Cuba</option>
		<option value="Curaco">Curaco</option>
		<option value="Cyprus">Cyprus</option>
		<option value="Czech Republic">Czech Republic</option>
		<option value="Denmark">Denmark</option>
		<option value="Djibouti">Djibouti</option>
		<option value="Dominica">Dominica</option>
		<option value="Dominican Republic">Dominican Republic</option>
		<option value="East Timor">East Timor</option>
		<option value="Ecuador">Ecuador</option>
		<option value="Egypt">Egypt</option>
		<option value="El Salvador">El Salvador</option>
		<option value="Equatorial Guinea">Equatorial Guinea</option>
		<option value="Eritrea">Eritrea</option>
		<option value="Estonia">Estonia</option>
		<option value="Ethiopia">Ethiopia</option>
		<option value="Falkland Islands">Falkland Islands</option>
		<option value="Faroe Islands">Faroe Islands</option>
		<option value="Fiji">Fiji</option>
		<option value="Finland">Finland</option>
		<option value="France">France</option>
		<option value="French Guiana">French Guiana</option>
		<option value="French Polynesia">French Polynesia</option>
		<option value="French Southern Ter">French Southern Ter</option>
		<option value="Gabon">Gabon</option>
		<option value="Gambia">Gambia</option>
		<option value="Georgia">Georgia</option>
		<option value="Germany">Germany</option>
		<option value="Ghana">Ghana</option>
		<option value="Gibraltar">Gibraltar</option>
		<option value="Great Britain">Great Britain</option>
		<option value="Greece">Greece</option>
		<option value="Greenland">Greenland</option>
		<option value="Grenada">Grenada</option>
		<option value="Guadeloupe">Guadeloupe</option>
		<option value="Guam">Guam</option>
		<option value="Guatemala">Guatemala</option>
		<option value="Guinea">Guinea</option>
		<option value="Guyana">Guyana</option>
		<option value="Haiti">Haiti</option>
		<option value="Hawaii">Hawaii</option>
		<option value="Honduras">Honduras</option>
		<option value="Hong Kong">Hong Kong</option>
		<option value="Hungary">Hungary</option>
		<option value="Iceland">Iceland</option>
		<option value="India">India</option>
		<option value="Indonesia">Indonesia</option>
		<option value="Iran">Iran</option>
		<option value="Iraq">Iraq</option>
		<option value="Ireland">Ireland</option>
		<option value="Isle of Man">Isle of Man</option>
		<option value="Israel">Israel</option>
		<option value="Italy">Italy</option>
		<option value="Jamaica">Jamaica</option>
		<option value="Japan">Japan</option>
		<option value="Jordan">Jordan</option>
		<option value="Kazakhstan">Kazakhstan</option>
		<option value="Kenya">Kenya</option>
		<option value="Kiribati">Kiribati</option>
		<option value="Korea North">Korea North</option>
		<option value="Korea Sout">Korea Sout</option>
		<option value="Kuwait">Kuwait</option>
		<option value="Kyrgyzstan">Kyrgyzstan</option>
		<option value="Laos">Laos</option>
		<option value="Latvia">Latvia</option>
		<option value="Lebanon">Lebanon</option>
		<option value="Lesotho">Lesotho</option>
		<option value="Liberia">Liberia</option>
		<option value="Libya">Libya</option>
		<option value="Liechtenstein">Liechtenstein</option>
		<option value="Lithuania">Lithuania</option>
		<option value="Luxembourg">Luxembourg</option>
		<option value="Macau">Macau</option>
		<option value="Macedonia">Macedonia</option>
		<option value="Madagascar">Madagascar</option>
		<option value="Malaysia">Malaysia</option>
		<option value="Malawi">Malawi</option>
		<option value="Maldives">Maldives</option>
		<option value="Mali">Mali</option>
		<option value="Malta">Malta</option>
		<option value="Marshall Islands">Marshall Islands</option>
		<option value="Martinique">Martinique</option>
		<option value="Mauritania">Mauritania</option>
		<option value="Mauritius">Mauritius</option>
		<option value="Mayotte">Mayotte</option>
		<option value="Mexico">Mexico</option>
		<option value="Midway Islands">Midway Islands</option>
		<option value="Moldova">Moldova</option>
		<option value="Monaco">Monaco</option>
		<option value="Mongolia">Mongolia</option>
		<option value="Montserrat">Montserrat</option>
		<option value="Morocco">Morocco</option>
		<option value="Mozambique">Mozambique</option>
		<option value="Myanmar">Myanmar</option>
		<option value="Nambia">Nambia</option>
		<option value="Nauru">Nauru</option>
		<option value="Nepal">Nepal</option>
		<option value="Netherland Antilles">Netherland Antilles</option>
		<option value="Netherlands">Netherlands</option>
		<option value="Nevis">Nevis</option>
		<option value="New Caledonia">New Caledonia</option>
		<option value="New Zealand">New Zealand</option>
		<option value="Nicaragua">Nicaragua</option>
		<option value="Niger">Niger</option>
		<option value="Nigeria">Nigeria</option>
		<option value="Niue">Niue</option>
		<option value="Norfolk Island">Norfolk Island</option>
		<option value="Norway">Norway</option>
		<option value="Oman">Oman</option>
		<option value="Pakistan">Pakistan</option>
		<option value="Palau Island">Palau Island</option>
		<option value="Palestine">Palestine</option>
		<option value="Panama">Panama</option>
		<option value="Papua New Guinea">Papua New Guinea</option>
		<option value="Paraguay">Paraguay</option>
		<option value="Peru">Peru</option>
		<option value="Phillipines">Phillipines</option>
		<option value="Pitcairn Island">Pitcairn Island</option>
		<option value="Poland">Poland</option>
		<option value="Portugal">Portugal</option>
		<option value="Puerto Rico">Puerto Rico</option>
		<option value="Qatar">Qatar</option>
		<option value="Republic of Montenegro">Republic of Montenegro</option>
		<option value="Republic of Serbia">Republic of Serbia</option>
		<option value="Reunion">Reunion</option>
		<option value="Romania">Romania</option>
		<option value="Russia">Russia</option>
		<option value="Rwanda">Rwanda</option>
		<option value="St Barthelemy">St Barthelemy</option>
		<option value="St Eustatius">St Eustatius</option>
		<option value="St Helena">St Helena</option>
		<option value="St Kitts-Nevis">St Kitts-Nevis</option>
		<option value="St Lucia">St Lucia</option>
		<option value="St Maarten">St Maarten</option>
		<option value="St Pierre & Miquelon">St Pierre &amp; Miquelon</option>
		<option value="St Vincent & Grenadines">St Vincent &amp; Grenadines</option>
		<option value="Saipan">Saipan</option>
		<option value="Samoa">Samoa</option>
		<option value="Samoa American">Samoa American</option>
		<option value="San Marino">San Marino</option>
		<option value="Sao Tome & Principe">Sao Tome &amp; Principe</option>
		<option value="Saudi Arabia">Saudi Arabia</option>
		<option value="Senegal">Senegal</option>
		<option value="Seychelles">Seychelles</option>
		<option value="Sierra Leone">Sierra Leone</option>
		<option value="Singapore">Singapore</option>
		<option value="Slovakia">Slovakia</option>
		<option value="Slovenia">Slovenia</option>
		<option value="Solomon Islands">Solomon Islands</option>
		<option value="Somalia">Somalia</option>
		<option value="South Africa">South Africa</option>
		<option value="Spain">Spain</option>
		<option value="Sri Lanka">Sri Lanka</option>
		<option value="Sudan">Sudan</option>
		<option value="Suriname">Suriname</option>
		<option value="Swaziland">Swaziland</option>
		<option value="Sweden">Sweden</option>
		<option value="Switzerland">Switzerland</option>
		<option value="Syria">Syria</option>
		<option value="Tahiti">Tahiti</option>
		<option value="Taiwan">Taiwan</option>
		<option value="Tajikistan">Tajikistan</option>
		<option value="Tanzania">Tanzania</option>
		<option value="Thailand">Thailand</option>
		<option value="Togo">Togo</option>
		<option value="Tokelau">Tokelau</option>
		<option value="Tonga">Tonga</option>
		<option value="Trinidad & Tobago">Trinidad &amp; Tobago</option>
		<option value="Tunisia">Tunisia</option>
		<option value="Turkey">Turkey</option>
		<option value="Turkmenistan">Turkmenistan</option>
		<option value="Turks & Caicos Is">Turks &amp; Caicos Is</option>
		<option value="Tuvalu">Tuvalu</option>
		<option value="Uganda">Uganda</option>
		<option value="Ukraine">Ukraine</option>
		<option value="United Arab Erimates">United Arab Erimates</option>
		<option value="United Kingdom">United Kingdom</option>
		<option value="United States of America">United States of America</option>
		<option value="Uraguay">Uraguay</option>
		<option value="Uzbekistan">Uzbekistan</option>
		<option value="Vanuatu">Vanuatu</option>
		<option value="Vatican City State">Vatican City State</option>
		<option value="Venezuela">Venezuela</option>
		<option value="Vietnam">Vietnam</option>
		<option value="Virgin Islands (Brit)">Virgin Islands (Brit)</option>
		<option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
		<option value="Wake Island">Wake Island</option>
		<option value="Wallis & Futana Is">Wallis &amp; Futana Is</option>
		<option value="Yemen">Yemen</option>
		<option value="Zaire">Zaire</option>
		<option value="Zambia">Zambia</option>
		<option value="Zimbabwe">Zimbabwe</option>
		
		
		
		</select>
		<i></i></span>
		</div></div>
		
	<div class="element-email">
		<label class="title">Email<span class="required">*</span></label><input class="medium" type="email" onblur="checkEmail(this)" name="email" value="" required="required"/>
	</div>
	
	<div class="element-phone">
		<label class="title">Telephone</label><input class="medium" type="tel" pattern="[+]?[\.\s\-\(\)\*\#0-9]{3,}" maxlength="24" name="phone"  value=""/>
	</div>
	
	<div class="element-input" title="Fax">
		<label class="title">Fax</label><input class="medium" type="text" name="fax" />
	</div>
	
	
	<div class="element-radio" title="Is a member of IEEE/ACM?">
	 	<label class="title">Is a member of IEEE/ACM?<span class="required">*</span></label>		
	 	<div class="column column2"><label><input onclick="showieacmmeber(this)" type="radio" name="memberofieacm" value="Yes" required="required"/><span>yes</span></label></div><span class="clearfix"></span>
		<div class="column column2"><label><input onclick="showieacmmeber(this)" type="radio" name="memberofieacm" value="No" required="required"/><span>no</span></label></div><span class="clearfix"></span>
	</div>
	

	
	<div id="showieacmmeber" style="display: none">
		<div class="element-input" title="Member ID">
			<label class="title">Member ID<span class="required">*</span></label>
			<input class="medium" type="text" value="please..." id="memberid" name="memberid" required="required"/></div>
	</div>
	
	
	
	
	<div class="element-separator" title="Need invitation for visa"><hr><h3 class="section-break-title">Need invitation for visa</h3></div>
	
	<div style="font-size:16px;">Information about visa can be found <a href="http://eseiw.iscas.ac.cn/eseiw2015/registration.html" target="blank">here</a>.</div>
	

	<div class="element-radio" title="Need invitation for visa?">
		<label class="title">Need an Invitation Letter of Duly Authorized Unit for Visa Application?<span class="required">*</span></label>		
		<div class="column column2"><label><input onclick="showvisainfor(this)"  type="radio" name="needinviforvisa" value="Yes" required="required"/><span>Yes</span></label></div><span class="clearfix"></span>
		<div class="column column2"><label><input onclick="showvisainfor(this)"  type="radio" name="needinviforvisa" value="No" required="required"/><span>No</span></label></div><span class="clearfix"></span>
	</div>	
	
	<script type="text/javascript">
		function showvisainfor(item){
			var val = item.value;
			if(val == "Yes"){
				document.getElementById("showvisainfor").style.display = "block";
			}else{
				document.getElementById("showvisainfor").style.display = "none";
			}
		}
	</script>

    <div id="showvisainfor"  style="display: none">

		<!-- 以下内容尚未加入到数据库中 -->
		<div class="element-date" title="Data of Birth ">
			<label class="title">Date of Birth <span class="required">*</span></label>
			<input class="medium" value="2015-04-21" id="birthday" type="text"  name="birthday" required="required" />
		</div>

		<div class="element-input" title="Country of Citizenship">
			<label class="title">Country of Citizenship<span class="required">*</span></label><input value="please..." class="medium" type="text" id="counofciti" name="counofciti" required="required"/>
		</div>
		
		<div class="element-input" title="Passport Number">
			<label class="title">Passport Number<span class="required">*</span></label><input value="please..."  class="medium" type="text" id="passportnum" name="passportnum" required="required"/>
		</div>		

		<div class="element-input" title="City where visa was issued (Embassy/ Consulate/ Visa Office)">
			<label class="title">City where visa was issued (Embassy/ Consulate/ Visa Office)<span class="required">*</span></label><input value="please..."  class="medium" type="text" id="cityvisaissue" name="cityvisaissue" required="required"/>
		</div>			

		<div class="element-radio" title="Is hard copy of the invitation letter required?">
			<label class="title">Is hard copy of the invitation letter required?<span class="required">*</span></label>		
			<div class="column column2"><label><input type="radio" name="hardornot" value="yes" required="required"/><span>yes</span></label></div><span class="clearfix"></span>
			<div class="column column2"><label><input type="radio" name="hardornot" value="no" required="required" checked="checked"/><span>no</span></label></div><span class="clearfix"></span>
		</div>		
		
		
	</div>

	
	
	
	
	<div class="element-separator" title="Registration fees"><hr><h3 class="section-break-title">Registration fees-Early bird registration (up until August 31, 2015)</h3></div>
	
	
	<div class="element-checkbox" title="ESEM Registration(22-23 October)"><label class="title">ESEM Registration(22-23 October)</label>		
		<div class="column column1">
		<label><input type="checkbox"   onclick="showtotalmoney(this)" id="member1"  name="esemregisbefjune" value="600"/ ><span>IEEE/ACM Member US$600 </span></label>
		<label><input type="checkbox"  onclick="showtotalmoney(this)" name="esemregisbefjune" value="800"/ ><span>Non-Member US$800 </span></label>
		<label><input type="checkbox"  onclick="showtotalmoney(this)"  id="member2"  name="esemregisbefjune" value="200"/ ><span>Student & IEEE/ACM Member US$200 </span></label>
		<label><input type="checkbox" onclick="showtotalmoney(this)" name="esemregisbefjune" value="300"/ ><span>Student non-member US$300 </span></label>
		<label><input type="checkbox"onclick="showtotalmoney(this)" name="esemregisbefjune" value="66"/ ><span>Extra ESEM banquet US$66 </span></label></div><span class="clearfix"></span>
	</div>
	
	<div class="element-checkbox" title="ISERN Registration (19-20 October)"><label class="title">ISERN Registration (19-20 October)</label>		
		<div class="column column1">
			<label><input type="checkbox" onclick="showtotalmoney(this)" name="isernregisbefjune" value="200"/ ><span>Member US$200 </span></label>
			<label><input type="checkbox"  onclick="showtotalmoney(this)" name="isernregisbefjune" value="350"/ ><span>Second member US$350 </span></label>
			<label><input type="checkbox"  onclick="showtotalmoney(this)" name="isernregisbefjune" value="66"/ ><span> Extra banquet US$66 </span></label></div><span class="clearfix"></span>
	</div>
	
	<div class="element-checkbox" title="PROMISE Registration (21 October)"><label class="title">PROMISE Registration (21 October)</label>		
		<div class="column column1">
			<label><input type="checkbox" onclick="showtotalmoney(this)" name="promiseregisbefjune" value="200" / ><span>Professional US$200</span></label>
			<label><input type="checkbox"  onclick="showtotalmoney(this)" name="promiseregisbefjune" value="100" / ><span>Student US$100 </span></label></div><span class="clearfix"></span>
	</div>
	
	
	<div class="element-checkbox" title="IASESE Registration (21 October)"><label class="title">IASESE Registration (21 October)</label>		
		<div class="column column1">
			<label><input type="checkbox"  onclick="showtotalmoney(this)" name="iaseseregisbefjune" value="200"/ ><span>Professional US$200 </span></label>
			<label><input type="checkbox" onclick="showtotalmoney(this)" name="iaseseregisbefjune" value="100"/ ><span>Student US$100 </span></label></div><span class="clearfix"></span>
	</div>
		
	<div class="element-checkbox" title="IDoESE Registration (21 October)"><label class="title">IDoESE Registration (21 October)</label>		
		<div class="column column1">
			<label><input type="checkbox"  onclick="showtotalmoney(this)" name="idoeseregisbefjune" value="100" / ><span>Professional US$100 </span></label>
			<label><input type="checkbox"  onclick="showtotalmoney(this)" name="idoeseregisbefjune" value="100" / ><span>Student US$100 </span></label></div><span class="clearfix"></span>
	</div>

	<div class="element-checkbox" title="SES Registration (21 October)"><label class="title">SES Registration (21 October)</label>		
		<div class="column column1">
			<label><input type="checkbox"  onclick="showtotalmoney(this)" name="sesregisbefjune" value="300" / ><span>SES US$300 </span></label></div><span class="clearfix"></span>
	</div>
		
		
	<div style="display: none">
		<!-- 以下是六月一日之后需要展示的内容  -->	
		<div class="element-separator" title="Late/On-site registration (as from June 2, 2015)"><hr><h3 class="section-break-title">Late/On-site registration (as from September 1, 2015)</h3></div>
		
		<div class="element-checkbox" title="ESEM Registration(22-23 October)">
			<label class="title">ESEM Registration(22-23 October)</label>		
			<div class="column column1">
			<label><input type="checkbox"  id="member3"  onclick="showtotalmoney(this)" name="esemregisaftjune" value="750"/ ><span>IEEE/ACM Member US$750 </span></label>
			<label><input type="checkbox" onclick="showtotalmoney(this)" name="esemregisaftjune" value="1000"/ ><span>Non-Member US$1000 </span></label>
			<label><input type="checkbox"  id="member4"  onclick="showtotalmoney(this)" name="esemregisaftjune" value="300"/ ><span>Student & IEEE/ACM Member US$300 </span></label>
			<label><input type="checkbox" onclick="showtotalmoney(this)" name="esemregisaftjune" value="400"/ ><span>Student non-member US$400 </span></label>
			<label><input type="checkbox" onclick="showtotalmoney(this)" name="esemregisaftjune" value="66"/ ><span>Extra ESEM banquet US$66 </span></label>
			
			</div><span class="clearfix"></span>
		</div>
		
		<div class="element-checkbox" title="ISERN Registration Fees (19-20 October)">
		<label class="title">ISERN Registration Fees (19-20 October)</label>		
		<div class="column column1">
		<label><input type="checkbox" onclick="showtotalmoney(this)" name="isernregisaftjune" value="200"/ ><span>Member US$200 </span></label>
		<label><input type="checkbox" onclick="showtotalmoney(this)" name="isernregisaftjune" value="350"/ ><span>Second member US$350 </span></label>
		<label><input type="checkbox" onclick="showtotalmoney(this)" name="isernregisaftjune" value="66"/ ><span>Extra banquet US$66 </span></label></div><span class="clearfix"></span>
		</div>
		
		<div class="element-checkbox" title="PROMISE Registration (21 October)">
		<label class="title">PROMISE Registration (21 October)</label>		
		<div class="column column1">
		<label><input type="checkbox" onclick="showtotalmoney(this)" name="promiseregisaftjune" value="250"/ ><span>Professional US$250 </span></label>
		<label><input type="checkbox" onclick="showtotalmoney(this)" name="promiseregisaftjune" value="150"/ ><span>Student US$150 </span></label></div><span class="clearfix"></span>
		</div>
		
		<div class="element-checkbox" title="IASESE Registration (21 October)">
		<label class="title">IASESE Registration (21 October)</label>		
		<div class="column column1">
		<label><input type="checkbox" onclick="showtotalmoney(this)" name="iaseseregisaftjune" value="250"/ ><span>Professional US$250 </span></label>
		<label><input type="checkbox" onclick="showtotalmoney(this)" name="iaseseregisaftjune" value="150"/ ><span>Student US$150 </span></label></div><span class="clearfix"></span>
		</div>
		
		<div class="element-checkbox" title="IDoESE Registration (21 October)">
		<label class="title">IDoESE Registration (21 October)</label>		
		<div class="column column1">
		<label><input type="checkbox" onclick="showtotalmoney(this)" name="idoeseregisaftjune" value="100"/ ><span>Professional US$100 </span></label>
		<label><input type="checkbox" onclick="showtotalmoney(this)" name="idoeseregisaftjune" value="100"/ ><span>Student US$100 </span></label></div><span class="clearfix"></span>
		</div>
		
		<div class="element-checkbox" title="SES Registration (21 October)">
		<label class="title">SES Registration (21 October)</label>		
		<div class="column column1">
		<label><input type="checkbox" onclick="showtotalmoney(this)" name="sesregisaftjune" value="300"/ ><span>SES US$300 </span></label></div><span class="clearfix"></span>
		</div>


	</div>
	
	

	
	
	<div class="element-separator" title="Additional information"><hr><h3 class="section-break-title">Additional information</h3></div>
	
	<div class="element-radio" title="Are you the author of an accepted conference/workshop paper or poster?">
	 	<label class="title">Are you the author of an accepted conference/workshop paper or poster?<span class="required">*</span></label>		
	 	<div class="column column2"><label><input onclick="showpaperinfo(this)" type="radio" name="areyouauthor" value="Yes" required="required"/><span>yes</span></label></div><span class="clearfix"></span>
		<div class="column column2"><label><input onclick="showpaperinfo(this)" type="radio" name="areyouauthor" value="No" required="required"/><span>no</span></label></div><span class="clearfix"></span>
	</div>
	
	<script type="text/javascript">
		function showpaperinfo(item){
			var val = item.value;
			if(val == "Yes"){
				document.getElementById("showpaperinfo").style.display = "block";
			}else{
				document.getElementById("showpaperinfo").style.display = "none";
			}
		}
	</script>
	
	<div id="showpaperinfo" style="display: none">
		<div class="element-input" title="Paper ID">
			<label class="title">Paper ID<span class="required">*</span></label>
			<input class="medium" type="text" value="please..." id="paperid" name="paperid" required="required"/></div>
		
		<div class="element-input" title="Paper title">
			<label class="title">Paper title<span class="required">*</span></label>
			<input class="large" type="text"  value="please..." id="papertitle" name="papertitle" required="required"/></div>
	</div>
	
	<div class="element-textarea" title="If you have any special needs or requests, please specify below">
		<label class="title">If you have any special needs or requests, please specify below</label>
		<textarea class="medium" name="specialneeds" cols="20" rows="5" ></textarea></div>
	
	<div class="element-separator"><hr><h3 class="section-break-title"></h3></div>
	
	
	
	<div class="element-checkbox"><label class="title">Agree Or Not<span class="required">*</span></label>		
		<div class="column column1"><label>
		<input type="checkbox" name="agreeornot" value=" I agree to the terms and conditions described here."/ required="required"><span> I agree to the terms and conditions described here.</span></label></div><span class="clearfix"></span>
	</div>
	
	
	<div class="element-separator" title="Total Money"><hr>
		<h3 class="section-break-title" id="showmoneyinput">Total Money $0</h3></div>
	
	<div style="display: none"><input type="text" id = "totalmoney" name="totalmoney" value="0" /></div>
	
	
	<div class="element-radio"><label class="title">Pay Method<span class="required">*</span></label>		
		<div class="column column1">
		<label><input type="radio" name="paymethod" value="Credit card payment" required="required"/><span>Credit card payment<img src="<%=basePath %>static/image/visa.gif" height="20" /></span></label>
		<label><input type="radio" name="paymethod" value="Pay later via bank transfer" required="required"/><span>Pay later via bank transfer <a href="<%=basePath %>banktransfer" target="blank">(Detail)</a></span></label></div><span class="clearfix"></span>
	</div>

	<div class="submit"><input type="submit" onclick="checkForm(this)" value="Submit"/></div>


</form>

	<script type="text/javascript">
		function showieacmmeber(item){
			var val = item.value;
			if(val == "Yes"){
				document.getElementById("showieacmmeber").style.display = "block";
				
				document.getElementById("member1").disabled=false;
				document.getElementById("member2").disabled=false;
				document.getElementById("member3").disabled=false;
				document.getElementById("member4").disabled=false;
				
			}else{
				document.getElementById("showieacmmeber").style.display = "none";
				
				document.getElementById("member1").checked = false;
				document.getElementById("member2").checked = false;
				document.getElementById("member3").checked = false;
				document.getElementById("member4").checked = false;
				
				document.getElementById("member1").disabled="disabled";
				document.getElementById("member2").disabled="disabled";
				document.getElementById("member3").disabled="disabled";
				document.getElementById("member4").disabled="disabled";
				
				//update the total money
				showtotalmoney(null);
			}
		}
	</script>

	<script type="text/javascript">
		function showtotalmoney(item){
			var temp = document.getElementsByName("esemregisbefjune");
			var radioVal = 0;
			var totalM = 0;
		    for(var i=0;i<temp.length;i++)
		    {
		       if(temp[i].checked)
		    	   radioVal = temp[i].value;
		       totalM += parseInt(radioVal);
		       radioVal = 0;
		    }
		    
		    temp = document.getElementsByName("isernregisbefjune");
		    for(var i=0;i<temp.length;i++)
		    {
		       if(temp[i].checked)
		    	   radioVal = temp[i].value;
		       totalM += parseInt(radioVal);
		       radioVal = 0;
		    }
		    
		    temp = document.getElementsByName("promiseregisbefjune");
		    for(var i=0;i<temp.length;i++)
		    {
		       if(temp[i].checked)
		    	   radioVal = temp[i].value;
		       totalM += parseInt(radioVal);
		       radioVal = 0;
		    }
		    
		    temp = document.getElementsByName("iaseseregisbefjune");
		    for(var i=0;i<temp.length;i++)
		    {
		       if(temp[i].checked)
		    	   radioVal = temp[i].value;
		       totalM += parseInt(radioVal);
		       radioVal = 0;
		    }
		    
		    temp = document.getElementsByName("idoeseregisbefjune");
		    for(var i=0;i<temp.length;i++)
		    {
		       if(temp[i].checked)
		    	   radioVal = temp[i].value;
		       totalM += parseInt(radioVal);
		       radioVal = 0;
		    }
		    
		    temp = document.getElementsByName("sesregisbefjune");
		    for(var i=0;i<temp.length;i++)
		    {
		       if(temp[i].checked)
		    	   radioVal = temp[i].value;
		       totalM += parseInt(radioVal);
		       radioVal = 0;
		    }
		    
		    
		    
		    
		    //after september 1
		    temp = document.getElementsByName("esemregisaftjune");
		    for(var i=0;i<temp.length;i++)
		    {
		       if(temp[i].checked)
		    	   radioVal = temp[i].value;
		       totalM += parseInt(radioVal);
		       radioVal = 0;
		    }
		    
		    
		    temp = document.getElementsByName("isernregisaftjune");
		    for(var i=0;i<temp.length;i++)
		    {
		       if(temp[i].checked)
		    	   radioVal = temp[i].value;
		       totalM += parseInt(radioVal);
		       radioVal = 0;
		    }
		    
		    temp = document.getElementsByName("promiseregisaftjune");
		    for(var i=0;i<temp.length;i++)
		    {
		       if(temp[i].checked)
		    	   radioVal = temp[i].value;
		       totalM += parseInt(radioVal);
		       radioVal = 0;
		    }
		    
		    temp = document.getElementsByName("iaseseregisaftjune");
		    for(var i=0;i<temp.length;i++)
		    {
		       if(temp[i].checked)
		    	   radioVal = temp[i].value;
		       totalM += parseInt(radioVal);
		       radioVal = 0;
		    }
		    
		    temp = document.getElementsByName("idoeseregisaftjune");
		    for(var i=0;i<temp.length;i++)
		    {
		       if(temp[i].checked)
		    	   radioVal = temp[i].value;
		       totalM += parseInt(radioVal);
		       radioVal = 0;
		    }
		    	    
		    
		    document.getElementById("showmoneyinput").innerHTML = "Total Money $US"+totalM;
		    document.getElementById("totalmoney").value = totalM;
			
		}
	</script>


<script type="text/javascript">
	function checkForm(item){
		
		
		var radioVal;
		var temp = document.getElementsByName("needinviforvisa");
	    for(var i=0;i<temp.length;i++)
	    {
	       if(temp[i].checked)
	    	   radioVal = temp[i].value;
	    }
		
		if(radioVal == "Yes"){
			var birthday = document.getElementById("birthday").value;
			if(birthday == "2015-04-21"){
				document.getElementById("birthday").value = "";
			}
			
			var counofciti = document.getElementById("counofciti").value;
			if(counofciti == "please..."){
				document.getElementById("counofciti").value = "";
			}
			
			var passportnum = document.getElementById("passportnum").value;
			if(passportnum == "please..."){
				document.getElementById("passportnum").value = "";
			}
			
			var cityvisaissue = document.getElementById("cityvisaissue").value;
			if(cityvisaissue == "please..."){
				document.getElementById("cityvisaissue").value = "";
			}		
		}else{
			document.getElementById("birthday").value = "2015-04-21";
			document.getElementById("counofciti").value = "please...";
			document.getElementById("passportnum").value = "please...";
			document.getElementById("cityvisaissue").value = "please...";
		}
		
		

		temp = document.getElementsByName("areyouauthor");
	    for(var i=0;i<temp.length;i++)
	    {
	       if(temp[i].checked)
	    	   radioVal = temp[i].value;
	    }

	    if(radioVal == "Yes"){
				
			var paperid = document.getElementById("paperid").value;
			if(paperid == "please..."){
				document.getElementById("paperid").value = "";
			}
			
			var papertitle = document.getElementById("papertitle").value;
			if(papertitle == "please..."){
				document.getElementById("papertitle").value = "";
			}
		}else{
			document.getElementById("paperid").value = "please...";
			document.getElementById("papertitle").value = "please...";
		}
	    
	    
	    temp = document.getElementsByName("memberofieacm");
	    for(var i=0;i<temp.length;i++)
	    {
	       if(temp[i].checked)
	    	   radioVal = temp[i].value;
	    }

	    if(radioVal == "Yes"){				
			var memberid = document.getElementById("memberid").value;
			if(memberid == "please..."){
				document.getElementById("memberid").value = "";
			}

		}else{
			document.getElementById("memberid").value = "please...";
		}
		
	    
	}
</script>

<script type="text/javascript">
	function checkEmail(item){
		var email = item.value;
		
		$.ajax({
			url : $("#basePath").val() + "searchbyemail",
			type : "GET",
			data:{"email":email},
			success : function(data, status) {
				if(data == 'false'){
					alert("This Email Exists Now, Please Change Another Email or Contact eseiw_registration@itechs.iscas.ac.cn");
				}
			},
			error : function(request, status, error) {
				alert("Error:"+error);
			}
		});
	}
</script>


<p class="frmd"><a href="http://formoid.com/v29.php">javascript form</a> Formoid.com 2.9</p><script type="text/javascript" src="<%=basePath %>static/esemregistration_files/formoid1/formoid-flat-green.js"></script>
<!-- Stop Formoid form-->



</body>
</html>
