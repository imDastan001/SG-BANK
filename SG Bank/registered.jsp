<%@ page import = "java.sql.*"%>
<%@ page import = "java.util.Random"%>

<%
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String email = request.getParameter("email");
String address = request.getParameter("address");
String phonenumber = request.getParameter("phonenum");
String username=request.getParameter("username");
String password = request.getParameter("password");
Random random = new Random();

int first = random.nextInt(300)+624503453;
Long second = random.nextLong(359)+53320389825672l;
int fourth = random.nextInt(200)+20;
int fifth = random.nextInt(200)+500;
int six = random.nextInt(700)+300;

String cid = Integer.toString(first);
String account_num = Long.toString(second);
String creditcard = Integer.toString(fourth);
String balance = Integer.toString(fifth);
String credit_score= Integer.toString(six);


if(firstname=="" || lastname=="" || email==""||username=="" || password==""){
    %>
    <SCRIPT>
        window.alert("One of the field is empty");
        window.location='registration.html';
    </SCRIPT>
    <%

}
else if(firstname==null || lastname==null || email==null||username==null || password==null){
    %>
    <SCRIPT>
        window.alert("One of the field is empty");
        window.location='registration.html';
    </SCRIPT>
    <%

}
else{
    String uid = request.getParameter("username");

        try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","dastan");
                Statement stmt = con.createStatement();
                String sql = "select * from banking where username = '"+uid+"'";
                ResultSet rs=stmt.executeQuery(sql);
    
    if (rs.next()==true){
    %>
    <SCRIPT>
        window.alert("Username already exists");
        window.location='registration.html';
    </SCRIPT>
    <%

    }
    else{               
    String sql1 = "insert into banking values('"+firstname+" "+lastname+"','"+address+"','"+cid+"','"+email+"',"+phonenumber+",'"+account_num+"','SG015823356','"+creditcard+"','"+balance+"','"+username+"','"+password+"','"+credit_score+"')";

                stmt.executeUpdate(sql1);
                con.close();
                response.sendRedirect("login.html");

            }
        }

        catch(Exception e) {
            response.sendRedirect("myerror.jsp"); 
        }       
}    

                          
%>
