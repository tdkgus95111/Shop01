<%@page import="dbpkg.PriceVO"%>
<%@page import="dbpkg.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbpkg.ShopDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css?ver=11" type="text/css">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	ShopDAO dao = ShopDAO.getInstance();
	
	ArrayList<PriceVO> listPrice = dao.listPrice();
%>
	<header>
		<h1>쇼핑몰 회원관리</h1>
	</header>
	<nav>
		<ul>
			<li><a href="insertMem.jsp">회원등록</a></li>
			<li><a href="listMem.jsp">회원등록조회/수정</a></li>
			<li><a href="listPrice.jsp">회원매출조회</a></li>
			<li><a href="index.jsp">홈으로.</a></li>
		</ul>
	</nav>
	<section>
		<h2>회원목록조회/수정</h2>
		<table border="1" class="tbl2">
			<tr>
				<th>회원번호</th>
				<th>회원성명</th>
				<th>고객등급</th>
				<th>매출</th>
			</tr>
			<%
				if(listPrice != null) {
					for(PriceVO e : listPrice) {
			%>
			<tr>
				<td><%=e.getCustno() %></td>
				<td><%=e.getCustname() %></td>
				<td><%=e.getGrade() %></td>
				<td><%=e.getTotal() %></td>				
			</tr>
			<%
					}
				}
			%>
		</table>
	</section>
	<footer>
		HREKOREA Copyright&copy; 2016 All Right
	</footer>
</body>
</html>