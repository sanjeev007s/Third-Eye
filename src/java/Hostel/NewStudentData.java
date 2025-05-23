package Hostel;

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
 * 
 */
public class NewStudentData extends HttpServlet {

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
            String user=(String)st.getAttribute("user2");
       String name=request.getParameter("t1");
            String col=request.getParameter("t2");
            String id=request.getParameter("t3");
            String gender=request.getParameter("t4");
            String phone=request.getParameter("t5");
            String course=request.getParameter("t6");
            String room=request.getParameter("t7");
           String city=request.getParameter("t8");
              String pin=request.getParameter("t9");
           String addr=request.getParameter("t10");
           String state=request.getParameter("t11");
            String email=request.getParameter("t12");
                DBconnection db=new DBconnection();
               db.pstmt=db.con.prepareStatement("insert into newstudentdata(member_id,name,college,id,gender,phone,course,room,city,pin,address,state,email,rdate) values(?,?,?,?,?,?,?,?,?,?,?,?,?,curdate())");
               db.pstmt.setString(1, user);
               db.pstmt.setString(2, name);
               db.pstmt.setString(3, col);
               db.pstmt.setString(4, id);
               db.pstmt.setString(5, gender);
               db.pstmt.setString(6, phone);
               db.pstmt.setString(7, course);
               db.pstmt.setString(8, room);
               db.pstmt.setString(9, city);
               db.pstmt.setString(10, pin);
               db.pstmt.setString(11, addr);
               db.pstmt.setString(12, state);
               db.pstmt.setString(13, email);
               int x=db.pstmt.executeUpdate();
               if(x>0)
               {
               response.sendRedirect("updateNewstudentData.jsp?msg=Student data store sucessfull..!!");
               }
              
            
            
        } catch(Exception e) {            
          out.println("<script>alert('Duplicate Entry is not Allowed')</script>");
           response.sendRedirect("updateNewstudentData.jsp?msg=Please fill data proper way...!!");
            
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
