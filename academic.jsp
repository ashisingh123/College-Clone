<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hehhe</title>
</head>
<body>
<% 

        String Roll_Number = request.getParameter("id");
      //  out.println("<p>Debug: Received ID = " + Roll_Number + "</p>");
        
		String url = "jdbc:postgresql://localhost:5432/projectDB";
        String user = "postgres"; 
        String password = "ashi1008"; 
        ResultSet rs = null;
        
		try {
			Class.forName("org.postgresql.Driver");
            Connection conn = java.sql.DriverManager.getConnection(url, user,password);
            String query ="SELECT academic.\"Roll_Number\", academic.\"Name\", performance.\"Percentage\" " +
                    "FROM academic " +
                    "JOIN performance ON academic.\"Roll_Number\" = performance.\"Roll_Number\" " +
                    "WHERE academic.\"Roll_Number\" = ?";
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, Integer.parseInt(Roll_Number));
            rs = pstmt.executeQuery();            
                  
            out.println("<html><body>");
            if (rs.next()) {
            	   out.println("<html><head><title>Student Details</title></head>");
            	    out.println("<body style='font-family: Arial, sans-serif; background-color: #660d10; color: white; text-align: center;'>");
            	    out.println("<h1 style='color: #ffcccb; margin-bottom: 30px;'>Student Details</h1>");
            	    out.println("<div style='display: inline-block; text-align: left; padding: 20px; background-color: #333333; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);'>");
            	    out.println("<p style='margin: 10px 0; font-size: 18px; color: #e6e6e6;'><strong>ID:</strong> " + rs.getString("Roll_Number") + "</p>");
            	    out.println("<p style='margin: 10px 0; font-size: 18px; color: #e6e6e6;'><strong>Name:</strong> " + rs.getString("Name") + "</p>");
            	    out.println("<p style='margin: 10px 0; font-size: 18px; color: #e6e6e6;'><strong>Percentage:</strong> " + rs.getString("Percentage") + "%</p>");
            	    out.println("</div>");
            	    out.println("<br>");
            	    out.println("<button style='margin-top: 20px; padding: 10px 20px; font-size: 18px; background-color: darkred; color: white; border: none; border-radius: 5px; cursor: pointer;' onclick='window.location.href=\"academic.html\"'>Back to previous Page</button>");
            	    out.println("</body></html>"); 
            	 
                     // out.println("<h1>Student Details</h1>");
                      //  out.println("<p>ID: " + rs.getString("Roll_Number") + "</p>");
                     //   out.println("<p>Name: " + rs.getString("Name") + "</p>");
                    //    out.println("<p>Percentage: " + rs.getString("Percentage") + "</p>"); 
                        
            } else {
                out.println("<h1>No record found</h1>");
            }
            out.println("</body></html>");
		}catch(Exception e){
			out.println("<p>Error: " + e.getMessage() + "</p>");
			e.printStackTrace();
		}
	
		%>
</body>
</html>