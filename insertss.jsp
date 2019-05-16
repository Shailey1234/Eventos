<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","vasant.1");
            PreparedStatement pst = con.prepareStatement("insert into registeration(Email, Name, Last, Year, Branch, id) values(?,?,?,?,?,?)");
            pst.setString(1,request.getParameter("E-Mail"));
            pst.setString(2,request.getParameter("firstname"));
            pst.setString(3,request.getParameter("lastname"));
            
            pst.setString(4,request.getParameter("Year"));
            pst.setString(5,request.getParameter("Section"));
            pst.setInt(6,Integer.parseInt(request.getParameter("events")));
            int i=pst.executeUpdate();
            if(i>0)
            {
               out.print("<script type='text/javascript'>\n");
            out.print("alert('YOU are Successfully Registered');\n");
             out.print("window.history.forward(-1);");
            out.print("setTimeout(function(){window.location.href='Eventos.jsp'},0.0001);");
           
            out.print("</script>");
            
            }
            else
                System.out.println("not successful");
    %>
    </body>
</html>
