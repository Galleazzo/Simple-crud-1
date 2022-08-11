package Path;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Deletar")
public class Deletar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Banco b1 = new Banco();
		
		String ID = request.getParameter("id");
		Integer id = Integer.valueOf(ID);
		
		b1.deletar(id);
		
		response.sendRedirect("BancoJar");
		
	
	}

}
