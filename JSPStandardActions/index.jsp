<%@ page language='java' import="Student"%>
<%= out.println(std.setId(21))%>
<h1 style='color: brown;'>Id: <%= out.println(std.getId())%></h1>
<%= out.println(std.setName("Sai"))%>
<h1 style='color: brown;'>Name: <%= out.println(std.getName())%></h1>
<%= out.println(std.setCity("Guntur"))%>
<h1 style='color: brown;'>City: <%= out.println(std.getCity())%></h1>
