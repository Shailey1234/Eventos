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
        <table>
            
        <%     
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","vasant.1");
        PreparedStatement pst = con.prepareStatement("SELECT * from notification;");
        ResultSet rs = pst.executeQuery();
         while(rs.next())
          {
            %>
            
            <tr>Book Name</tr>
            
            <td><%= rs.getString("B_Name")%></td>
            
            <tr>Book Author </tr> <td><%= rs.getString("B_Author")%></td>
            <%
          }
         %>
      </table> 
    </body>
</html>
