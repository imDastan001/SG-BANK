<%@ page import = "java.sql.*"%>

<%
String uid = request.getParameter("username");
String pass = request.getParameter("password");

try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","dastan");
    Statement stmt = con.createStatement();
    String sql = "select * from banking where username = '"+uid+"' and password = '"+pass+"'";
    
    ResultSet rs=stmt.executeQuery(sql);
    
if (rs.next()==true){
    String name = rs.getString("name");
    String ADDRESS = rs.getString("ADDRESS");
    String CID = rs.getString("CID");
    String EMAIL = rs.getString("EMAIL");
    String PHONENUMBER = rs.getString("PHONENUMBER");
    String ACCOUNT_NUMBER = rs.getString("ACCOUNT_NUMBER");
    String IFSC_CODE = rs.getString("IFSC_CODE");
    String CREDIT_CARD = rs.getString("CREDIT_CARD");
    String BALANCE = rs.getString("BALANCE");
    String USERNAME = rs.getString("USERNAME");
    String CREDIT = rs.getString("CREDIT");

    session.setAttribute("name",name);
    session.setAttribute("ADDRESS", ADDRESS );
    session.setAttribute("CID",CID);
    session.setAttribute("EMAIL",EMAIL);
    session.setAttribute("PHONENUMBER",PHONENUMBER);
    session.setAttribute("ACCOUNT_NUMBER",ACCOUNT_NUMBER);
    session.setAttribute("IFSC_CODE",IFSC_CODE);
    session.setAttribute("CREDIT_CARD",CREDIT_CARD);
    session.setAttribute("BALANCE",BALANCE);
    session.setAttribute("USERNAME",USERNAME);
    session.setAttribute("credit",CREDIT);
    session.setAttribute("PASSWORD",pass);

    response.sendRedirect("profile.jsp");
}
else{
    %>
    <SCRIPT>
        window.alert("Incorrect login credentials");
        window.location='login.html';
    </SCRIPT>

<%

     }

con.close();  
 }catch(Exception e){
    response.sendRedirect("myerror.jsp");    
}  


%>