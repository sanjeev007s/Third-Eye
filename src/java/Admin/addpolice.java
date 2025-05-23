/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin;

import DB.DBconnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *

 */
public class addpolice extends HttpServlet {

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
            
            String name=request.getParameter("t1");
            String post=request.getParameter("c");
            String batch=request.getParameter("t2");
            String p_station=request.getParameter("t3");
            String state=request.getParameter("t4");
            String addr=request.getParameter("t5");
           String pin=request.getParameter("p");
              String phone=request.getParameter("t6");
           String f_no=request.getParameter("t7");
           String email=request.getParameter("t8");
               String type="police";
               
               DBconnection db=new DBconnection();
               db.pstmt=db.con.prepareStatement("insert into police(name,post,batch_no,police_station,state,address,pin,phone,fax_no,email) values(?,?,?,?,?,?,?,?,?,?)");
               db.pstmt.setString(1, name);
               db.pstmt.setString(2, post);
               db.pstmt.setString(3, batch);
               db.pstmt.setString(4, p_station);
               db.pstmt.setString(5, state);
               db.pstmt.setString(6, addr);
               db.pstmt.setString(7, pin);
               db.pstmt.setString(8, phone);
               db.pstmt.setString(9, f_no);
               db.pstmt.setString(10, email);
               
               int x=db.pstmt.executeUpdate();
               if(x>0)
               {
               
              db.pstmt=db.con.prepareStatement("insert into adminlogin(user_id,password,user_type) values(?,?,?)");
              db.pstmt.setString(1, email);
              db.pstmt.setString(2, name);
              db.pstmt.setString(3, type);
                   int y=db.pstmt.executeUpdate();
                   if(y>0)
                   {
                    
                   response.sendRedirect("addpolice.jsp?msg=registration Sucessful!!!");
                   }
               else
               {
               response.sendRedirect("addpolice.jsp?msg=User already Registred...!!...!!");
               
               
               }
               }
               else
               {
               response.sendRedirect("HotelRegistration.jsp?msg=User already Registred...!!");
               
              
               }

            
            
        }catch(Exception e) {            
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
