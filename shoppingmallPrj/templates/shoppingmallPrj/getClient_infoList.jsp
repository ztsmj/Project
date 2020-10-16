<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>글 목록</title>
</head>
<body>
		<h1>고객 목록</h1>

		
	<table border="1">
			<tr>
				<th bgcolor="orange" width="100">번호</th>
				<th bgcolor="orange" width="200">제목</th>
				<th bgcolor="orange" width="150">작성자</th>
				<th bgcolor="orange" width="150">등록일</th>
				<th bgcolor="orange" width="100">조회수</th>
			</tr>
			<c:forEach items="${client_infoList }" var="client_info">
				<tr>
					<td>${client_info.client_id }</td>
					<td align="left"><a href="getBoard.do?seq=${client_info.client_id }">
							${client_info.client_name }</a></td>
					<td>${client_info.addr }</td>

					<td>${client_info.email }</td>
				</tr>
			</c:forEach>
		</table>
		<br> <a href="insertBoard.do">새글 등록</a>
</body>
</html>