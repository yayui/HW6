<%@ page language="java" contentType="text/html;charset=UTF-8;" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="database" class="com.database.Database">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205"/>
  <jsp:setProperty property="port" name="database" value="3306"/>
  <jsp:setProperty property="db" name="database" value="4104029034"/>
  <jsp:setProperty property="user" name="database" value="4104029034"/>
  <jsp:setProperty property="password" name="database" value="Ss4104029034!"/>
</jsp:useBean>
<%
 request.setCharacterEncoding("UTF-8");
 String url = "";
 String driver = "com.mysql.jdbc.Driver";
 ResultSet rs = null;
 try{
   database.connectDB();
   String sql = "select * from ps;";
   database.query(sql);
   rs = database.getRS();
 }catch(Exception ex){
   out.println(ex);
 }
 %>
 <!DOCTYPE html>
 <html>
   <head>
     <meta charset="utf-8">
     <title>註冊</title>
     <link rel="stylesheet" href="hw6.css">
   </head>
   <body>
     <div class="container">
       <section id="content">
         <h1>註冊</h1>
         <form action="person.jsp" method="post">
           <input name="account" type="text" placeholder="帳號" autofocus required/>
           <br>
           <input name="password" id="password" type="password" placeholder="密碼" required/>
           <br>
           <input name="name" type="text" placeholder="姓名" autocomplete="off"/>
           <br>
           <input name="birth" type="text" placeholder="生日" autocomplete="off"/>
           <br>
           <div>
             <input type="submit" id="submit" value="提交"/>
           </div>
         </form>
       </section>
     </div>
   </body>
 </html>
