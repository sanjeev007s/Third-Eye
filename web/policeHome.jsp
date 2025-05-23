<%@page import="DB.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Home | Crime Prevention</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
    <style>
        /* Additional inline styles for this page - ideally, move to layout.css */
        #head {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 1em 2em;
        }

        #head h1 {
            color: #fff; /* Example color */
            margin: 0;
        }

        #head img {
            max-height: 50px; /* Adjust as needed */
        }

        #topnav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
        }

        #topnav ul li {
            margin-left: 1em;
            position: relative; /* For dropdown positioning */
        }

        #topnav ul li a {
            display: block;
            padding: 0.5em 1em;
            color: #fff;
            text-decoration: none;
            background-color: #2047A9; /* Consistent header background */
            border-radius: 5px;
        }

        #topnav ul li a.active {
            background-color: #002984; /* Darker shade for active link */
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

        #topnav ul li ul li {
            margin: 0;
        }

        #topnav ul li ul li a {
            color: #333;
            background-color: transparent;
            padding: 0.5em 1em;
            border-radius: 0;
            text-align: left;
        }

        #topnav ul li ul li a:hover {
            background-color: #e0e0e0;
        }

        #main-container {
            width: 90%; /* Adjust as needed for responsiveness */
            max-width: 1200px; /* Maximum width */
            margin: 20px auto;
            background-color: #f4f4f4;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
            gap: 20px;
            align-items: flex-start; /* Align items to the top */
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
            margin-bottom: 10px;
        }

        #latest-info table {
            width: 100%;
            background-color: #ced4d2;
            border-collapse: collapse;
            border-radius: 4px;
            overflow: hidden; /* To contain rounded corners */
        }

        #latest-info table tr {
            border-bottom: 1px solid #adb5bd;
        }

        #latest-info table tr:last-child {
            border-bottom: none;
        }

        #latest-info table td {
            padding: 8px;
            text-align: left;
        }

        #latest-info marquee p {
            color: blue;
            font-size: 1em;
            margin-bottom: 5px;
        }

        #latest-info marquee p.new-label {
            color: red;
            font-size: 0.9em;
            margin-bottom: 2px;
        }

        #main-content {
            flex-grow: 1;
            background-image: url('images/policex1.jpeg');
            background-size: cover;
            background-position: center;
            min-height: 300px; /* Adjust as needed */
            border-radius: 6px;
            display: flex;
            justify-content: center; /* Center content if needed */
            align-items: center; /* Center content vertically if needed */
            color: #fff; /* Example text color on image */
            text-align: center; /* Example text alignment */
        }

        #bottom-bar {
            background-color: #2047A9;
            color: #fff;
            text-align: center;
            padding: 1em 0;
            position: fixed; /* Or relative, depending on desired behavior */
            bottom: 0;
            left: 0;
            width: 100%;
        }
    </style>
</head>
<body id="top">
    <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user4");
        String pass=(String)st.getAttribute("pass4");
        if(user==null||pass==null)
            response.sendRedirect("AdminLogin.jsp?msg=Please login first!!!!");
    %>
    <div class="wrapper col1">
        <div id="head">
            <h1>Crime Prevention</h1>
            
            <div id="topnav">
                <ul>
                    <li><a  href="policeHome.jsp">Home</a></li>
                    <li><a href="#">Operation</a>
                        <ul>
                            <li><a href="police_view_info.jsp">View Information</a></li>
                            <li><a href="police_send_info.jsp">Send Information</a></li>
                            <li><a href="police_find_data.jsp">Find Data</a></li>
                        </ul>
                    </li>
                    <li class="last"><a href="police_change_pass.jsp">Change Password</a></li>
                    <li class="last"><a href="policeLogout">Sign Out</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div id="main-container">
        <div id="latest-info">
            <h3>Latest Information</h3>
            
            <table>
              
                <%
       
                    out.println("<table bgcolor='#CED4D2' style='height:200px;'>");
                    DBconnection db=new DBconnection();
                    try {
                        db.stmt=db.con.createStatement();
                        db.rst=db.stmt.executeQuery("select user_id,sub from membermsg where sdate=curdate()");
                        while(db.rst.next()) {
                            String id=db.rst.getString(1);
                            String sub=db.rst.getString(2);
                            out.println("<tr><td><marquee direction='up' scrollamount='2'><p style='color: blue; margin: 0;'>");
                            out.println("<p class='new-label'>New</p><a href='AdminViewInfo.jsp'>" + id + "&nbsp;" + sub + "</a></p></marquee></td></tr>");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("<tr><td>Error fetching latest information.</td></tr>");
                    } finally {
                        if (db.rst != null) db.rst.close();
                        if (db.stmt != null) db.stmt.close();
                        if (db.con != null) db.con.close();
                    }
                    
                    out.println("</table>");
                %>
                
                
            </table>
            
        </div>
        <div id="main-content">
            
        </div>
            
    </div>

    <div id="bottom-bar">
        &copy; 2025 Crime Prevention 
    </div>
</body>
</html>