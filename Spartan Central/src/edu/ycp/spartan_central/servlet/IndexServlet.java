package edu.ycp.spartan_central.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ycp.spartan_central.model.Update;

public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		Update[] updates = {
			new Update(
				"Go Green Day",
				"Come to Spartan Central on March 29th to help us celebrate Go Green Day! Meet notable YCP Alumn and experience what it's like to be a student here at York College!",
				3, 20, 2017
			),
			new Update(
				"Successful Grand Opening",
				"Thank you to everyone that came out last night for our Grand Opening! We are so excited to be a part of the York Community and can't wait to have you back as customers!",
				2, 4, 2017
			),
			new Update(
				"Grand Opening Tonight!",
				"Come out tonight for our Ribbon Cutting Ceremony to meet the team behind the business as well as get the chance to be our first customer!",
				2, 3, 2017
			),
			new Update(
				"Ribbon Cutting Ceremony",
				"We will be having our ribbon cutting ceremony February 3rd. Please come out and support us!",
				1, 20, 2017
			),
		};
		
		req.setAttribute("updateList", updates);
		req.getRequestDispatcher("/_view/index.jsp").forward(req, resp);
	}
}