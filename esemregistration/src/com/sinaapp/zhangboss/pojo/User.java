package com.sinaapp.zhangboss.pojo;




public class User {

	private long id;
	
	//是否已经缴费
	private String jiaofeiornot;
	//缴费备注说明
	private String beizhu;
	
	//以下字段对应到界面上的表单内容
	private String title;
	private String firstname;
	private String lastname;
	private String company;
	private String position;
	private String otherposition;
	private String address;
	private String city;
	private String postalcode;
	private String country;
	private String email;
	private String phone;
	private String fax;
	private String needinviforvisa;
	private String birthday;
	
	
	//后来又增加的字段
	private String sex;
	private String registtime;
	private String counofciti;
	private String passportnum;
	private String cityvisaissue;
	private String hardornot;
	private String esemregisbefjune;
	private String isernregisbefjune;
	private String promiseregisbefjune;
	private String iaseseregisbefjune;
	private String idoeseregisbefjune;
	private String esemregisaftjune;
	private String isernregisaftjune;
	private String promiseregisaftjune;
	private String iaseseregisaftjune;
	private String idoeseregisaftjune;
	
	private String sesregisbefjune;
	private String sesregisaftjune;
	
	private String areyouauthor;
	private String paperid;
	private String papertitle;
	private String specialneeds;
	private String paymethod;
	private String totalmoney;
	
	private String memberofieacm;
	private String memberid;
	
	
	private String orderid;
	
	//以下这几个字段用于记录最终的支付结果
	private String v_pmode; //支付方式
	private String v_pstatus; //支付状态
	private String v_pstring; //支付结果信息
	private String v_amount; //实际付款金额
	private String v_moneytype; //支付币种
	
	
	private String ddate; //注册日期

	public String getDdate() {
		return ddate;
	}
	public void setDdate(String ddate) {
		this.ddate = ddate;
	}
	public String getV_pmode() {
		return v_pmode;
	}
	public void setV_pmode(String v_pmode) {
		this.v_pmode = v_pmode;
	}
	public String getV_pstatus() {
		return v_pstatus;
	}
	public void setV_pstatus(String v_pstatus) {
		this.v_pstatus = v_pstatus;
	}
	public String getV_pstring() {
		return v_pstring;
	}
	public void setV_pstring(String v_pstring) {
		this.v_pstring = v_pstring;
	}
	public String getV_amount() {
		return v_amount;
	}
	public void setV_amount(String v_amount) {
		this.v_amount = v_amount;
	}
	public String getV_moneytype() {
		return v_moneytype;
	}
	public void setV_moneytype(String v_moneytype) {
		this.v_moneytype = v_moneytype;
	}
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public String getSesregisbefjune() {
		return sesregisbefjune;
	}
	public void setSesregisbefjune(String sesregisbefjune) {
		this.sesregisbefjune = sesregisbefjune;
	}
	public String getSesregisaftjune() {
		return sesregisaftjune;
	}
	public void setSesregisaftjune(String sesregisaftjune) {
		this.sesregisaftjune = sesregisaftjune;
	}
	public String getMemberofieacm() {
		return memberofieacm;
	}
	public void setMemberofieacm(String memberofieacm) {
		this.memberofieacm = memberofieacm;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getTotalmoney() {
		return totalmoney;
	}
	public void setTotalmoney(String totalmoney) {
		this.totalmoney = totalmoney;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getJiaofeiornot() {
		return jiaofeiornot;
	}
	public void setJiaofeiornot(String jiaofeiornot) {
		this.jiaofeiornot = jiaofeiornot;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getOtherposition() {
		return otherposition;
	}
	public void setOtherposition(String otherposition) {
		this.otherposition = otherposition;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPostalcode() {
		return postalcode;
	}
	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getNeedinviforvisa() {
		return needinviforvisa;
	}
	public void setNeedinviforvisa(String needinviforvisa) {
		this.needinviforvisa = needinviforvisa;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getRegisttime() {
		return registtime;
	}
	public void setRegisttime(String registtime) {
		this.registtime = registtime;
	}
	public String getCounofciti() {
		return counofciti;
	}
	public void setCounofciti(String counofciti) {
		this.counofciti = counofciti;
	}
	public String getPassportnum() {
		return passportnum;
	}
	public void setPassportnum(String passportnum) {
		this.passportnum = passportnum;
	}
	public String getCityvisaissue() {
		return cityvisaissue;
	}
	public void setCityvisaissue(String cityvisaissue) {
		this.cityvisaissue = cityvisaissue;
	}
	public String getHardornot() {
		return hardornot;
	}
	public void setHardornot(String hardornot) {
		this.hardornot = hardornot;
	}
	public String getEsemregisbefjune() {
		return esemregisbefjune;
	}
	public void setEsemregisbefjune(String esemregisbefjune) {
		this.esemregisbefjune = esemregisbefjune;
	}
	public String getIsernregisbefjune() {
		return isernregisbefjune;
	}
	public void setIsernregisbefjune(String isernregisbefjune) {
		this.isernregisbefjune = isernregisbefjune;
	}
	public String getPromiseregisbefjune() {
		return promiseregisbefjune;
	}
	public void setPromiseregisbefjune(String promiseregisbefjune) {
		this.promiseregisbefjune = promiseregisbefjune;
	}
	public String getIaseseregisbefjune() {
		return iaseseregisbefjune;
	}
	public void setIaseseregisbefjune(String iaseseregisbefjune) {
		this.iaseseregisbefjune = iaseseregisbefjune;
	}
	public String getIdoeseregisbefjune() {
		return idoeseregisbefjune;
	}
	public void setIdoeseregisbefjune(String idoeseregisbefjune) {
		this.idoeseregisbefjune = idoeseregisbefjune;
	}
	public String getEsemregisaftjune() {
		return esemregisaftjune;
	}
	public void setEsemregisaftjune(String esemregisaftjune) {
		this.esemregisaftjune = esemregisaftjune;
	}
	public String getIsernregisaftjune() {
		return isernregisaftjune;
	}
	public void setIsernregisaftjune(String isernregisaftjune) {
		this.isernregisaftjune = isernregisaftjune;
	}
	public String getPromiseregisaftjune() {
		return promiseregisaftjune;
	}
	public void setPromiseregisaftjune(String promiseregisaftjune) {
		this.promiseregisaftjune = promiseregisaftjune;
	}
	public String getIaseseregisaftjune() {
		return iaseseregisaftjune;
	}
	public void setIaseseregisaftjune(String iaseseregisaftjune) {
		this.iaseseregisaftjune = iaseseregisaftjune;
	}
	public String getIdoeseregisaftjune() {
		return idoeseregisaftjune;
	}
	public void setIdoeseregisaftjune(String idoeseregisaftjune) {
		this.idoeseregisaftjune = idoeseregisaftjune;
	}
	public String getAreyouauthor() {
		return areyouauthor;
	}
	public void setAreyouauthor(String areyouauthor) {
		this.areyouauthor = areyouauthor;
	}
	public String getPaperid() {
		return paperid;
	}
	public void setPaperid(String paperid) {
		this.paperid = paperid;
	}
	public String getPapertitle() {
		return papertitle;
	}
	public void setPapertitle(String papertitle) {
		this.papertitle = papertitle;
	}
	public String getSpecialneeds() {
		return specialneeds;
	}
	public void setSpecialneeds(String specialneeds) {
		this.specialneeds = specialneeds;
	}
	public String getPaymethod() {
		return paymethod;
	}
	public void setPaymethod(String paymethod) {
		this.paymethod = paymethod;
	}
	
	
}
