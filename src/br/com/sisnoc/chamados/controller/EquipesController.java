package br.com.sisnoc.chamados.controller;

import java.text.ParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.sisnoc.chamados.dao.PainelChamadosDao;

@Controller
public class EquipesController {
	
	
//Grupos Nível 3
	
//	MICROSOFT ( equipe_micro )
//	APLICAÇÕES, SISTEMAS OPERACIONAIS E ORQUESTRAÇÃO ( equipe_app_so_orq )
//	SEGURANÇA DA INFORMAÇÃO ( equipe_seg )
//	GERENCIAMENTO DE IDENTIDADES ( equipe_ger_ident )
//	REDES LOCAIS, METROPOLITANA E DE LONGA DISTÂNCIAS ( equipe_redes )
//	SISTEMAS DE COMUNICAÇÃO E MENSAGEM ELETRÔNICA ( equipe_comun_msg )
//	BANCO DE DADOS ( equipe_bancoDados )
//	MONITORAMENTO DE REDES, SERVIÇOS E APLICAÇÕES ( equipe_monRedes_servApp )
//	GOVERNANÇA DE TI ( equipe_governaca ) 
//	Implantação (Não contabiliza para indicadores) ( equipe_implantacao )
//	SUPERVISÃO ( equipe_supervisao )

	
	@Autowired
	private PainelChamadosDao daoChamados;
	
	//	MICROSOFT

	@RequestMapping("/equipe_micro")
	public String lista_windows(Model model) throws ParseException{

		String equipe = "MICROSOFT";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "Microsoft");
		return "chamados/equipes";
	}
	
	//	APLICAÇÕES, SISTEMAS OPERACIONAIS E ORQUESTRAÇÃO

	@RequestMapping("/equipe_app_so_orq")
	public String lista_aplicacaoSistemaOperacional(Model model) throws ParseException{

		String equipe = "APLICAÇÕES, SISTEMAS OPERACIONAIS E ORQUESTRAÇÃO";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "Aplicações, Sistemas Operacionais e Orquestração");
		return "chamados/equipes";
	}
	
	//	SEGURANÇA DA INFORMAÇÃO

	@RequestMapping("/equipe_seg")
	public String lista_segurancaDaInformacao(Model model) throws ParseException{

		String equipe = "SEGURANÇA DA INFORMAÇÃO";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "Segurança da Informação");
		return "chamados/equipes";
	}
	
	//	GERENCIAMENTO DE IDENTIDADES
	
	@RequestMapping("/equipe_ger_ident")
	public String lista_gerenciamentoIdentidades(Model model) throws ParseException{

		String equipe = "GERENCIAMENTO DE IDENTIDADES";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "Gerenciamento de Identidades");
		return "chamados/equipes";
	}
	
	//	REDES LOCAIS, METROPOLITANA E DE LONGA DISTÂNCIAS
	
	@RequestMapping("/equipe_redes")
	public String lista_redes(Model model) throws ParseException{

		String equipe = "REDES LOCAIS, METROPOLITANA E DE LONGA DISTÂNCIAS";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "Redes Locais, Metropolitana e de Longa Distâncias");
		return "chamados/equipes";
	}
	
	
	//	SISTEMAS DE COMUNICAÇÃO E MENSAGEM ELETRÔNICA
	
	@RequestMapping("/equipe_comun_msg")
	public String lista_sistemaComunicacaoMensagemEletronica(Model model) throws ParseException{

		String equipe = "SISTEMAS DE COMUNICAÇÃO E MENSAGEM ELETRÔNICA";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "Sistema de Comunicação e Mensagem Eletrônica");
		return "chamados/equipes";
	}

	//	BANCO DE DADOS

	@RequestMapping("/equipe_bancoDados")
	public String lista_bancoDeDados(Model model) throws ParseException{

		String equipe = "BANCO DE DADOS";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "Banco de Dados");
		return "chamados/equipes";
	}
	
	//	MONITORAMENTO DE REDES, SERVIÇOS E APLICAÇÕES

	@RequestMapping("/equipe_monRedes_servApp")
	public String lista_monitoracaoRedesServicosAplicacao(Model model) throws ParseException{

		String equipe = "MONITORAMENTO DE REDES, SERVIÇOS E APLICAÇÕES";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "Monitoramento de Redes, Serviços e Aplicações");
		return "chamados/equipes";
	}

	//	GOVERNANÇA DE TI


	@RequestMapping("/equipe_governaca")
	public String lista_governacaTI(Model model) throws ParseException{

		String equipe = "GOVERNANÇA DE TI";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "Governaça de TI");
		return "chamados/equipes";
	}

	//	Implantação (Não contabiliza para indicadores)


	@RequestMapping("/equipe_implantacao")
	public String lista_implantacao(Model model) throws ParseException{

		String equipe = "Implantação";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "Implantação");
		return "chamados/equipes";
	}
	

	//	SUPERVISÃO

	@RequestMapping("/equipe_supervisao")
	public String lista_supervisao(Model model) throws ParseException{

		String equipe = "SUPERVISÃO";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN3(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "Supervisão");
		return "chamados/equipes";
	}

	//Equipes N2
	
	//	SERVICE DESK 2° NIVEL - SETOR POLICIAL ( equipe_n2_setPol )
	//	SERVICE DESK 2° NIVEL - SEDE ( equipe_n2_sede )
	//	SERVICE DESK 2° NIVEL - ANP ( equipe_n2_anp )
	//	SERVICE DESK 2° NIVEL - SUDOESTE ( equipe_n2_sudoca )
	//	SERVICE DESK 2° NIVEL - AEROPORTO ( equipe_n2_aeroporto )

	
	
	//	SERVICE DESK 2° NIVEL - SETOR POLICIAL

	@RequestMapping("/equipe_n2_setPol")
	public String lista_n2SetorPolicial(Model model) throws ParseException{

		String equipe = "SERVICE DESK 2° NIVEL - SETOR POLICIAL";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN2(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN2(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN2(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN2(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "N2 - Setor Policial");
		return "chamados/equipes";
	}

	//	SERVICE DESK 2° NIVEL - SEDE

	@RequestMapping("/equipe_n2_sede")
	public String lista_n2Sede(Model model) throws ParseException{

		String equipe = "SERVICE DESK 2° NIVEL - SEDE";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN2(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN2(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN2(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN2(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "N2 - Sede");
		return "chamados/equipes";
	}

	
	//	SERVICE DESK 2° NIVEL - ANP
	
	@RequestMapping("/equipe_n2_anp")
	public String lista_n2ANP(Model model) throws ParseException{

		String equipe = "SERVICE DESK 2° NIVEL - ANP";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN2(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN2(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN2(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN2(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "N2 - ANP");
		return "chamados/equipes";
	}

	//	SERVICE DESK 2° NIVEL - SUDOESTE
	
	@RequestMapping("/equipe_n2_sudoca")
	public String lista_n2Sudoeste(Model model) throws ParseException{

		String equipe = "SERVICE DESK 2° NIVEL - SUDOESTE";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN2(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN2(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN2(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN2(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "N2 - Sudoeste");
		return "chamados/equipes";
	}
	
	//	SERVICE DESK 2° NIVEL - AEROPORTO

	@RequestMapping("/equipe_n2_aeroporto")
	public String lista_n2Aeroposto(Model model) throws ParseException{

		String equipe = "SERVICE DESK 2° NIVEL - AEROPORTO";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN2(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN2(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN2(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN2(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "N2 - Aeroporto");
		return "chamados/equipes";
	}

	
//	Equipes 1º Nível
//
//	SERVICE DESK 1° NIVEL ( equipe_n1 ) 
//	Service Desk 1° NIVEL - E-mail Respondido ( equipe_n1_email )
	
	//	SERVICE DESK 1° NIVEL

	@RequestMapping("/equipe_n1")
	public String lista_n1(Model model) throws ParseException{

		String equipe = "SERVICE DESK 1° NIVEL";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN1(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN1(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN1(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN1(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "N1");
		return "chamados/equipes";
	}
	
	//	Service Desk 1° NIVEL - E-mail Respondido

	@RequestMapping("/equipe_n1_email")
	public String lista_n1Email(Model model) throws ParseException{

		String equipe = "SERVICE DESK 1° NIVEL";
		String status = "andamento";

		model.addAttribute("chamadosEquipeAndamento", daoChamados.listaPainelChamadosN1(equipe, status,"R"));
		model.addAttribute("incidenteEquipeAndamento", daoChamados.listaPainelChamadosN1(equipe, status,"I"));
		
		status = "pendente";
		model.addAttribute("chamadosEquipePendente", daoChamados.listaPainelChamadosN1(equipe, status,"R"));
		model.addAttribute("incidenteEquipePendente", daoChamados.listaPainelChamadosN1(equipe, status,"I"));
		
		
		
		model.addAttribute("equipe", "N1 - E-mail Respondido");
		return "chamados/equipes";
	}

}
