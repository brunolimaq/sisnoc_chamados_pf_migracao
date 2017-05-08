package br.com.sisnoc.chamados.controller;

import java.text.ParseException;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.sisnoc.chamados.dao.PainelChamadosDao;
import br.com.sisnoc.chamados.dao.PainelPessoalEquipeDao;
import br.com.sisnoc.chamados.dao.PainelPessoalRequisicoesDao;
import br.com.sisnoc.chamados.dao.UsuariosDao;



@Controller
public class ChamadosController {

	

	
	@Autowired
	private PainelChamadosDao daoChamados;
	
	@Autowired
	private PainelPessoalRequisicoesDao destaquesDao;
	
	@Autowired
	private PainelPessoalEquipeDao equipeDao;
	


	
	@RequestMapping("/")
	public ModelAndView principal(Model model) throws ParseException{

		model.addAttribute("chamadosPainelPessoal", ((PainelPessoalRequisicoesDao) destaquesDao).listaPainelPessoalDestaques());

		model.addAttribute("chamadosPainelEquipe", ((PainelPessoalEquipeDao) equipeDao).listaPainelGrupoDestaques());
		
		
		ModelAndView mv = new ModelAndView("chamados/index");
		return mv;
	}	
	@RequestMapping("/listaChamadosN3")
	public String listan3(Model model) throws ParseException{
		String equipe = "";
		String status = "";
		
		model.addAttribute("chamadosPainelChamados", ((PainelChamadosDao) daoChamados).listaPainelChamadosN3(equipe, status,"R"));
	    model.addAttribute("chamadosPainelIncidentes", ((PainelChamadosDao) daoChamados).listaPainelChamadosN3(equipe, status,"I"));
		
		status = "aberto";
		model.addAttribute("chamadosPainelNoc", ((PainelChamadosDao) daoChamados).listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidentesPainelNoc", ((PainelChamadosDao) daoChamados).listaPainelChamadosN3(equipe, status,"I"));
		
		return "chamados/chamados";
	}
	
	@RequestMapping("/listaChamadosN2")
	public String listan2(Model model) throws ParseException{
		String equipe = "";
		String status = "";
		
		model.addAttribute("chamadosPainelChamados", ((PainelChamadosDao) daoChamados).listaPainelChamadosN2(equipe, status,"R"));
	    model.addAttribute("chamadosPainelIncidentes", ((PainelChamadosDao) daoChamados).listaPainelChamadosN2(equipe, status,"I"));
		
		status = "aberto";
		model.addAttribute("chamadosPainelNoc", ((PainelChamadosDao) daoChamados).listaPainelChamadosN2(equipe, status,"R"));
		model.addAttribute("incidentesPainelNoc", ((PainelChamadosDao) daoChamados).listaPainelChamadosN2(equipe, status,"I"));
		
		return "chamados/chamados";
	}

	@RequestMapping("/listaChamadosN1")
	public String listan1(Model model) throws ParseException{
		String equipe = "";
		String status = "";
		
		model.addAttribute("chamadosPainelChamados", ((PainelChamadosDao) daoChamados).listaPainelChamadosN1(equipe, status,"R"));
	    model.addAttribute("chamadosPainelIncidentes", ((PainelChamadosDao) daoChamados).listaPainelChamadosN1(equipe, status,"I"));
		
		status = "aberto";
		model.addAttribute("chamadosPainelNoc", ((PainelChamadosDao) daoChamados).listaPainelChamadosN1(equipe, status,"R"));
		model.addAttribute("incidentesPainelNoc", ((PainelChamadosDao) daoChamados).listaPainelChamadosN1(equipe, status,"I"));
		
//		model.addAttribute("chamadosPainelIncidentes", daoIncidentes.listaPainelIncidentes(equipe, status));
//		model.addAttribute("chamadosPainelNoc", daoChamadoNoc.listaPainelNoc());
//		model.addAttribute("incidentesPainelNoc", daoIncidenteNoc.listaPainelNoc());
		return "chamados/chamados";
	}

	
	
	@RequestMapping("/pendenciasN3")
	public ModelAndView listaPendenciasN3(Model model) throws ParseException{
		String equipe = "todas";
		String status = "";
		
		ModelAndView mv = new ModelAndView("chamados/pendencias");
		
		model.addAttribute("chamadosPendentes", ((PainelChamadosDao) daoChamados).listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidentesPendentes", ((PainelChamadosDao) daoChamados).listaPainelChamadosN3(equipe, status,"I"));
		
		
		return mv;
	}
	
	@RequestMapping("/pendenciasN2")
	public ModelAndView listaPendenciasN2(Model model) throws ParseException{
		String equipe = "todas";
		String status = "";
		
		ModelAndView mv = new ModelAndView("chamados/pendencias");
		
		model.addAttribute("chamadosPendentes", ((PainelChamadosDao) daoChamados).listaPainelChamadosN2(equipe, status,"R"));
		model.addAttribute("incidentesPendentes", ((PainelChamadosDao) daoChamados).listaPainelChamadosN2(equipe, status,"I"));
		
		
		return mv;
	}
	
	@RequestMapping("/pendenciasN1")
	public ModelAndView listaPendenciasN1(Model model) throws ParseException{
		String equipe = "todas";
		String status = "";
		
		ModelAndView mv = new ModelAndView("chamados/pendencias");
		
		model.addAttribute("chamadosPendentes", ((PainelChamadosDao) daoChamados).listaPainelChamadosN1(equipe, status,"R"));
		model.addAttribute("incidentesPendentes", ((PainelChamadosDao) daoChamados).listaPainelChamadosN1(equipe, status,"I"));
		
		
		return mv;
	}



	
	
	
	
	
	
	

	
}
