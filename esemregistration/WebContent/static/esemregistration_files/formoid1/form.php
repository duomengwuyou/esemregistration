<?php

define('EMAIL_FOR_REPORTS', 'zhangxinglong1990@163.com');
define('RECAPTCHA_PRIVATE_KEY', '@privatekey@');
define('FINISH_URI', 'http://');
define('FINISH_ACTION', 'message');
define('FINISH_MESSAGE', 'Thanks for filling out my form!');
define('UPLOAD_ALLOWED_FILE_TYPES', 'doc, docx, xls, csv, txt, rtf, html, zip, jpg, jpeg, png, gif');

define('_DIR_', str_replace('\\', '/', dirname(__FILE__)) . '/');
require_once _DIR_ . '/handler.php';

?>

<?php if (frmd_message()): ?>
<link rel="stylesheet" href="<?php echo dirname($form_path); ?>/formoid-flat-green.css" type="text/css" />
<span class="alert alert-success"><?php echo FINISH_MESSAGE; ?></span>
<?php else: ?>
<!-- Start Formoid form-->
<link rel="stylesheet" href="<?php echo dirname($form_path); ?>/formoid-flat-green.css" type="text/css" />
<script type="text/javascript" src="<?php echo dirname($form_path); ?>/jquery.min.js"></script>
<form class="formoid-flat-green" style="background-color:#ffffff;font-size:14px;font-family:'Lato', sans-serif;color:#000000;max-width:1200px;min-width:150px" method="post"><div class="title"><h2>ESEM Registration</h2></div>
	<div class="element-separator" title="Attendee Information"><hr><h3 class="section-break-title">Attendee Information</h3></div>
	<div class="element-select<?php frmd_add_class("select"); ?>" title="Title"><label class="title">Title<span class="required">*</span></label><div class="small"><span><select name="select" required="required">

		<option value="Ms. ">Ms. </option>
		<option value="Mr. ">Mr. </option>
		<option value="Mrs. ">Mrs. </option>
		<option value="Dr. ">Dr. </option>
		<option value="Prof.">Prof.</option></select><i></i></span></div></div>
	<div class="element-name<?php frmd_add_class("name"); ?>"><label class="title">Name<span class="required">*</span></label><span class="nameFirst"><input  type="text" size="8" name="name[first]" required="required"/><label class="subtitle">FirstName</label></span><span class="nameLast"><input  type="text" size="14" name="name[last]" required="required"/><label class="subtitle">LastName</label></span></div>
	<div class="element-input<?php frmd_add_class("input2"); ?>" title="Company/Affiliation"><label class="title">Company/Affiliation<span class="required">*</span></label><input class="medium" type="text" name="input2" required="required"/></div>
	<div class="element-input<?php frmd_add_class("input3"); ?>" title="Position"><label class="title">Position<span class="required">*</span></label><input class="medium" type="text" name="input3" required="required"/></div>
	<div class="element-input<?php frmd_add_class("input4"); ?>" title="The other major social position"><label class="title">The other major social position<span class="required">*</span></label><input class="medium" type="text" name="input4" required="required"/></div>
	<div class="element-input<?php frmd_add_class("input5"); ?>" title="Address"><label class="title">Address<span class="required">*</span></label><input class="medium" type="text" name="input5" required="required"/></div>
	<div class="element-input<?php frmd_add_class("input6"); ?>" title="City"><label class="title">City<span class="required">*</span></label><input class="small" type="text" name="input6" required="required"/></div>
	<div class="element-input<?php frmd_add_class("input7"); ?>" title="Postal Code"><label class="title">Postal Code<span class="required">*</span></label><input class="small" type="text" name="input7" required="required"/></div>
	<div class="element-select<?php frmd_add_class("select1"); ?>" title="County"><label class="title">County<span class="required">*</span></label><div class="small"><span><select name="select1" required="required">

		<option value="option 1">option 1</option>
		<option value="option 2">option 2</option>
		<option value="option 3">option 3</option></select><i></i></span></div></div>
	<div class="element-email<?php frmd_add_class("email"); ?>"><label class="title">Email<span class="required">*</span></label><input class="medium" type="email" name="email" value="" required="required"/></div>
	<div class="element-phone<?php frmd_add_class("phone"); ?>"><label class="title">Phone<span class="required">*</span></label><input class="medium" type="tel" pattern="[+]?[\.\s\-\(\)\*\#0-9]{3,}" maxlength="24" name="phone" required="required" value=""/></div>
	<div class="element-input<?php frmd_add_class("input8"); ?>" title="Fax"><label class="title">Fax<span class="required">*</span></label><input class="medium" type="text" name="input8" required="required"/></div>
	<div class="element-separator" title="Need invitation for visa"><hr><h3 class="section-break-title">Need invitation for visa</h3></div>
	<div class="element-radio<?php frmd_add_class("radio1"); ?>" title="Need invitation for visa"><label class="title">Need invitation for visa</label>		<div class="column column2"><label><input type="radio" name="radio1" value="Yes" /><span>Yes</span></label></div><span class="clearfix"></span>
		<div class="column column2"><label><input type="radio" name="radio1" value="No" /><span>No</span></label></div><span class="clearfix"></span>
</div>
	<div class="element-date<?php frmd_add_class("date"); ?>" title="Data of Birth "><label class="title">Data of Birth <span class="required">*</span></label><input class="medium" data-format="yyyy-mm-dd" type="date" name="date" required="required" placeholder="yyyy-mm-dd"/></div>
	<div class="element-input<?php frmd_add_class("input9"); ?>" title="Country of Citizenship"><label class="title">Country of Citizenship</label><input class="medium" type="text" name="input9" /></div>
	<div class="element-input<?php frmd_add_class("input10"); ?>" title="Passport Number"><label class="title">Passport Number</label><input class="medium" type="text" name="input10" /></div>
	<div class="element-select<?php frmd_add_class("select2"); ?>" title="City where visa was issued"><label class="title">City where visa was issued</label><div class="medium"><span><select name="select2" >

		<option value="Embassy Consulate">Embassy Consulate</option>
		<option value="Visa Office">Visa Office</option>
		<option value="Others">Others</option></select><i></i></span></div></div>
	<div class="element-radio<?php frmd_add_class("radio2"); ?>" title="Is hard copy of the invitation letter required"><label class="title">Is hard copy of the invitation letter required</label>		<div class="column column2"><label><input type="radio" name="radio2" value="yes" /><span>yes</span></label></div><span class="clearfix"></span>
		<div class="column column2"><label><input type="radio" name="radio2" value="no" /><span>no</span></label></div><span class="clearfix"></span>
</div>
	<div class="element-separator" title="Registration fees"><hr><h3 class="section-break-title">Registration fees</h3></div>
	<div class="element-radio<?php frmd_add_class("radio3"); ?>" title="Early bird registration (up until 20 July 2015)"><label class="title">Early bird registration (up until 20 July 2015)</label>		<div class="column column1"><label><input type="radio" name="radio3" value=" Full package (Mon, Tue, Wed) regular        €450.00" /><span> Full package (Mon, Tue, Wed) regular        €450.00</span></label><label><input type="radio" name="radio3" value=" Full package (Mon, Tue, Wed) for student        €200.00" /><span> Full package (Mon, Tue, Wed) for student        €200.00</span></label><label><input type="radio" name="radio3" value=" Main Conference (Tue, Wed)        €350.00" /><span> Main Conference (Tue, Wed)        €350.00</span></label><label><input type="radio" name="radio3" value=" One day attendance (Mon)        €250.00" /><span> One day attendance (Mon)        €250.00</span></label></div><span class="clearfix"></span>
</div>
	<div class="element-radio<?php frmd_add_class("radio4"); ?>" title="Late/On-site registration (as from 21 July 2015)"><label class="title">Late/On-site registration (as from 21 July 2015)</label>		<div class="column column1"><label><input type="radio" name="radio4" value="Full package (Mon, Tue, Wed), regular        €540.00" /><span>Full package (Mon, Tue, Wed), regular        €540.00</span></label><label><input type="radio" name="radio4" value="Full package (Mon, Tue, Wed) for student        €240.00" /><span>Full package (Mon, Tue, Wed) for student        €240.00</span></label><label><input type="radio" name="radio4" value="Main conference (Tue, Wed)        €420.00" /><span>Main conference (Tue, Wed)        €420.00</span></label><label><input type="radio" name="radio4" value="One day attendance (Mon)        €300.00" /><span>One day attendance (Mon)        €300.00</span></label></div><span class="clearfix"></span>
</div>
	<div class="element-separator" title="
Additional information"><hr><h3 class="section-break-title">
Additional information</h3></div>
	<div class="element-radio<?php frmd_add_class("radio5"); ?>" title="Are you the author of an accepted conference/workshop paper or poster?"><label class="title">Are you the author of an accepted conference/workshop paper or poster?<span class="required">*</span></label>		<div class="column column2"><label><input type="radio" name="radio5" value="yes" required="required"/><span>yes</span></label></div><span class="clearfix"></span>
		<div class="column column2"><label><input type="radio" name="radio5" value="no" required="required"/><span>no</span></label></div><span class="clearfix"></span>
</div>
	<div class="element-radio<?php frmd_add_class("radio6"); ?>" title="Do you want to attend the reception (cost included in Full package or Main conference)?
24 August 2015 at 19:00-21:00"><label class="title">Do you want to attend the reception (cost included in Full package or Main conference)?
24 August 2015 at 19:00-21:00<span class="required">*</span></label>		<div class="column column2"><label><input type="radio" name="radio6" value="yes" required="required"/><span>yes</span></label></div><span class="clearfix"></span>
		<div class="column column2"><label><input type="radio" name="radio6" value="no" required="required"/><span>no</span></label></div><span class="clearfix"></span>
</div>
	<div class="element-radio<?php frmd_add_class("radio7"); ?>" title="Additional reception pass"><label class="title">Additional reception pass</label>		<div class="column column2"><label><input type="radio" name="radio7" value="Yes                €20.00" /><span>Yes                €20.00</span></label></div><span class="clearfix"></span>
		<div class="column column2"><label><input type="radio" name="radio7" value="No" /><span>No</span></label></div><span class="clearfix"></span>
</div>
	<div class="element-radio<?php frmd_add_class("radio8"); ?>" title="Do you want to attend the conference dinner (banquet) (cost included in Full package or Main conference)?
25 August 2015 at 19:00-22:00"><label class="title">Do you want to attend the conference dinner (banquet) (cost included in Full package or Main conference)?
25 August 2015 at 19:00-22:00<span class="required">*</span></label>		<div class="column column2"><label><input type="radio" name="radio8" value="yes" required="required"/><span>yes</span></label></div><span class="clearfix"></span>
		<div class="column column2"><label><input type="radio" name="radio8" value="no" required="required"/><span>no</span></label></div><span class="clearfix"></span>
</div>
	<div class="element-radio<?php frmd_add_class("radio9"); ?>" title="Additional dinner pass"><label class="title">Additional dinner pass<span class="required">*</span></label>		<div class="column column2"><label><input type="radio" name="radio9" value="Yes      €50.00" required="required"/><span>Yes      €50.00</span></label></div><span class="clearfix"></span>
		<div class="column column2"><label><input type="radio" name="radio9" value=" No" required="required"/><span> No</span></label></div><span class="clearfix"></span>
</div>
	<div class="element-checkbox<?php frmd_add_class("checkbox1"); ?>" title="Dietary restrictions"><label class="title">Dietary restrictions</label>		<div class="column column1"><label><input type="checkbox" name="checkbox1[]" value="Vegetarian"/ ><span>Vegetarian</span></label><label><input type="checkbox" name="checkbox1[]" value="Gluten free diet"/ ><span>Gluten free diet</span></label><label><input type="checkbox" name="checkbox1[]" value="Lactose free diet"/ ><span>Lactose free diet</span></label><label><input type="checkbox" name="checkbox1[]" value="Other (please specify)"/ ><span>Other (please specify)</span></label></div><span class="clearfix"></span>
</div>
	<div class="element-textarea<?php frmd_add_class("textarea"); ?>"><label class="title"></label><textarea class="medium" name="textarea" cols="20" rows="5" ></textarea></div>
	<div class="element-textarea<?php frmd_add_class("textarea1"); ?>" title="If you have any special needs or requests, please specify below"><label class="title">If you have any special needs or requests, please specify below</label><textarea class="medium" name="textarea1" cols="20" rows="5" ></textarea></div>
	<div class="element-separator"><hr><h3 class="section-break-title"></h3></div>
	<div class="element-checkbox<?php frmd_add_class("checkbox2"); ?>"><label class="title">Agree Or Not<span class="required">*</span></label>		<div class="column column1"><label><input type="checkbox" name="checkbox2[]" value=" I agree to the terms and conditions described here."/ required="required"><span> I agree to the terms and conditions described here.</span></label></div><span class="clearfix"></span>
</div>
	<div class="element-radio<?php frmd_add_class("radio10"); ?>"><label class="title">Radio Buttons</label>		<div class="column column1"><label><input type="radio" name="radio10" value="Credit card payment *  " /><span>Credit card payment *  </span></label><label><input type="radio" name="radio10" value="Pay later via bank transfer " /><span>Pay later via bank transfer </span></label></div><span class="clearfix"></span>
</div>
<div class="submit"><input type="submit" value="Submit"/></div></form><script type="text/javascript" src="<?php echo dirname($form_path); ?>/formoid-flat-green.js"></script>

<!-- Stop Formoid form-->
<?php endif; ?>

<?php frmd_end_form(); ?>