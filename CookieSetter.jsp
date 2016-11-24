<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//create cookies for first and last name
Cookie firstName = new Cookie("first_name", request.getParameter("first_name"));
Cookie lastName = new Cookie("last_name", request.getParameter("last_name"));
//set expiry date after 24 Hrs
firstName.setMaxAge(60*60*24);
lastName.setMaxAge(60*60*24);
//add both headers in the responce header
response.addCookie(firstName);
response.addCookie(lastName);

%>
<html>
<head>

</head>
<body>
		<ul>
			<li>
				<p><b>First name:</b>
				<%=request.getParameter("first_name") %>
				</p>
			</li>
			<li>
				<p><b>Last name:</b>
				<%=request.getParameter("last_name") %>
				</p>
			</li>
		</ul>
</body>
</html>