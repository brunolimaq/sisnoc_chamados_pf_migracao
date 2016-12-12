package br.com.sisnoc.chamados.controller;

import java.text.ParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.sisnoc.chamados.dao.JdbcChamadosDao;



@Controller
public class ChamadosController {

	@Autowired
	private JdbcChamadosDao dao;
	
	
	@RequestMapping("/")
	public String principal(){
		return "chamados/index";
	}
	
//	@RequestMapping("/listaChamadosSac")
//	public String listaSac(Model model) throws ParseException{
//
//		//Chamados Filhos
//		
//		model.addAttribute("chamadosFilhos", dao.listaFilhos());
//		model.addAttribute("chamadosFilhosCarinha", dao.listaFilhosCarinha());
//		
//		//Geração Paineis 
//		
//		
//		
//		model.addAttribute("chamadosPainelMon", dao.listaPainelMonSac());
//		model.addAttribute("chamadosPainelSol", dao.listaPainelSolSac());
//		model.addAttribute("chamadosPainelInc", dao.listaPainelIncSac());
//
//		//Geração das Listas
//		model.addAttribute("chamadosSac", dao.listaSac());
//		
//		//Count de Chamados
//		model.addAttribute("countSac", dao.getCount_sac());
//
//
//		return "chamadosSac/chamados";
//	}
	
	@RequestMapping("/testes")
	public String listaTeste(Model model) throws ParseException{
		
		//Geração Paineis 
		
		model.addAttribute("chamadosPainelMon", dao.listaPainelMon());
		model.addAttribute("chamadosPainelSol", dao.listaPainelSol());
		model.addAttribute("chamadosPainelInc", dao.listaPainelInc());
		model.addAttribute("chamadosPainelOrdemServico", dao.listaPainelOrdemServico());
		model.addAttribute("chamadosPainelRdm", dao.listaPainelRdm());
	

		//Geração das Listas
		model.addAttribute("chamadosApp", dao.listaApp());
		model.addAttribute("chamadosBd", dao.listaBd());
		model.addAttribute("chamadosBkp", dao.listaBkp());
		model.addAttribute("chamadosVm", dao.listaVm());
		model.addAttribute("chamadosSo", dao.listaSo());
		model.addAttribute("chamadosRede", dao.listaRede());
		model.addAttribute("chamadosMon", dao.listaMon());
		model.addAttribute("chamadosGer", dao.listaGer());
		model.addAttribute("chamadosSeg", dao.listaSeg());
		model.addAttribute("chamadosMonit", dao.listaMonit());
		model.addAttribute("chamadosStor", dao.listaStor());
		model.addAttribute("chamadosDocu", dao.listaDocu());
		model.addAttribute("chamadosCorp", dao.listaCorp());
		model.addAttribute("chamadosOs", dao.listaOs());
		model.addAttribute("chamadosPro", dao.listaPro());
		
		//Count de Chamados
		model.addAttribute("countApp", dao.getCount_app());
		model.addAttribute("countBd", dao.getCount_bd());
		model.addAttribute("countBkp", dao.getCount_bkp());
		model.addAttribute("countVm", dao.getCount_Vm());
		model.addAttribute("countSo", dao.getCount_So());
		model.addAttribute("countRede", dao.getCount_Rede());
		model.addAttribute("countMon", dao.getCount_Mon());
		model.addAttribute("countGer", dao.getCount_Ger());
		
		model.addAttribute("countZa", dao.getCount_Za());
		model.addAttribute("countSto", dao.getCount_Sto());
		model.addAttribute("countDoc", dao.getCount_Doc());
		model.addAttribute("countCorp", dao.getCount_Corp());
		
		model.addAttribute("countSeg", dao.getCount_Seg());
		
		model.addAttribute("countOs", dao.getCount_Os());
		model.addAttribute("countPro", dao.getCount_Pro());
		model.addAttribute("countPainelMon", dao.getCount_PainelMon());
		model.addAttribute("countPainelSol", dao.getCount_PainelSol());
		model.addAttribute("countPainelInc", dao.getCount_PainelInc());
		model.addAttribute("countPainelOrdemServico", dao.getCount_PainelOrdemServico());


		return "chamados/testes_table";
	}
	
	
	@RequestMapping("/listaChamados")
	public String lista(Model model) throws ParseException{

		//Chamados Filhos
		
		model.addAttribute("chamadosFilhos", dao.listaFilhos());
		model.addAttribute("chamadosFilhosCarinha", dao.listaFilhosCarinha());
		
		//Geração Paineis 
		
		model.addAttribute("chamadosPainelMon", dao.listaPainelMon());
		model.addAttribute("chamadosPainelSol", dao.listaPainelSol());
		model.addAttribute("chamadosPainelInc", dao.listaPainelInc());
		model.addAttribute("chamadosPainelOrdemServico", dao.listaPainelOrdemServico());
		model.addAttribute("chamadosPainelRdm", dao.listaPainelRdm());
		model.addAttribute("chamadosPainelRdmPem", dao.listaPainelRdmPen());
		model.addAttribute("chamadosPainelTarefasInternas", dao.listaPainelTarefasInternas());


		//Geração das Listas
		model.addAttribute("chamadosApp", dao.listaApp());
		model.addAttribute("chamadosBd", dao.listaBd());
		model.addAttribute("chamadosBkp", dao.listaBkp());
		model.addAttribute("chamadosVm", dao.listaVm());
		model.addAttribute("chamadosSo", dao.listaSo());
		model.addAttribute("chamadosRede", dao.listaRede());
		model.addAttribute("chamadosMon", dao.listaMon());
		model.addAttribute("chamadosGer", dao.listaGer());
		model.addAttribute("chamadosSeg", dao.listaSeg());
		model.addAttribute("chamadosMonit", dao.listaMonit());
		model.addAttribute("chamadosStor", dao.listaStor());
		model.addAttribute("chamadosDocu", dao.listaDocu());
		model.addAttribute("chamadosCorp", dao.listaCorp());
		model.addAttribute("chamadosOs", dao.listaOs());
		model.addAttribute("chamadosPro", dao.listaPro());
		
		//Count de Chamados
		model.addAttribute("countApp", dao.getCount_app());
		model.addAttribute("countBd", dao.getCount_bd());
		model.addAttribute("countBkp", dao.getCount_bkp());
		model.addAttribute("countVm", dao.getCount_Vm());
		model.addAttribute("countSo", dao.getCount_So());
		model.addAttribute("countRede", dao.getCount_Rede());
		model.addAttribute("countMon", dao.getCount_Mon());
		model.addAttribute("countGer", dao.getCount_Ger());
		
		model.addAttribute("countZa", dao.getCount_Za());
		model.addAttribute("countSto", dao.getCount_Sto());
		model.addAttribute("countDoc", dao.getCount_Doc());
		model.addAttribute("countCorp", dao.getCount_Corp());
		
		model.addAttribute("countSeg", dao.getCount_Seg());
		
		model.addAttribute("countOs", dao.getCount_Os());
		model.addAttribute("countPro", dao.getCount_Pro());
		model.addAttribute("countPainelMon", dao.getCount_PainelMon());
		model.addAttribute("countPainelSol", dao.getCount_PainelSol());
		model.addAttribute("countPainelInc", dao.getCount_PainelInc());
		model.addAttribute("countPainelOrdemServico", dao.getCount_PainelOrdemServico());
		model.addAttribute("countPainelTarefasInternas", dao.getCount_PainelTarefasInternas());


		return "chamados/chamados";
	}
	
	@RequestMapping("/listaChamadosSeg")
	public String listaSeg(Model model) throws ParseException{
		
		//Chamados Filhos
		
		model.addAttribute("chamadosFilhos", dao.listaFilhos());
		model.addAttribute("chamadosFilhosCarinha", dao.listaFilhosCarinha());
		
		//Geração Paineis 
		
		model.addAttribute("chamadosPainelMon", dao.listaPainelMonSeg());
		model.addAttribute("chamadosPainelSol", dao.listaPainelSolSeg());
		model.addAttribute("chamadosPainelInc", dao.listaPainelIncSeg());
		model.addAttribute("chamadosPainelRdm", dao.listaPainelRdm());
		
		//Geração das Listas
		model.addAttribute("chamadosApp", dao.listaSeg());

		
		//Count de Chamados

		

		return "chamadosSeg/chamados";
	}
	
	@RequestMapping("/relatorios")
	public String relatorio(Model model) throws ParseException{
		model.addAttribute("relatorio", dao.listaRelatorio());

		
		
		return "chamados/geraRelatorio";
	}
	
}
