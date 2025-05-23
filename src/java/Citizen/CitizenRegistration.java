/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Citizen;

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

 */
public class CitizenRegistration extends HttpServlet {

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
            String name=request.getParameter("t1");
            String email=request.getParameter("t2");
            String pass=request.getParameter("t3");
            String dob=request.getParameter("t4");
            String addr=request.getParameter("t5");
            String pin=request.getParameter("t6");
           String home=request.getParameter("t7");
              String city=request.getParameter("t8");
           String state=request.getParameter("t9");
           String phone=request.getParameter("t10");
              String type="Citizen";
              
               DBconnection db=new DBconnection();
               db.pstmt=db.con.prepareStatement("insert into citizenregistration(name,email,dob,address,pin,home_no,city,state,phone,rdate) values(?,?,?,?,?,?,?,?,?,curdate())");
               db.pstmt.setString(1, name);
               db.pstmt.setString(2, email);
               db.pstmt.setString(3, dob);
              
               db.pstmt.setString(4, addr);
               db.pstmt.setString(5, pin);
               db.pstmt.setString(6, home);
               db.pstmt.setString(7, city);
               db.pstmt.setString(8, state);
               db.pstmt.setString(9, phone);
              
               
               int x=db.pstmt.executeUpdate();
               if(x>0)
               {
               
              db.pstmt=db.con.prepareStatement("insert into userlogin(user_id,password,user_type) values(?,?,?)");
              db.pstmt.setString(1, email);
              db.pstmt.setString(2, pass);
              db.pstmt.setString(3, type);
                   int y=db.pstmt.executeUpdate();
                   if(y>0)
                   {
                    st.setAttribute("user", email);
                    st.setAttribute("pass", pass);
                    st.setAttribute("email", email);
                   response.sendRedirect("CitizenRegistrationConform.jsp");
                   }
               else
               {
               response.sendRedirect("CitizenRegistration.jsp?msg=User already Registred...!!...!!");
               
               
               }
               }
               else
               {
               response.sendRedirect("CitizenRegistration.jsp?msg=User already Registred...!!");
               
              
               }
        } catch(Exception e) {            
           //out.println("<script>alert('Duplicate Entry is not Allowed')</script>");
           //response.sendRedirect("CitizenRegistration.jsp?msg=Please fill data proper way...!!");
           e.printStackTrace();    
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
