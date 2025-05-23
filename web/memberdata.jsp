<%-- 
    Document   : memberdata
    Created on : Apr 21, 2015, 1:39:49 AM
    Author     : AJAY YADAV
--%>

<%@page import="DB.DBconnection"%>
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
        String user=(String)st.getAttribute("user5");
        String pass=(String)st.getAttribute("pass5");
        if(user==null||pass==null)
          response.sendRedirect("index.jsp?msg=Please login first!!!!");  
        %>
        <center>
            <div style="width:900px;height: 120px;background-image: url('images/66.jpg');">
            </div>
            <h3><p align="left"> <a href="AdminHome.jsp">Back</a></p></h3>
            <h2 style="color:darkmagenta;">Customer Data</h2>
            <form method="post" action="findMember.jsp">
            <table>  
                <tr><td><h3 style="color: blueviolet;">Enter ID_no</h3></td><td></td><td><input type="text" name="t1"></td><td></td><td><input type="submit" value="Find"></td></tr>
                
                
            </table>
            </form>
              <%
           
            String cus_id=request.getParameter("t1");
            DBconnection db=new DBconnection();
            db.pstmt=db.con.prepareStatement("select h_name,h_category,city,room,state,address,phone,fax,email,rdate from hotelregistration where registration='"+cus_id+"'");
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
             String itime=db.rst.getString(8);
              String out_date=db.rst.getString(9);
              String outtime=db.rst.getString(10);
              //String img=db.rst.getString(11);
            
            out.println("<frameset widht=700px height=500px>");
           
           out.println("<table width=700px height=400px >");
           //out.println("<tr><td><img src='"+img+"'width='100px' height='100px'></img</td></tr>");
            out.println("<tr width=400px style='background-color:#F6D6D2;height:30px;'><td align=center>Hotel name:-</td><td width=60px></td><td>"+name+"</td></tr>");
            out.println("<tr width=400px style='background-color:#CDF0F4;'><td align=center>Category:-</td><td width=60px></td><td>"+lname+"</td></tr>");
            out.println("<tr width=400pxstyle='background-color:#F8F5B1;'><td align=center>City:-</td><td width=60px></td><td>"+gender+"</td></tr>");
            out.println("<tr width=400px style='background-color:#CDF0F4;'><td align=center>total room:-</td><td width=60px></td><td>"+phone+"</td></tr>");
            out.println("<tr width=400px style='background-color:#D1EBAF;'><td align=center>State:-</td><td width=60px></td><td>"+pnumber+"</td></tr>");
            out.println("<tr width=400px style='background-color:#B1DBAB;'><td align=center>Address:-</td><td width=60px></td><td>"+room+"</td></tr>");
            out.println("<tr width=400px style='background-color:#CDF0F4;'><td align=center>Phone:-</td><td width=60px></td><td>"+date+"</td></tr>");
            out.println("<tr width=400px style='background-color:#D7D6BF;'><td align=center>Fax number:-</td><td width=60px></td><td>"+itime+"</td></tr>");
            out.println("<tr width=400px style='background-color:#CDF0F4;'><td align=center>Email:-</td><td width=60px></td><td>"+out_date+"</td></tr>");
            out.println("<tr width=400px style='background-color:#D7D6BF;'><td align=center>Registration Date:-</td><td width=60px></td><td>"+outtime+"</td></tr>");
            
            out.println("</table><br></br>");
            
            out.println("</frameset>");
           
                       }
             else
                                 {
             out.println("Invalid customer Id..!!!!!");
             }
                    %>
             </center>
    </body>

</html>
