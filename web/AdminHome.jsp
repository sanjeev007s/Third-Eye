


<%@page import="java.util.Calendar"%>
<%@page import="DB.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Home | Crime Prevention</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
    <style>
        #head {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 1em 2em;
        }

        #head h1 {
            color: #fff;
            margin: 0;
        }

        #head img {
            max-height: 50px;
        }

        #topnav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
        }

        #topnav ul li {
            margin-left: 1em;
            position: relative;
        }

        #topnav ul li a {
            display: block;
            padding: 0.5em 1em;
            color: #fff;
            text-decoration: none;
            background-color: #2047A9;
            border-radius: 5px;
        }

        #topnav ul li a.active {
            background-color: #002984;
        }

        #topnav ul li ul {
            position: absolute;
            top: 100%;
            left: 0;
            background-color: #f9f9f9;
            border: 1px solid #ccc;
            border-top: none;
            display: none;
            padding: 0;
            margin: 0;
            min-width: 150px;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
            z-index: 10;
            border-radius: 0 0 5px 5px;
        }

        #topnav ul li:hover > ul {
            display: block;
        }

        #topnav ul li ul li a {
            color: #333;
            background-color: transparent;
            padding: 0.5em 1em;
            text-align: left;
        }

        #topnav ul li ul li a:hover {
            background-color: #e0e0e0;
        }

        #main-container {
            width: 90%;
            max-width: 1200px;
            margin: 20px auto;
            background-color: #f4f4f4;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
            gap: 20px;
            align-items: flex-start;
        }

        #latest-info {
            width: 300px;
            background-color: #e9ecef;
            padding: 15px;
            border-radius: 6px;
        }

        #latest-info h3 {
            color: darkred;
            margin-top: 0;
        }

        #latest-info table {
            width: 100%;
            background-color: #ced4d2;
            border-collapse: collapse;
        }

        #latest-info table td {
            padding: 8px;
        }

        #latest-info marquee p {
            color: blue;
            font-size: 1em;
        }

        #latest-info .new-label {
            color: red;
            font-size: 0.9em;
        }

        #main-content {
            flex-grow: 1;
            background-image: url('images/policex1.jpeg');
            background-size: cover;
            background-position: center;
            min-height: 300px;
            border-radius: 6px;
        }

        #bottom-bar {
            background-color: #2047A9;
            color: #fff;
            text-align: center;
            padding: 1em 0;
            margin-top: 20px;
        }
    </style>
</head>
<body id="top">
<%
    HttpSession st = request.getSession();
    String user = (String) st.getAttribute("user5");
    String pass = (String) st.getAttribute("pass5");
    if (user == null || pass == null) {
        response.sendRedirect("AdminLogin.jsp?msg=Please login first!!!!");
    }
%>

<div class="wrapper col1">
    <div id="head">
        <h1>Crime Prevention</h1>
        
        <div id="topnav">
            <ul>
                <li><a href="AdminHome.jsp">Home</a></li>
                <li><a href="addpolice.jsp">Police Officer</a></li>
                <li><a href="#">Information</a>
                    <ul>
                        <li><a href="AllMemberData.jsp">View Member Data</a></li>
                        <li><a href="AdminViewInfo.jsp">View Information</a></li>
                        <li><a href="AdminSendInformattion.jsp">Send Information</a></li>
                        <li><a href="ViewFeedback.jsp">View Feedback</a></li>
                        <li><a href="findMember.jsp">Find Member</a></li>
                    </ul>
                </li>
                <li><a href="#">Operation</a>
                    <ul>
                        <li><a href="FindData.jsp">Find Data in Hotel</a></li>
                        <li><a href="FindData3.jsp">Find Data in Hostel</a></li>
                        <li><a href="#">Find Data in City</a></li>
                        <li><a href="FindAllData.jsp">Find all data</a></li>
                    </ul>
                </li>
                <li class="last"><a href="AdminLogout">Sign Out</a></li>
            </ul>
        </div>
    </div>
</div>

<div id="main-container">
    <div id="latest-info">
        <h3>Latest Information</h3>
        <%
            DBconnection db = new DBconnection();
            try {
                db.stmt = db.con.createStatement();
                db.rst = db.stmt.executeQuery("select user_id,sub from membermsg where sdate=curdate()");
                while (db.rst.next()) {
                    String id = db.rst.getString(1);
                    String sub = db.rst.getString(2);
        %>
                    <table>
                        <tr>
                            <td>
                                <marquee direction='up' scrollamount='2'>
                                    <p class='new-label'>New</p>
                                    <p><a href='AdminViewInfo.jsp'><%=id%>&nbsp;<%=sub%></a></p>
                                </marquee>
                            </td>
                        </tr>
                    </table>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<p>Error fetching latest information.</p>");
            } finally {
                if (db.rst != null) db.rst.close();
                if (db.stmt != null) db.stmt.close();
                if (db.con != null) db.con.close();
            }
        %>
    </div>

    <div id="main-content">
        <!-- Optional: Content or welcome message here -->
    </div>
</div>

<div id="bottom-bar">
    &copy; 2025 Crime Prevention
</div>

</body>
</html>
