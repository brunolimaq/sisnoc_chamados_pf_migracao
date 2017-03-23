package br.com.sisnoc.chamados.controller;

import java.text.ParseException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.sisnoc.chamados.dao.PainelChamadosDao;



@Controller
public class ChamadosController {

	@Autowired
	private PainelChamadosDao daoChamados;
	
	@RequestMapping("/")
	public ModelAndView principal(){
		ModelAndView mv = new ModelAndView("chamados/index");
		return mv;
	}
	
	@RequestMapping("/listaChamados")
	public String lista(Model model) throws ParseException{
		String equipe = "";
		String status = "";
		
		model.addAttribute("chamadosPainelChamados", daoChamados.listaPainelChamados(equipe, status,"R"));
	    model.addAttribute("chamadosPainelIncidentes", daoChamados.listaPainelChamados(equipe, status,"I"));
		
		status = "aberto";
		model.addAttribute("chamadosPainelNoc", daoChamados.listaPainelChamados(equipe, status,"R"));
		model.addAttribute("incidentesPainelNoc", daoChamados.listaPainelChamados(equipe, status,"I"));
		
//		model.addAttribute("chamadosPainelIncidentes", daoIncidentes.listaPainelIncidentes(equipe, status));
//		model.addAttribute("chamadosPainelNoc", daoChamadoNoc.listaPainelNoc());
//		model.addAttribute("incidentesPainelNoc", daoIncidenteNoc.listaPainelNoc());
		return "chamados/chamados";
	}
	
	@RequestMapping("/pendencias")
	public ModelAndView listaPendencias(Model model) throws ParseException{
		String equipe = "todas";
		String status = "";
		
		ModelAndView mv = new ModelAndView("chamados/pendencias");
		
		model.addAttribute("chamadosPendentes", daoChamados.listaPainelChamados(equipe, status,"R"));
		model.addAttribute("incidentesPendentes", daoChamados.listaPainelChamados(equipe, status,"I"));
		
		
		return mv;
	}


	
	
	
	
	
	
	

	
}
