<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<body>
	<%
		Cookie cookie = null;
		Cookie[] cookies = null;
		//get an array of cookies associated with this domain
		cookies = request.getCookies();
		if(cookies != null){
			out.println("<h2> Found cookies name and value</h2>");
			for(int i=0; i< cookies.length; i++){
				cookie = cookies[i];
				out.print("name :" + cookie.getName()+ ", ");
				out.print("name :" + cookie.getValue()+ "<br/> ");
			}
		}else {
			out.print("<h2> no cookies found</h2>" );
		}
	%>
</body>
</html>