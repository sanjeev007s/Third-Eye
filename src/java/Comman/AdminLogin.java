package Comman;

import DB.DBconnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *

 */
public class AdminLogin extends HttpServlet {

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
            String type=request.getParameter("t1");
            String user=request.getParameter("t2");
            String pass=request.getParameter("t3");
            DBconnection db=new DBconnection();
           
            db.pstmt=db.con.prepareStatement("select user_type from adminlogin where user_id='"+user+"' and password='"+pass+"'");
           
             db.rst= db.pstmt.executeQuery();
             if(db.rst.next())
             {
           
             String type1=db.rst.getString(1);
          
                  if(type1.equals(type)&&type1.equals("police"))
                      {
          
                 st.setAttribute("user4", user);
               st.setAttribute("pass4", pass);
              //st.setAttribute("type1",type1);
              response.sendRedirect("policeHome.jsp");
             
             }
              else           
                 if(type1.equals(type)&&type1.equals("Admin"))
                 {
                    st.setAttribute("user5", user);
             st.setAttribute("pass5", pass);
             // st.setAttribute("type2",type1);
                 response.sendRedirect("AdminHome.jsp");
                 }
               else
                {
                  
                  
                 
                     response.sendRedirect("AdminLogin.jsp?msg=Invalid User id and password!!!");        
             }
             }
               else
             {
                 response.sendRedirect("AdminLogin.jsp?msg=Invalid user type.!!!");
             
             }
        
             
             
             

        } catch(Exception e) {            
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
