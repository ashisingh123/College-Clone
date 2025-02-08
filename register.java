package Myservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String name = request.getParameter("name");
		String phoneNumber = request.getParameter("phoneno");
		String father_name = request.getParameter("fname");
		String mother_name = request.getParameter("mname");
	    String email = request.getParameter("email");
	    String course = request.getParameter("course");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String url = "jdbc:postgresql://localhost:5432/projectDB";
        String user = "postgres"; 
        String password = "ashi1008"; 
        
		try {
			Class.forName("org.postgresql.Driver");
            Connection conn = java.sql.DriverManager.getConnection(url, user,password);
            String query = "insert into resgister values(?,?,?,?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, name);
            pstmt.setInt(2, Integer.parseInt(phoneNumber));
            pstmt.setString(3, father_name);
            pstmt.setString(4, mother_name);
            pstmt.setString(5, email);
            pstmt.setString(6, course);
            
            int rowsInserted =  pstmt.executeUpdate();
            
            if(rowsInserted>0) {
            	out.println("<html><head><title>Submission Successful</title></head><body style='font-family: Arial, sans-serif; background-color: #f3f3f3; text-align: center;'>");
                out.println("<h1 style='color: green;'>Regsitration Submitted Successfully!</h1>");
                out.println("<p>Thank you for submitting your registration. We will get back to you soon.</p>");
                out.println("<button style='padding: 10px 20px; font-size: 16px; background-color: darkred; color: white; border: none; border-radius: 5px; cursor: pointer;' onclick='window.location.href=\"enquiry.jsp\"'>Back to Registration Page</button>");
                out.println("</body></html>");
            }
            else {
                out.println("<p style='color: red;'>Failed to submit your enquiry. Please try again later.</p>");

            }
		}catch(Exception e){
			e.printStackTrace();
			
		}
	}

}
