/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Hostel;

import DB.DBconnection;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;
import java.io.File;
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
public class SendInformationHostel extends HttpServlet {

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
        String fileName=null;
        //String value = null;
        String fileSavePath =getServletContext( ).getRealPath("/");
        File f = null;
        int i = 0;
        long s = 0;
        try {
            HttpSession st=request.getSession();
           String user=(String)st.getAttribute("user2");
           String[] value=new String[3];
           MultipartParser mps = new MultipartParser(request, 5 * 1024 * 1024);
            Part part;
            while((part = mps.readNextPart()) != null) 
            {
                String name = part.getName();
                if (part.isParam()) {

                    System.out.print(i);
                    ParamPart paramPart = (ParamPart) part;
                    value[i]= paramPart.getStringValue();
                    i++;
               } 
                else if (part.isFile()) {
                    FilePart filePart = (FilePart) part;
                    fileName = filePart.getFileName();
                    System.out.println(fileName);
                    if (fileName != null) {
                        long fileSize = filePart.writeTo(
                                new java.io.File(fileSavePath));
                     }
                }
            }


           DBconnection db=new DBconnection();
           db.pstmt=db.con.prepareStatement("insert into membermsg(user_id,sub,msg,dfile,sdate)values(?,?,?,?,curdate())");
            db.pstmt.setString(1, user);
            db.pstmt.setString(2, value[0]);
            db.pstmt.setString(3, value[1]);
             db.pstmt.setString(4, ("./"+fileName));
            
            int x=db.pstmt.executeUpdate();
         if(x>0)
         {
           response.sendRedirect("SendHostelMsg.jsp?msg=Information send sucessfull!!!");
         }
         else
         {
         out.println("<h1>Error!!!!!!!!!!</h1>");
         
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
