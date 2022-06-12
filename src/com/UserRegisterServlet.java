package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class UserRegisterServlet
 */
@WebServlet("/UserRegisterServlet")
public class UserRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name=request.getParameter("name"); 
		String contact=request.getParameter("contact");
		String password=request.getParameter("password");
		PrintWriter out=response.getWriter();
		RequestDispatcher dispatcher=null;
		try{
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_finder?useSLL=false","root","");
			String query = "insert into user_table(user_name,phone,password) values(?,?,?)";
		 PreparedStatement pst=con.prepareStatement(query);
		 pst.setString(1,name);
		 pst.setString(2,contact);
		 pst.setString(3,password);
		 int result = pst.executeUpdate();
		 dispatcher =request.getRequestDispatcher("UserRegistration.jsp");
		 if(result>0){
			 request.setAttribute("status","succes");
		 }
		 else{
			 request.setAttribute("status","failed"); 
		 }
		 dispatcher.forward(request, response);
		 con.close();
		}
		catch(Exception e){
			out.print(e);
		}

		
		
	}
}
