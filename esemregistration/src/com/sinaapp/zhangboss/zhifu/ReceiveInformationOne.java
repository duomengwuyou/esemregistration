package com.sinaapp.zhangboss.zhifu;

/**
 * 页面版接收订单所使用
 * @author Administrator
 *
 */
public class ReceiveInformationOne {
	private String v_url; //返回地址
	private String v_oid; //订单编号
	private String v_pmode; //支付方式
	private String v_pstatus; //支付状态
	private String v_pstring; //支付结果信息
	private String v_amount; //实际付款金额
	private String v_moneytype; //支付币种
	
	//现在最好验证下面一个就可以了  上面两个属于遗留下来的
	private String v_md5money; 
	private String v_md5info;
	private String v_sign;
	public String getV_url() {
		return v_url;
	}
	public void setV_url(String v_url) {
		this.v_url = v_url;
	}
	public String getV_oid() {
		return v_oid;
	}
	public void setV_oid(String v_oid) {
		this.v_oid = v_oid;
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
	public String getV_md5money() {
		return v_md5money;
	}
	public void setV_md5money(String v_md5money) {
		this.v_md5money = v_md5money;
	}
	public String getV_md5info() {
		return v_md5info;
	}
	public void setV_md5info(String v_md5info) {
		this.v_md5info = v_md5info;
	}
	public String getV_sign() {
		return v_sign;
	}
	public void setV_sign(String v_sign) {
		this.v_sign = v_sign;
	}

}
