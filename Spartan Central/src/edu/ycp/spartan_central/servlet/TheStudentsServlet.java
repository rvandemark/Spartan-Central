package edu.ycp.spartan_central.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ycp.spartan_central.model.Bio;

public class TheStudentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		Bio[] bios = {
			new Bio("Ben O'Connor", "Community Engagement", "A Fake Made-Up Major", "I'm an Irish Sophomore at York College of Pennsylvania that works at IT when I need money #potatoes"),
			new Bio("Billy Amtmann", "Marketing", "Mechanical Engineering", "I'm really busy and like AJ more than my roommates. Currently accepting donations in the form of bottlecaps and Co-Ops."),
			new Bio("Jake Hauser", "Finance", "Geometry", "Hi I hate math and avoid eating dinner with Nick."),
			new Bio("Nick Vandemark", "Finance", "The Real CE", "Tries desperately to eat with Jake, always gets shot down.")
		};
		
		req.setAttribute("bios", bios);
		req.getRequestDispatcher("/_view/theStudents.jsp").forward(req, resp);
	}
}
