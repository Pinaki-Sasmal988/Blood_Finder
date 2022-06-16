package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AreaSearch")
public class AreaSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AreaSearch() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		Connection con;
		PreparedStatement psmt;
		ResultSet rs;
		
		try
		{
			String driver="com.mysql.jdbc.Driver";
			Class.forName(driver);
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_finder?useSLL=false","root","");
			
			String area=request.getParameter("area");
			String query = "select * from blood_bank where location=?";
			psmt=con.prepareStatement(query);
			psmt.setString(1,area);
			
			
			rs=psmt.executeQuery();
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("UserViewTable.jsp");
			
			request.setAttribute("bank_name",rs.getString("bank_name"));
			request.setAttribute("bank_id", String.valueOf(rs.getInt("bank_id")));
			ArrayList<String> obj=new ArrayList<String>();
			while(rs.next()){
				obj.add(rs.getString("bank_name"));
			}
	        request.setAttribute("data", obj);
			/*out.print("<html>"
					+ "<head><title></title></head>"
					+ "<body>"
					+ "<table border='1' width='800' align='center'>"
					+ "<tr>"
					+ "<th>BANK NAME</th>"
					+ "</tr>"
					);
			while(rs.next())
			{
				out.print("<tr>"
						+ "<td>"+rs.getString("bank_name")+"</td>"
						+ "<td>"
						+ "<a href='/Todo_List/#/"+rs.getString("bank_id")+"' style='margin-right:20px'>"
								+ "SEARCH</a>"
						+ "</td>"
						+ "</tr>");
			}
			out.print("</table>"
					+ "</body>"
					+ "</html>");*/
			
			requestDispatcher.forward(request, response);
			con.close();
			
			
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

}
