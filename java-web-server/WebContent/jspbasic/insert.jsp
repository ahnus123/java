<%@page import="dept.DeptDTO"%>
<%@page import="dept.DeptDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("EUC-KR");			//한글 인코딩
		response.setContentType("text/html;charset=euc-kr");
		String deptNo = request.getParameter("deptNo");
		String deptName = request.getParameter("deptName");
		String loc = request.getParameter("loc");
		String tel = request.getParameter("tel");
		String mgr = request.getParameter("mgr");
		
		DeptDTO dept = new DeptDTO(deptNo, deptName, loc, tel, mgr);
		
		DeptDAOImpl daoImpl = new DeptDAOImpl();
		int result = daoImpl.insert(dept);
		
		if(result > 0) { %>
			<h1><%= result %>개의 행 삽입 성공</h1>
		<% } else if(result == 0) { %>
			<h1>삽입 실패</h1>
		<% } %>
</body>
</html>