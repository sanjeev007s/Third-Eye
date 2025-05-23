
<%@page import="DB.DBconnection" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user1");
        String pass=(String)st.getAttribute("pass1");
        if(user==null||pass==null)
          response.sendRedirect("index.jsp?msg=Please login first!!!!");  
        %>
        <center>
            <div style="width:900px;height: 120px;background-image: url('images/checkin.jpeg');">
            </div>
            <h3><p align="left"> <a href="HotelHome.jsp" style="display: inline-block; background-color: #4CAF50; color: white; padding: 10px 20px; margin-bottom: 15px; border: none; border-radius: 5px; text-decoration: none; font-weight: bold;">Back</a></p></h3>
            <h2 style="color:darkmagenta;">Customer Check_Out</h2>
            <form method="get" action="CustomerChickoutData.jsp">
            <table>  
                <tr><td><h3 style="color: blueviolet;">Enter customer Id_no</h3></td><td></td><td><input type="text" name="t1"></td><td></td><td><input type="submit" value="Submit" style="display: inline-block; background-color: #4CAF50; color: white; padding: 10px 20px; margin-bottom: 15px; border: none; border-radius: 5px; text-decoration: none; font-weight: bold;" value="SUBMIT"></td></tr>
                
                
            </table>
            </form>
             <form method=get action=CustomerChickout>
            <%
          
            
            String cus_id=request.getParameter("t1");
            DBconnection db=new DBconnection();
            db.pstmt=db.con.prepareStatement("select name,last_name,gender,phone,number_p,room_n,cdate,i_time from customerCheckIn where id_number='"+cus_id+"' and member_id='"+user+"'");
             db.rst= db.pstmt.executeQuery();
             if(db.rst.next())
             {
           
             String name=db.rst.getString(1);
             String lname=db.rst.getString(2);
             String gender=db.rst.getString(3);
             String phone=db.rst.getString(4);
             String pnumber=db.rst.getString(5);
             String room=db.rst.getString(6);
             String date=db.rst.getString(7);
             String i_time=db.rst.getString(8);
             
            
             session.setAttribute("cus_id", cus_id);
             
            
            out.println("<frameset widht=900px height=500px>");
           
            out.println("<table width=600px height=370px >");
            out.println("<tr width=400px style='background-color:#F6D6D2;'><td align=right>Customer name:-</td><td width=80px></td><td>"+name+"</td></tr>");
            out.println("<tr width=400px style='background-color:#CDF0F4;'><td align=right>Last name:-</td><td width=80px></td><td>"+lname+"</td></tr>");
            out.println("<tr width=400pxstyle='background-color:#F8F5B1;'><td align=right>Gender:-</td><td width=80px></td><td>"+gender+"</td></tr>");
            out.println("<tr width=400px style='background-color:#CDF0F4;'><td align=right>Phone no:-</td><td width=80px></td><td>"+phone+"</td></tr>");
            out.println("<tr width=400px style='background-color:#D1EBAF;'><td align=right>Total person:-</td><td width=80px></td><td>"+pnumber+"</td></tr>");
            out.println("<tr width=400px style='background-color:#B1DBAB;'><td align=right>Room no:-</td><td width=80px></td><td>"+room+"</td></tr>");
            out.println("<tr width=400px style='background-color:#CDF0F4;'><td align=right>Chaeck_in Date:-</td><td width=80px></td><td>"+date+"</td></tr>");
            out.println("<tr width=400px style='background-color:#D7D6BF;'><td align=right>Chaeck_in Time:-</td><td width=80px></td><td>"+i_time+"</td></tr>");
            
            out.println("</table><br></br>");
            
            out.println("</frameset>");
           
                       }
             else
                                 {
             out.println("Invalid customer id!!!!!");
             }
                    %>
                <tr><td><input type=submit value=Check_out style="display: inline-block; background-color: #4CAF50; color: white; padding: 10px 20px; margin-bottom: 15px; border: none; border-radius: 5px; text-decoration: none; font-weight: bold;" ></td></tr>
                 </form>
        </center>
    </body>

</html>
