package Path;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Editar
 */
@WebServlet("/Editar")
public class Editar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String idade = request.getParameter("idade");
		String cargo = request.getParameter("cargo");
		String ID = request.getParameter("id");
		Integer id = Integer.valueOf(ID);
		
		Banco banco = new Banco();
		
		Funcionario funcionario = banco.buscaFuncionarioId(id);
		funcionario.setNome(nome);
		funcionario.setEmail(email);
		funcionario.setIdade(idade);
		funcionario.setCargo(cargo);
		
		response.sendRedirect("BancoJar");
		
	}

}
