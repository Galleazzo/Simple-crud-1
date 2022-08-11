package Path;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CadastroJar
 */
@WebServlet("/CadastroJar")
public class CadastroJar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Banco b1 = new Banco();
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String idade = request.getParameter("idade");
		String cargo = request.getParameter("cargo");
		
		Funcionario c1 = new Funcionario();
		c1.setNome(nome);
		c1.setEmail(email);
		c1.setIdade(idade);
		c1.setCargo(cargo);
		
		b1.adiciona(c1);
		
		request.setAttribute("nomes", nome);
		request.setAttribute("emails", email);
		request.setAttribute("idades", idade);
		request.setAttribute("cargos", cargo);
		RequestDispatcher rd = request.getRequestDispatcher("/Cadastrado.jsp");
		rd.forward(request, response);
		
		
		
		
	}	

}
