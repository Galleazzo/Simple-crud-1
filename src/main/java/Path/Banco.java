package Path;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {

	private static List<Funcionario> lista = new ArrayList<>();
	private static Integer key = 0;
	
	static {
		Funcionario f1 = new Funcionario();
		f1.setId(key++);
	}
	
	public void adiciona(Funcionario c1) {
		c1.setId(key++);
		Banco.lista.add(c1);
	}
	
	public List<Funcionario> getFuncionarios(){
		return Banco.lista;
	}

	public void deletar(Integer id) {
		Iterator<Funcionario> it = Banco.lista.iterator();
		
		while(it.hasNext()) {
			Funcionario f1 = it.next();
			
			if(f1.getId() == id) {
				it.remove();
			}
		}
		
	}

	public Funcionario buscaFuncionarioId(Integer id) {
			for (Funcionario funcionario : lista) {
				if(funcionario.getId() == id) {
					return funcionario;
				}
			}
		
		return null;
	}
	
	

}
