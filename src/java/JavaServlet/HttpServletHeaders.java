/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaServlet;

import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Student
 */
public class HttpServletHeaders extends HttpServlet {
    
    
    
  
    
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
    
        response.setContentType("text/html");
        
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title> This is my Servlet Page</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h3> Hello Programmers </h3>");
        out.println("<table border=0>");
        Enumeration e = request.getHeaderNames();
        while(e.hasMoreElements()){
            String headerName = (String)e.nextElement();
            String headervalue = request.getHeader(headerName);
            out.println("<tr><td>");
            out.println(headerName);
            out.println("</td><td>");
            out.println(headervalue);
            out.println("</td></tr>");
        }
        out.println("</table>");
        out.println("</body>");
        out.println("</html>");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        doGet(request, response);
    } 
   
}
