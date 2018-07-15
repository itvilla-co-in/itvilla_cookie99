<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String location = "Unknown";
Cookie[] cookieLocations = request.getCookies(); 

if(cookieLocations !=null){
	for(Cookie temp : cookieLocations){
		if(temp.getName().equals("location")){			
			location = temp.getValue();
		}
	}
}
%>
Hello user,
<br/>
Location is <%= location %>
<br/>
<a href="Cookiesetlocation.jsp">Set Location</a>
</body>
</html>