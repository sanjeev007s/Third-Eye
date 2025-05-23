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
import DB.DBconnection;
import javax.servlet.http.HttpSession;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;
import java.io.File;
import java.io.FileInputStream;
import java.util.Calendar;
import javax.swing.JOptionPane;


/**
 *
 * 
 */
public class CustomerChickIn extends HttpServlet {

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
             String[] value = new String[13];

            String user=(String)st.getAttribute("user1");
            /*String name1=request.getParameter("t1");
            String last=request.getParameter("t2");
            String id=request.getParameter("t3");
            String gender=request.getParameter("t4");
            String phone=request.getParameter("t5");
            String pno=request.getParameter("t6");
            String room=request.getParameter("t7");
           String city=request.getParameter("t8");
              String pin=request.getParameter("t9");
           String addr=request.getParameter("t10");
           String state=request.getParameter("t11");
            String email=request.getParameter("t12");
          /*System.out.println("name  "+name1);
          System.out.println("last Name  "+last);
          System.out.println("id  "+id);
          System.out.println("gender  "+gender);
          System.out.println("phone  "+phone);
          System.out.println("pno  "+pno);
          System.out.println("name  "+name1);
          */
          Calendar c=Calendar.getInstance();
             int h=c.get(Calendar.HOUR);
              int m=c.get(Calendar.MINUTE);
               int s1=c.get(Calendar.SECOND);
               String time=h+":"+m+":"+s1;
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
               db.pstmt=db.con.prepareStatement("insert into customerCheckIn(member_id,name,last_name,id_number,gender,phone,number_p,room_n,city,pin,address,state,email,cdate,i_time,photo) values(?,?,?,?,?,?,?,?,?,?,?,?,?,curdate(),?,?)");
               db.pstmt.setString(1,user);
               db.pstmt.setString(2, value[0]);
               db.pstmt.setString(3, value[1]);
               db.pstmt.setString(4, value[2]);
               db.pstmt.setString(5, value[3]);
               db.pstmt.setString(6, value[4]);
               db.pstmt.setString(7, value[5]);
               db.pstmt.setString(8, value[6]);
               db.pstmt.setString(9, value[7]);
               db.pstmt.setString(10, value[8]);
               db.pstmt.setString(11, value[9]);
               db.pstmt.setString(12, value[10]);
               db.pstmt.setString(13, value[11]);
               db.pstmt.setString(14, time);
               //System.out.println("Ajay.................."+fileName);
                db.pstmt.setString(15, ("./"+fileName));
                
               int x=db.pstmt.executeUpdate();
               if(x>0)
               {
               response.sendRedirect("CustomerCheckin.jsp?msg=Customer data store sucessfull..!!");
               }
              
            
            
        } catch(Exception e) {            
          e.printStackTrace();;
            out.println("<script>alert('Duplicate Entry is not Allowed')</script>");
          // response.sendRedirect("CustomerCheckin.jsp?msg=Please fill data proper way...!!");
            
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
