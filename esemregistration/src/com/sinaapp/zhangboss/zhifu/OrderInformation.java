package com.sinaapp.zhangboss.zhifu;

/**
 * 发送订单所使用
 * @author Administrator
 *
 */
public class OrderInformation {

	private int v_mid; //商户编号
	private String v_oid; //订单编号 20100101-888-12345  订单日期-商户编号-流水号
	private String v_rcvname; //收货人姓名 --商户编号
	private String v_rcvaddr; //收货人地址 -- 商户编号
	private String v_rcvtel; //收货人电话 -- 商户编号
	private String v_rcvpost; //收获邮政编码 --商户编号
	private String v_amount; //订单总金额 小数点后两位
	private String v_ymd; //订单产生日期  20100101
	private String v_orderstatus; //商户配货状态  写为1
	private String v_ordername; //订单人姓名--商户编号
	private String v_moneytype; //付款类型 美元是1
	private String v_url; //返回商户地址
	
	private String v_md5info; //秘钥
	
	private String ddate; //额外信息
	
	public String getDdate() {
		return ddate;
	}
	public void setDdate(String ddate) {
		this.ddate = ddate;
	}
	public String getV_md5info() {
		return v_md5info;
	}
	public void setV_md5info(String v_md5info) {
		this.v_md5info = v_md5info;
	}
	public int getV_mid() {
		return v_mid;
	}
	public void setV_mid(int v_mid) {
		this.v_mid = v_mid;
	}
	public String getV_oid() {
		return v_oid;
	}
	public void setV_oid(String v_oid) {
		this.v_oid = v_oid;
	}
	public String getV_rcvname() {
		return v_rcvname;
	}
	public void setV_rcvname(String v_rcvname) {
		this.v_rcvname = v_rcvname;
	}
	public String getV_rcvaddr() {
		return v_rcvaddr;
	}
	public void setV_rcvaddr(String v_rcvaddr) {
		this.v_rcvaddr = v_rcvaddr;
	}
	public String getV_rcvtel() {
		return v_rcvtel;
	}
	public void setV_rcvtel(String v_rcvtel) {
		this.v_rcvtel = v_rcvtel;
	}
	public String getV_rcvpost() {
		return v_rcvpost;
	}
	public void setV_rcvpost(String v_rcvpost) {
		this.v_rcvpost = v_rcvpost;
	}
	public String getV_amount() {
		return v_amount;
	}
	public void setV_amount(String v_amount) {
		this.v_amount = v_amount;
	}
	public String getV_ymd() {
		return v_ymd;
	}
	public void setV_ymd(String v_ymd) {
		this.v_ymd = v_ymd;
	}
	public String getV_orderstatus() {
		return v_orderstatus;
	}
	public void setV_orderstatus(String v_orderstatus) {
		this.v_orderstatus = v_orderstatus;
	}
	public String getV_ordername() {
		return v_ordername;
	}
	public void setV_ordername(String v_ordername) {
		this.v_ordername = v_ordername;
	}
	public String getV_moneytype() {
		return v_moneytype;
	}
	public void setV_moneytype(String v_moneytype) {
		this.v_moneytype = v_moneytype;
	}
	public String getV_url() {
		return v_url;
	}
	public void setV_url(String v_url) {
		this.v_url = v_url;
	}

}
