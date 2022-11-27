<%@ page import = "java.sql.*"%>
<%@ page import = "java.util.Random"%>
<%
Random random = new Random();
String username = (String)session.getAttribute("USERNAME");
String Balance = (String)session.getAttribute("BALANCE");
String user_entered_password = request.getParameter("password");
String real_password = (String)session.getAttribute("PASSWORD");
String account_number = request.getParameter("acount_number");
String id = Integer.toString(random.nextInt(200)+200);
if(username==null || !real_password.equals(user_entered_password)){

    %>
    <SCRIPT>
        window.alert("INVALID CREDENTIALS");
        window.location='profile.jsp';
    </SCRIPT>
    <%


}
else if(account_number==null || account_number ==""){
    %>
    <SCRIPT>
        window.alert("Invalid Account Number");
        window.location='profile.jsp';
    </SCRIPT>
    <%
 
}

else{

String new_amnt = Integer.toString((Integer.parseInt(Balance))-Integer.parseInt(request.getParameter("amnt")));
if(Integer.parseInt(new_amnt)<=0){
    %>
    <SCRIPT>
        window.alert("Insuffiecient amount");
        window.location='profile.jsp';
    </SCRIPT>
    <%
}
else{
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","dastan");
    Statement stmt = con.createStatement();
    out.print(new_amnt+""+username);
    String sql = "update banking set balance='"+new_amnt+"' where username='"+username+"'";
    String sql2 = "insert into transaction values('"+username+"','Sucessfull','Transfer_money','"+request.getParameter("amnt")+"','"+id+"')";
    stmt.executeQuery(sql);
    stmt.executeQuery(sql2);
    session.setAttribute("BALANCE",new_amnt);
    response.sendRedirect("profile.jsp");
    con.close();  


 }
 catch(Exception e){response.sendRedirect("myerror.jsp"); }  
}
}

%>