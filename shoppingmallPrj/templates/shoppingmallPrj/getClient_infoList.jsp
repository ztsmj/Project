<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�� ���</title>
</head>
<body>
		<h1>�� ���</h1>

		
	<table border="1">
			<tr>
				<th bgcolor="orange" width="100">��ȣ</th>
				<th bgcolor="orange" width="200">����</th>
				<th bgcolor="orange" width="150">�ۼ���</th>
				<th bgcolor="orange" width="150">�����</th>
				<th bgcolor="orange" width="100">��ȸ��</th>
			</tr>
			<c:forEach items="${client_infoList }" var="client_info">
				<tr>
					<td>${client_info.client_id }</td>
					<td align="left"><a href="getBoard?seq=${client_info.client_id }">
							${client_info.client_name }</a></td>
					<td>${client_info.addr }</td>

					<td>${client_info.email }</td>
				</tr>
			</c:forEach>
		</table>
		<br> <a href="insertBoard">���� ���</a>
</body>
</html>