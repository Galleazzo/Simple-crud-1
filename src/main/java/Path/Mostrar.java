package Path;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Mostrar
 */
@WebServlet("/Mostrar")
public class Mostrar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ID = request.getParameter("id");
		Integer id = Integer.valueOf(ID);
		
		Banco b1 = new Banco();
		
		Funcionario funcionario = b1.buscaFuncionarioId(id);
		
		request.setAttribute("funcionario", funcionario);
		RequestDispatcher rd = request.getRequestDispatcher("/Mostrar.jsp");
		rd.forward(request, response);
	}

}
