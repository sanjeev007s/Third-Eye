/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import DB.DBconnection;
import java.util.Calendar;
/**
 *
 * 
 */
public class CustomerChickout extends HttpServlet {

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
                             int a=1;
                              Calendar c=Calendar.getInstance();
             int h=c.get(Calendar.HOUR);
              int m=c.get(Calendar.MINUTE);
               int s=c.get(Calendar.SECOND);
               String time=h+":"+m+":"+s;
                  String cus_id=(String)st.getAttribute("cus_id"); 
                  String user=(String)st.getAttribute("user1");
                  DBconnection db=new DBconnection();
                  db.pstmt=db.con.prepareStatement("select status from customerCheckIn where id_number='"+cus_id+"' and member_id='"+user+"'");
                   db.rst=db.pstmt.executeQuery();
                   if(db.rst.next())
                   {
                   int status=db.rst.getInt(1);
                   if(status==0)
                   {
                   db.pstmt=db.con.prepareStatement("update customerCheckIn set status=?,out_date=curdate(),out_time=? where id_number='"+cus_id+"' and member_id='"+user+"'");
                    db.pstmt.setInt(1, a);
                    db.pstmt.setString(2, time);
                   int i=db.pstmt.executeUpdate();
                   {
                   response.sendRedirect("CustomerChickout.jsp?msg=Customer Check out sucessfull");
                   
                   }
                   
                   }
                   else
                   {
                   response.sendRedirect("CustomerChickout.jsp?msg=Customer already check out.....");
                   
                   }
                   
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
