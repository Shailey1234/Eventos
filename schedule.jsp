
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Jua">
    <link rel="manifest" href="manifest.json"><%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <script src="register.js"></script>
    <script src="fetch.js"></script>
    <script src="promise.js"></script>
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color:#000066;
   
}

li {
    float: left;
    border-right:1px solid #bbb;
}

li:last-child {
    border-right: none;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    background-color: #003366;
}

li a:hover:not(.active) {
    background-color: #B0B0B0;
}

.active {
    background-color: #003366;
}
.w-container:after,.w-container:before,.w-panel:after,.w-panel:before,.w-row:after,.w-row:before,.w-row-padding:after,.w-row-padding:before,
.w-cell-row:before,.w-cell-row:after,.w-clear:after,.w-clear:before,.w-bar:before,.w-bar:after {
  content: "";
  display: table;
  clear: both;
}
.w-container,.w-panel {
  padding: 0.01em 16px;
}
.w-xxxlarge {
  font-size: 48px!important;
}
.w-row-padding,.w-row-padding>.w-half,.w-row-padding>.w-third,.w-row-padding>.w-twothird,.w-row-padding>.w-threequarter,.w-row-padding>.w-quarter,.w-row-padding>.w-col {
  padding: 0 8px;
}

</style>
</head>
<body background="images\f2.jpg" width="100%" height="100%">
<div>
<div>
<h2 style="color:white;">CENTERSTAGE EVENTS</h2>
<p style="color:white;"><font size="5px"><i>Cognizance hosts various multifaceted events<br> ranging from Robotics to Star Concert,<br> Coding to Gaming and<br> Dancing to Singing.</i></font> </p>
<ul >
  <li><a class="active" href="Eventos.jsp">Home</a></li>
  <li><a href="#Coding">Coding</a></li>
  <li><a href="#robotics">ROBOTICS</a></li>
  <li><a href="#gaming">GAMING</a></li>
   <li><a href="#dancing">DANCE</a></li>
  <li><a href="#singing">SINGING</a></li>
  <li><a href="#concert">CONCERT</a></li>
  </ul>
</div>
<div>
    <!-- hello-->
    <div class="w-container " id="Coding" style="margin-top:75px">
    <h1 class="w-xxxlarge"  style="color:white;"><b>Coding</b></h1>
    
    <div class="w-row-padding">
        <%
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","vasant.1");
            PreparedStatement pst = con.prepareStatement("select Startdate,about.id,Venue,EventName,Summary ,Award from event,about where Category='Coding' and about.id=event.id;");
            ResultSet rs = pst.executeQuery();
            while(rs.next())
            {
                
            PreparedStatement ps = con.prepareStatement("select url from picture where id=?");
            ps.setInt(1,rs.getInt("id"));
            ResultSet r = ps.executeQuery();
            r.next();
        %>
    <div class="w-half">
         <form method="post">
        <input type="hidden" name="id" value="<%= rs.getString("id") %>"/>
        <input type="hidden" name="url" value="<%= r.getString("url") %>"/>
        <img src="<%=r.getString("url")%>"  style ="box-shadow: 15px 15px; height : 30% ; width : 30%; border-radius: 30%;">
        <p><font size="4" style="color:white;"><b><i><br><%= rs.getString("EventName") %><br>
                    <%= rs.getDate("Startdate")%><br>
                    Venue:<%= rs.getString("Venue")%><br>
                    Cash Price<%= rs.getString("Award")%><br>
                     </i></b>
                   <%= rs.getString("Summary")%></font>
        </p>
        <input type ="submit" formaction="Details.jsp" value="View Details" style="background-color:red;color: white;
		padding: 10px 10px;
		margin: 8px 0;
		border: none;
		cursor: pointer;
		width: 40%;
		opacity: 0.9;"/> 
         </form>
 </div>
                   <br>
        <br>
<%}%>
    
  </div>
 </div>
<!-- robotics-->
  <div class="w-container" id="robotics" style="margin-top:75px">
    <h1 class="w-xxxlarge"style="color:white;"><b>ROBOTICS</b></h1> 
    <div class="w-row-padding">
        <%
              pst = con.prepareStatement("select Startdate,about.id,Venue,EventName,Summary ,Award from event,about where Category='Electronics' and about.id=event.id;");
            rs = pst.executeQuery();
            while(rs.next())
            {
                
            PreparedStatement ps = con.prepareStatement("select url from picture where id=?");
            ps.setInt(1,rs.getInt("id"));
            ResultSet r = ps.executeQuery();
            r.next();
        %>
    <div class="w-half">
         <form method="post">
        <input type="hidden" name="id" value="<%= rs.getString("id") %>"/>
        <input type="hidden" name="url" value="<%= r.getString("url") %>"/>
        <img src="<%=r.getString("url")%>"  style ="box-shadow: 15px 15px; height : 30% ; width : 30%; border-radius: 30%;">
        <p><font size="4" style="color:white;"><b><i><br><%= rs.getString("EventName") %><br>
                    <%= rs.getDate("Startdate")%><br>
                    Venue:<%= rs.getString("Venue")%><br>
                    Cash Price<%= rs.getString("Award")%><br>
                     </i></b>
                   <%= rs.getString("Summary")%></font>
        </p>
        <input type ="submit" formaction="Details.jsp" value="View Details" style="background-color:red;color: white;
		padding: 10px 10px;
		margin: 8px 0;
		border: none;
		cursor: pointer;
		width: 40%;
		opacity: 0.9;"/> 
         </form>
 </div>
                   <br>
        <br>
<%}%>
 </div>
  


</div>
 <!-- gaming -->

<div class="w-container" id="gaming" style="margin-top:75px">
    <h1 class="w-xxxlarge"  style="color:white;"><b>GAMING</b></h1>
    
    <div class="w-row-padding">
        <%
          pst = con.prepareStatement("select Startdate,about.id,Venue,EventName,Summary ,Award from event,about where Category='Gaming' and about.id=event.id;");
            rs = pst.executeQuery();
            while(rs.next())
            {
                
            PreparedStatement ps = con.prepareStatement("select url from picture where id=?");
            ps.setInt(1,rs.getInt("id"));
            ResultSet r = ps.executeQuery();
            r.next();
        %>
    <div class="w-half">
         <form method="post">
        <input type="hidden" name="id" value="<%= rs.getString("id") %>"/>
        <input type="hidden" name="url" value="<%= r.getString("url") %>"/>
        <img src="<%=r.getString("url")%>"  style ="box-shadow: 15px 15px; height : 30% ; width : 30%; border-radius: 30%;">
        <p><font size="4" style="color:white;"><b><i><br><%= rs.getString("EventName") %><br>
                    <%= rs.getDate("Startdate")%><br>
                    Venue:<%= rs.getString("Venue")%><br>
                    Cash Price<%= rs.getString("Award")%><br>
                     </i></b>
                   <%= rs.getString("Summary")%></font>
        </p>
        <input type ="submit" formaction="Details.jsp" value="View Details" style="background-color:red;color: white;
		padding: 10px 10px;
		margin: 8px 0;
		border: none;
		cursor: pointer;
		width: 40%;
		opacity: 0.9;"/> 
         </form>
        
 </div>
                   <br>
        <br>
<%}%>

  </div>
 </div>
 

<!-- dancing -->

<div class="w-container" id="dancing" style="margin-top:75px">
    <h1 class="w-xxxlarge"  style="color:white;"><b>DANCE</b></h1>
    
    <div class="w-row-padding">
     <%
          pst = con.prepareStatement("select Startdate,about.id,Venue,EventName,Summary ,Award from event,about where Category='Dance' and about.id=event.id;");
            rs = pst.executeQuery();
            while(rs.next())
            {
                
            PreparedStatement ps = con.prepareStatement("select url from picture where id=?");
            ps.setInt(1,rs.getInt("id"));
            ResultSet r = ps.executeQuery();
            r.next();
        %>
    <div class="w-half">
         <form method="post">
        <input type="hidden" name="id" value="<%= rs.getString("id") %>"/>
        <input type="hidden" name="url" value="<%= r.getString("url") %>"/>
        <img src="<%=r.getString("url")%>"  style ="box-shadow: 15px 15px; height : 30% ; width : 30%; border-radius: 30%;">
        <p><font size="4" style="color:white;"><b><i><br><%= rs.getString("EventName") %><br>
                    <%= rs.getDate("Startdate")%><br>
                    Venue:<%= rs.getString("Venue")%><br>
                    Cash Price<%= rs.getString("Award")%><br>
                     </i></b>
                   <%= rs.getString("Summary")%></font>
        </p>
      <input type ="submit" formaction="Details.jsp" value="View Details" style="background-color:red;color: white;
		padding: 10px 10px;
		margin: 8px 0;
		border: none;
		cursor: pointer;
		width: 40%;
		opacity: 0.9;"/> 
         </form>
        
        <br>
        <br>
 </div>
<%}%>
  </div>
 </div>
 

 <!-- singing -->  

<div class="w-container" id="singing" style="margin-top:75px">
    <h1 class="w-xxxlarge"  style="color:white;"><b>SINGING</b></h1>
    
    <div class="w-row-padding">
     <%
          pst = con.prepareStatement("select Startdate,about.id,Venue,EventName,Summary ,Award from event,about where Category='Singing' and about.id=event.id;");
            rs = pst.executeQuery();
            while(rs.next())
            {
                
            PreparedStatement ps = con.prepareStatement("select url from picture where id=?");
            ps.setInt(1,rs.getInt("id"));
            ResultSet r = ps.executeQuery();
            r.next();
        %>
    <div class="w-half">
        <form method="post">
        <input type="hidden" name="id" value="<%= rs.getString("id") %>"/>
        <input type="hidden" name="url" value="<%= r.getString("url") %>"/>
        <img src="<%=r.getString("url")%>"  style ="box-shadow: 15px 15px; height : 30% ; width : 30%; border-radius: 30%;">
        <p><font size="4" style="color:white;"><b><i><br><%= rs.getString("EventName") %><br>
                    <%= rs.getDate("Startdate")%><br>
                    Venue:<%= rs.getString("Venue")%><br>
                    Cash Price<%= rs.getString("Award")%><br>
                     </i></b>
                   <%= rs.getString("Summary")%></font>
        </p>
        <input type ="submit" formaction="Details.jsp" value="View Details" style="background-color:red;color: white;
		padding: 10px 10px;
		margin: 8px 0;
		border: none;
		cursor: pointer;
		width: 40%;
		opacity: 0.9;"/>  
      
        </form>
       </div>
      <br>
        <br>
<%}%>
  </div>
 </div>
 

 <!-- concert -->

<div class="w-container" id="concert" style="margin-top:75px">
    <h1 class="w-xxxlarge"  style="color:white;"><b>CONCERT</b></h1>
    
    <div class="w-row-padding">
    <div class="w-half">
    <img src="images\jb.jpg" style ="box-shadow: 15px 15px; height : 30% ; width : 30%; border-radius: 30%;" >
        <p style="color:white;"><font size="4"><b><i>
            JASSI GILL & BABBAL RAI</font>
        </i></b></p>
 </div>

    <div class="w-half">
    <p  style="color:white;"><font size="4"><b><i>Get ready to dance to the punjabi beats<br>With none other than "Jassi Gill & Babbal Rai.</font>
        </i></b></p>
    </div>
  </div>
 </div>
 </div>
</div>



</body>
</html>