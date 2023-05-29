<%@ page language='java'%>
<jsp:useBean id="std" class="com.sai.bean.Student"/>
<% std.setId(21);%>
<h1 style='color: brown;'>Id: <% out.println(std.getId());%></h1>
<% std.setName("Sai");%>
<h1 style='color: brown;'>Name: <% out.println(std.getName());%></h1>
<% std.setCity("Guntur");%>
<h1 style='color: brown;'>City: <% out.println(std.getCity());%></h1>
<br />
<br />


<h1 style='color:brown'>Setting values through JSP setProperty action</h1>
<jsp:setProperty name='std' property='id' value='25'/>
<jsp:setProperty name='std' property='name' value='Hari'/>
<jsp:setProperty name='std' property='city' value='Guntur'/>
<br />


<h1 style='color:brown'>Getting values through JSP getProperty action</h1>
<h1 style='color:brown'><jsp:getProperty name='std' property='id' /></h1>
<h1 style='color:brown'><jsp:getProperty name='std' property='name' /></h1>
<h1 style='color:brown'><jsp:getProperty name='std' property='city' /></h1>

<jsp:include page='second.jsp' />