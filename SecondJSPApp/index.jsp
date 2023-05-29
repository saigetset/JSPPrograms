<%@ page language='java'%>
<%@ include file='second.jsp'%>
<h1 style="color:brown"> The request method is <%= request.getMethod()%></h1>
<h1 style="color:brown"> The request user is <%= request.getParameter("user")%></h1>
<h1 style="color:brown"> The request ip address is <%= request.getRemoteAddr()%></h1>
<h1 style="color:brown"> The respone content type is <%= response.getContentType()%></h1>
<br />
<br />

<h1 style="color:brown"> The Context name is <%= application.getServletContextName()%></h1>
<h1 style="color:brown"> The Context parameters are <%= application.getInitParameter("user")%></h1>
<h1 style="color:brown"> The Context parameters are <%= application.getInitParameter("password")%></h1>
<br />
<br />

<h1 style="color:brown"> The Config name is <%= config.getServletName()%></h1>
<h1 style="color:brown"> The Config parameters are <%= config.getInitParameter("college")%></h1>
<h1 style="color:brown"> <%= config.getInitParameter("school")%></h1>
<br />
<br />

<h1 style="color:brown"> The Session id is <%= session.getId()%></h1>
<h1 style="color:brown"> Session Time out is <%= session.getMaxInactiveInterval()%> seconds</h1>
<br />
<br />

<%pageContext.include("second.jsp");%>

