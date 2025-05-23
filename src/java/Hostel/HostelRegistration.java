/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Hostel;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import DB.DBconnection;
/**
 *
 * 
 */
public class HostelRegistration extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
           HttpSession st=request.getSession();
            String hname=request.getParameter("t1");
            String ownername=request.getParameter("t2");
            String city=request.getParameter("t3");
            String reg=request.getParameter("t4");
            String room=request.getParameter("t5");
            String state=request.getParameter("t6");
           String addr=request.getParameter("t7");
              String pin=request.getParameter("t8");
           String phone=request.getParameter("t9");
           String fax=request.getParameter("t10");
            String email=request.getParameter("t11");
            String website=request.getParameter("t12");
            String type="Hostel";
               String user=city.concat(reg);
               
               String pass=reg;
              
              
               DBconnection db=new DBconnection();
               db.pstmt=db.con.prepareStatement("insert into hostelregistration(hname,ownername,city,reg,room,state,address,pin,phone,fax,email,website,rdate) values(?,?,?,?,?,?,?,?,?,?,?,?,curdate())");
               db.pstmt.setString(1, hname);
               db.pstmt.setString(2, ownername);
               db.pstmt.setString(3, city);
               db.pstmt.setString(4, reg);
               db.pstmt.setString(5, room);
               db.pstmt.setString(6, state);
               db.pstmt.setString(7, addr);
               db.pstmt.setString(8, pin);
               db.pstmt.setString(9, phone);
               db.pstmt.setString(10, fax);
               db.pstmt.setString(11, email);
               db.pstmt.setString(12, website);
               int x=db.pstmt.executeUpdate();
               if(x>0)
               {
               
              db.pstmt=db.con.prepareStatement("insert into userlogin(user_id,password,user_type) values(?,?,?)");
              db.pstmt.setString(1, user);
              db.pstmt.setString(2, pass);
              db.pstmt.setString(3, type);
                   int y=db.pstmt.executeUpdate();
                   if(y>0)
                   {
                    st.setAttribute("user", user);
                    st.setAttribute("pass", pass);
                    st.setAttribute("email", email);
                    st.setAttribute("hname", hname);
                   response.sendRedirect("HostelRegistrationConform.jsp");
                   }
               else
               {
               response.sendRedirect("HostelRegistration.jsp?msg=User already Registred...!!...!!");
               
               
               }
               }
               else
               {
               response.sendRedirect("HostelRegistration.jsp?msg=User already Registred...!!");
               
              
               }
        } catch(Exception e) {            
           out.println("<script>alert('Duplicate Entry is not Allowed')</script>");
           response.sendRedirect("HostelRegistration.jsp?msg=Please fill data proper way...!!");
               
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
} 
            
            
        