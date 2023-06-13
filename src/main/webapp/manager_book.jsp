<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page import="javax.naming.*" %>

    <% 
	

    // Database connection details
	String connectionURL = "jdbc:mysql://my-database-1.ck5d9adueifx.ap-southeast-2.rds.amazonaws.com/part-time training system"; 
    String username = "admin";
    String password = "LN6MVu8Jr38vmyylUBD0";

    // Establishing database connection
    Connection conn = null;
    //Statement statement = null;
    //ResultSet resultSet = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(connectionURL, username, password);
        Statement statement=conn.createStatement();
    } catch (Exception e) {
        e.printStackTrace();
    }

    try {

       // PreparedStatement statementA = con.prepareStatement("INSERT INTO `register` VALUES (?, ?, FALSE, NULL)");

        PreparedStatement statementC = conn.prepareStatement("UPDATE duty_time  SET full_time_job_employees_num= 1 WHERE duty_time_id = 35 ");
        statementC.executeUpdate();
        statementC.close();
        // Rest of the code

    } catch (Exception e) {
        // Handle exceptions
    } 
    %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manager Page</title>
    <link rel="stylesheet" href="manager_book.css">
</head>
<body>
    <h1>尚有空缺的值班時間</h1>
    <section>
    <form action="manager_book.jsp" method="post">
        <input type="checkbox">2023-07-01 08:00~12:00</input>
        <input type="checkbox">2023-07-03 10:00~20:00</input>
        <br><br>
        <input type="checkbox">2023-07-01 16:00~20:00</input>
        <input type="checkbox">2023-07-03 08:00~12:00</input>
        <br><br>
        <input type="checkbox">2023-07-03 12:00~16:00</input>
        <input type="checkbox">2023-07-03 16:00~20:00</input>
        <br><br>
        </form>
    </section>


    <button class="book" onclick="window.location.href='manager_success.jsp'">登記所選時間</button>
</body>
</html>
