<%@page contentType="text/html" import="java.sql.*"%>
<html><body>
        
    <%
        String des=request.getParameter("des");
        String link = request.getParameter("link");
        
  
        try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
    PreparedStatement stmt = con.prepareStatement("insert into unk1 values (?,?)");
    stmt.setString(1, des);    stmt.setString(2, link);
    int row = stmt.executeUpdate();
    if(row==1) { 
out.println("Successfully Archieved"); 

}
    
    }catch(Exception e){out.println(e);}
  
  
    %>
    </body>
</html>