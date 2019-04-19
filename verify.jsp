<%@page contentType="text/html" import="java.sql.*"%>
<html><body>
        <h1></h1>
    <%
        String dest=request.getParameter("Search");
        

        try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
    PreparedStatement stmt = con.prepareStatement("select link from unk1 where des =?");
    stmt.setString(1, dest);  
    ResultSet rs = stmt.executeQuery();
        
   if(rs.next()){
      response.sendRedirect(rs.getString(1));
     }

        
   

        }catch(Exception e){out.println(e);}

   %>
    </body>
</html>



