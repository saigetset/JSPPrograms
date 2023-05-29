<%@ page language='java' import='java.sql.*'%>
<%!
Connection con =null;
ResultSet rs=null;
PreparedStatement pstmt1=null;
PreparedStatement pstmt2=null;

public void jspInit(){
    ServletConfig config = getServletConfig();
    try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection(config.getInitParameter("url"),config.getInitParameter("user"),config.getInitParameter("password"));
    pstmt1=con.prepareStatement("Insert into emp(name,age,city) values(?,?,?)");
    pstmt2=con.prepareStatement("select * from emp");
    }catch(Exception e){
        e.printStackTrace();
    }
}
%>

<%
String choice=request.getParameter("choice");
if(choice.equalsIgnoreCase("register")){
    pstmt1.setString(1,request.getParameter("name"));
    pstmt1.setInt(2,Integer.parseInt(request.getParameter("age")));
    pstmt1.setString(3,request.getParameter("city"));

    int val = pstmt1.executeUpdate();
    if(val==1){
%>
<h1 style="color:brown">Inserted successfully</h1>
<%
    }else{
%>
<h1 style="color:brown">Insertion failed!</h1>
<%
}
%>

<%
}else{
    rs = pstmt2.executeQuery();
%>
<table align="center" bgcolor="yellow">
    <tr><th>ID</th><th>Name</th><th>Age</th><th>City</th></tr>
    <%
        while(rs.next()){
    %>
            <tr>
                <td><%= rs.getInt(1)%></td>
                <td><%= rs.getString(2)%></td>
                <td><%= rs.getInt(3)%></td>
                <td><%= rs.getString(4)%></td>
            </tr>
    <%    
        }
    %>
</table>
<%}%>
<br />
<br />
<h3 style="color:brown" align="center"><a href="./index.html">register one more?</a></h3>