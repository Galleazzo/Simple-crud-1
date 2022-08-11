package Path;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BancoJar
 */
@WebServlet("/BancoJar")
public class BancoJar extends HttpServlet {
	private static final long serialVersionUID = 1L;
		
	Banco b1 = new Banco();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	List<Funcionario> lista = b1.getFuncionarios();
		
	request.setAttribute("Lista", lista);
	RequestDispatcher rd = request.getRequestDispatcher("/Lista.jsp");
	rd.forward(request, response);
	
	
	}

}
