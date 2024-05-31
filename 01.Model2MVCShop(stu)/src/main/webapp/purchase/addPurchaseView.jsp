<%@page import="com.model2.mvc.service.purchase.vo.PurchaseVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ page import="com.model2.mvc.service.user.vo.*" %>
<%@ page import="com.model2.mvc.service.product.vo.*" %>
<%@ page import="com.model2.mvc.service.purchase.vo.*" %>


<%
	UserVO userVO = (UserVO)request.getAttribute("userVO");
	ProductVO productVO = (ProductVO)request.getAttribute("productVO");
	int prodNo = Integer.parseInt(request.getParameter("prodNo"));
	request.setAttribute("productVO", productVO);	
%>

<html>
<head>
<title>��ǰ����</title>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

<script type="text/javascript">
<!--
function fncAddPurchase() {
	document.addPurchase.submit();
}
-->
</script>

<script type="text/javascript" src="../javascript/calendar.js">
</script>

</head>

<body bgcolor="#ffffff" text="#000000">

<form name="addPurchase"  method="post" action="/addPurchase.do">

<input type = "hidden" name = "prodNo" value = <%= prodNo %> />

<table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0">
	<tr>
		<td width="15" height="37">
			<img src="/images/ct_ttl_img01.gif" width="15" height="37"/>
		</td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left:10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">��ǰ����</td>
					<td width="20%" align="right">&nbsp;</td>
				</tr>
			</table>
		</td>
		<td width="12" height="37">
			<img src="/images/ct_ttl_img03.gif" width="12" height="37"/>
		</td>
	</tr>
</table>

<table width="600" border="0" cellspacing="0" cellpadding="0" align="center" style="margin-top:13px;">
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="300" class="ct_write">
			��ǰ��ȣ <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="105"> <%= prodNo %></td>
				</tr>
			</table>
		</td>
	</tr>

	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			��ǰ�� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01"> <%= productVO.getProdName() %>
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
		<tr>
		<td width="104" class="ct_write">
			��ǰ������ <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01"> <%= productVO.getProdDetail() %>
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>

	<tr>
		<td width="104" class="ct_write">
			��������
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01"><%= productVO.getManuDate() %>
		</td>
	</tr>

	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
		
	<tr>
		<td width="104" class="ct_write">
			����
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01"><%= productVO.getPrice() %>��
		</td>
	</tr>

	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			�������
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01"><%= productVO.getRegDate() %>
		</td>
	</tr>

	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>

	<tr>
		<td width="104" class="ct_write">
			������ ���̵� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01"><%= userVO.getUserId() %>
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			���Ź��
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
      		<select name="paymentOption" class="ct_input_g" style="width: 100px; height: 19px" maxLength="20">
				<option value="1" selected="selected">���ݱ���</option>
				<option value="2">�ſ뱸��</option>
    		</select>
		</td>
	</tr>

	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			�������̸� 
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
		 <input type = "text" name = "receiverName" value = <%= userVO.getUserName() %>
		 	class = "ct_input_g" style = "width:100px; height:19px" maxLength="20"/>
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			�����ڿ���ó 
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
		 <input type = "text" name = "receiverPhone" value = <%= userVO.getPhone() %>
		 	class = "ct_input_g" style = "width:100px; height:19px" maxLength="20"/>
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>	
	
	<tr>
		<td width="104" class="ct_write">
			�������ּ� 
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
		 <input type = "text" name = "dlvyAddr" value = <%= userVO.getAddr() %>
		 	class = "ct_input_g" style = "width:100px; height:19px" maxLength="20"/>
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>

	<tr>
		<td width="104" class="ct_write">
			�����ڿ�û����
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
		 <input type = "text" name = "dlvyRequest" value = ""
		 	class = "ct_input_g" style = "width:100px; height:19px" maxLength="20"/>
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
		
	<tr>
		<td width="104" class="ct_write">
			���������� 
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="dlvyDate" readonly="readonly" class="ct_input_g" 
							style="width:100px; height:19px"  maxLength="20" />
			&nbsp;<img src="../images/ct_icon_date.gif" width= "15" height= "15"
			onclick = "show_calendar('document.addPurchase.dlvyDate', document.addPurchase.dlvyDate.value)"/>				
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
</table>	

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	<tr>
		<td width="53%"></td>
		<td align="center">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
						<a href="javascript:fncAddPurchase();">����</a>
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
					</td>
					<td width="30"></td>					
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
						<a href="javascript:history.go(-1);">���</a>
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23">
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

</form>
</body>
</html>