package Myservlet;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class college
 */
@WebServlet("/college")
public class college extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public college() {
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
	    String email = request.getParameter("email");
	    String rollNumber = request.getParameter("id");
	    String message = request.getParameter("message");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String url = "jdbc:postgresql://localhost:5432/projectDB";
        String user = "postgres"; 
        String password = "ashi1008"; 
        
		try {
			Class.forName("org.postgresql.Driver");
            Connection conn = java.sql.DriverManager.getConnection(url, user,password);
            String query = "insert into enquiries values(?,?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setInt(3, Integer.parseInt(rollNumber));
            pstmt.setString(4, message);
            
            int rowsInserted =  pstmt.executeUpdate();
            
            if(rowsInserted>0) {
            	out.println("<html><head><title>Submission Successful</title></head><body style='font-family: Arial, sans-serif; background-color: #f3f3f3; text-align: center;'>");
                out.println("<h1 style='color: green;'>Enquiry Submitted Successfully!</h1>");
                out.println("<p>Thank you for submitting your enquiry. We will get back to you soon.</p>");
                out.println("<button style='padding: 10px 20px; font-size: 16px; background-color: darkred; color: white; border: none; border-radius: 5px; cursor: pointer;' onclick='window.location.href=\"enquiry.jsp\"'>Back to Enquiry Page</button>");
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
