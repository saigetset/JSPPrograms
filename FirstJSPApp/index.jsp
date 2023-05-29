<%!
	static{
		System.out.println("JSP Servlet loading...");
	}
%>

<%!
	public index_jsp(){
		System.out.println("JSP Servlet Instantiation...");
	}
%>

<%!
	public void jspInit(){
		System.out.println("JSP Servlet Initialization...");
	}
%>

<%!
	public void jspDestroy(){
		System.out.println("JSP Servlet De-Instantiation...");
	}
%>

<%--
	public void _jspService(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException{
		System.out.println("JSP Servlet Request Processing...");
	}
--%>
<!--Duplicate method _jspService(HttpServletRequest, HttpServletResponse) in type index_jsp-->

<%@ page import='java.util.Date'%><!--using import attribute here -->
<%@ page session='true' %><!--using session attribute here-->
<!--can also use <%@ page import='java.util.Date' session='true' %>-->

<h1>The server time is:<%= new Date() %></h1>
<h1>session is: <%= session%></h1>

<%--
<%@ page contentType='image/jpg'%>

<img src="C:\Users\krish\Desktop\mypic.jpeg"> --%>

<%@ page isELIgnored='false'%>
<h1 style="color: brown">Username is: <%= request.getParameter("userName")%></h1>
<h1 style="color: brown">Accessing Username through EL: ${param.userName}</h1><%-- This is EL syntax and param is the reference of request parameters--%>

<%--
<%@ page buffer='32kb' autoFlush='true'%>
<%
for(int i=0;i<1000000;i++) 
--%> <%-- if autoFlush is set to false, the it will process until 32kb and will terminate abnormally --%>

<%@ page info="Hello sai"%>
<h1 style="color:brown">The info is <%= getServletInfo()%></h1><%-- By default the info contains Jasper Version--%>

<%--
<%@ page errorPage='error.jsp'%>
<%
String a=null;
out.println(a.toString());
%>
--%>

