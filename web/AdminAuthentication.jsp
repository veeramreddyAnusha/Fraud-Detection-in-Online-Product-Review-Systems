
<%@ include file="connect.jsp" %>

<%
   
    try
	{
	
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			String ecom=request.getParameter("ecom");
			
			
			application.setAttribute("admin",username);
			
			String sql="SELECT * FROM admin where name='"+username+"' and pass='"+Password+"' ";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
			
			application.setAttribute("ecom",ecom);
			
				response.sendRedirect("AdminMain.jsp");
			}
			else
			{
					response.sendRedirect("AdminRe-Login.jsp");
				
			}
	
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>