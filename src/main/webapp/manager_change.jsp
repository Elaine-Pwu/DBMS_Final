<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manager Page</title>
    <link rel="stylesheet" href="manager_change.css">
</head>
<body>
    <h1>您已登記的值班時間</h1>
    <section>
        <%@ page import="java.sql.*" %>
        <%@ page import="javax.sql.*" %>
        <%@ page import="javax.naming.*" %>
     

        <% Connection con = null;
        try {
           // Context ctx = new InitialContext();
            //DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/myDatasource");
           // con = ds.getConnection();

            //PreparedStatement statement = con.prepareStatement("SELECT d.duty_date, d.start_time, d.end_time, d.duty_time_id, u.user_id, u.grade " +
                   // "FROM register AS r, duty_time AS d, user AS u " +
                    //"WHERE r.duty_time_id = d.duty_time_id " +
                  //  "AND r.registrant_id = u.user_id " +
                   // "AND r.verdict = TRUE " +
                    //"ORDER BY d.duty_time_id");

            PreparedStatement statementU = con.prepareStatement("UPDATE `duty_date` SET part_time_job_employees_num = 1  WHERE duty_time_id = '1' ");
            
            // Rest of the code

        } catch (Exception e) {
            // Handle exceptions
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    // Handle exceptions
                }
            }
        }
        %>
        
      
        
		
        <input type="checkbox" value="2023-07-01 08:00~12:00">2023-07-01 08:00~12:00</input>
        Update Employees SET age = 30 where id = 101;
        <input type="checkbox" value="2023-07-03 10:00~20:00">2023-07-03 10:00~20:00</input>
        <br><br>
        <input type="checkbox">2023-07-01 16:00~20:00</input>
        <input type="checkbox">2023-07-03 08:00~12:00</input>
        <br><br>
        <input type="checkbox">2023-07-03 12:00~16:00</input>
        <input type="checkbox">2023-07-03 16:00~20:00</input>
    </section>
    <br><br>
    <button class="button_change" onclick="window.location.href='manager_success.jsp'">確認修改</button>
</body>
</html>




