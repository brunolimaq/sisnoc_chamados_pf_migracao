package br.com.sisnoc.chamados.controller;

import java.text.ParseException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.catalina.core.ApplicationContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Primary;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.jasperreports.JasperReportsPdfView;

import br.com.sisnoc.chamados.dao.PainelChamadosDao;
import br.com.sisnoc.chamados.dao.PainelGeralRdmDao;
import br.com.sisnoc.chamados.dao.PainelPessoalEquipeDao;
import br.com.sisnoc.chamados.dao.PainelPessoalMetasDao;
import br.com.sisnoc.chamados.dao.PainelPessoalRdmDao;
import br.com.sisnoc.chamados.dao.PainelPessoalRequisicoesDao;
import br.com.sisnoc.chamados.dao.PainelSemSlaDao;
import br.com.sisnoc.chamados.dao.UsuariosDao;
import br.com.sisnoc.chamados.modelo.Relatorios;
import br.com.sisnoc.chamados.security.UsuarioSistema;



@Controller
public class ChamadosController {

	
 

	@Autowired
	private PainelChamadosDao daoChamados;
	
	@Autowired
	private PainelPessoalRequisicoesDao destaquesDao;
	
	@Autowired
	private PainelPessoalEquipeDao equipeDao;
	
	@Autowired
	private PainelPessoalRdmDao rdmDao;
	
	@Autowired
	private PainelSemSlaDao osDao;
	
	@Autowired
	private PainelGeralRdmDao rdmGeral;
	
	@Autowired
	private PainelPessoalMetasDao metasDao;


	
	@RequestMapping("/")
	public ModelAndView principal(Model model) throws ParseException{
		
	
		String perfil;
		Object usuarioLogado = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username;
		String gerencia = "";
		Collection<? extends GrantedAuthority> permissao = null;
		String user_exclusao = "''";
		if (usuarioLogado  instanceof UsuarioSistema ) {
			   
//				((UsuarioSistema)usuarioLogado).getUsuario().setGerencia("N2");
			   username = ( (UsuarioSistema)usuarioLogado).getUsuario().getNome();
			   permissao = ( (UsuarioSistema)usuarioLogado).getUsuario().getAuthority();
			   gerencia = ( (UsuarioSistema)usuarioLogado).getUsuario().getGerencia()+"%";
			   

		} else {
		   username = usuarioLogado.toString();
		}
		
		
		
		for (GrantedAuthority autorizacao : permissao) {
			
			if (autorizacao.toString().equals("GESTOR")){

				perfil = "GESTOR";
				String rdmPainelAprovada = "APR";

				model.addAttribute("chamadosPainelPessoal", ((PainelPessoalEquipeDao) equipeDao).listaPainelGrupoDestaques(perfil));
				
				
				//model.addAttribute("chamadosPainelPessoal", ((PainelPessoalEquipeDao) equipeDao).listaPainelGrupoPendentes(perfil));
				
				
//				model.addAttribute("chamadosRDMPessoal", ((PainelPessoalRdmDao) rdmDao).listaPainelPessoalRdm());
//				
//				model.addAttribute("chamadosRDMGeralAprovada", ((PainelGeralRdmDao) rdmGeral).listaPainelPessoalRdmGeral(rdmPainelAprovada));
				
				model.addAttribute("flagStatus", ((PainelPessoalRequisicoesDao) destaquesDao).getFlagStatus());
				
				ModelAndView mv = new ModelAndView("chamados/indexGestor");
				return mv;

			}
		}
		
		perfil = "";
		
		model.addAttribute("chamadosPainelPessoal", ((PainelPessoalRequisicoesDao) destaquesDao).listaPainelPessoalDestaques());

		model.addAttribute("chamadosPainelEquipe", ((PainelPessoalEquipeDao) equipeDao).listaPainelGrupoDestaques(perfil));
		
//		model.addAttribute("chamadosRDMPessoal", ((PainelPessoalRdmDao) rdmDao).listaPainelPessoalRdm());
//		
		
//		model.addAttribute("atualizacaoOS", ((PainelPessoalRequisicoesDao) destaquesDao).listaPainelAtualizacaoOS());
		
		model.addAttribute("flagStatus", ((PainelPessoalRequisicoesDao) destaquesDao).getFlagStatus());
		
		ModelAndView mv = new ModelAndView("chamados/index");
		return mv;
	}

	
	
	@RequestMapping("/listaChamados")
	public String listaChamados(Model model) throws ParseException{

		String perfil;
		Object usuarioLogado = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username;
		String gerencia = "";
		Collection<? extends GrantedAuthority> permissao = null;
		String user_exclusao = "''";
		if (usuarioLogado  instanceof UsuarioSistema ) {
			   
//				((UsuarioSistema)usuarioLogado).getUsuario().setGerencia("N2");
			   username = ( (UsuarioSistema)usuarioLogado).getUsuario().getNome();
			   permissao = ( (UsuarioSistema)usuarioLogado).getUsuario().getAuthority();
			   gerencia = ( (UsuarioSistema)usuarioLogado).getUsuario().getGerencia()+"%";
			   

		} else {
		   username = usuarioLogado.toString();
		}
		
		
		
		String equipe = "";
		String status = "";
		String tipo = "R";
		
		model.addAttribute("chamadosPainelChamados", ((PainelChamadosDao) daoChamados).listaPainelChamados(equipe, status,tipo,gerencia));
		
		tipo = "I";
		model.addAttribute("chamadosPainelIncidentes", ((PainelChamadosDao) daoChamados).listaPainelChamados(equipe, status,tipo, gerencia));
		
		status = "aberto";
		tipo = "R";
		model.addAttribute("chamadosPainelNoc", ((PainelChamadosDao) daoChamados).listaPainelChamados(equipe, status,tipo, gerencia));
		tipo = "I";
		model.addAttribute("incidentesPainelNoc", ((PainelChamadosDao) daoChamados).listaPainelChamados(equipe, status,tipo, gerencia));
		
		return "chamados/chamados";
	}
	
	
	

	@RequestMapping("/pendencias")
	public ModelAndView listaPendencias(Model model) throws ParseException{
		
		
		String perfil="";
		Object usuarioLogado = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username;
		String gerencia = "";
		Collection<? extends GrantedAuthority> permissao = null;
		String user_exclusao = "''";
		if (usuarioLogado  instanceof UsuarioSistema ) {
			   username = ( (UsuarioSistema)usuarioLogado).getUsuario().getNome();
			   permissao = ( (UsuarioSistema)usuarioLogado).getUsuario().getAuthority();
			   gerencia = ( (UsuarioSistema)usuarioLogado).getUsuario().getGerencia()+"%";

		} else {
		   username = usuarioLogado.toString();
		}
		
		System.out.println("Gerencia" + gerencia);
		
	
//			
//		Agendado               |AGE       |
//
//		Aguardando Contratante |acont     |
//		Aguardando Fornecedor  |AFOR      |
//		Aguardando Usuário     |AUSR      |
//
//
//
//		Em Aprovação           |app       |
//		Aguardando validação   |AVAL      |


		String status;
		
		status= "'AGE'";
		model.addAttribute("chamadosPendenteAgendado", ((PainelPessoalRequisicoesDao) destaquesDao).listaPainelPessoalPendencias(status));

		
		status= "'app'";
		model.addAttribute("chamadosPendenteEmAprovacao", ((PainelPessoalRequisicoesDao) destaquesDao).listaPainelPessoalPendencias(status));
		
		status= "'acont','AFOR','AUSR'";
		model.addAttribute("chamadosPendenteAguardando", ((PainelPessoalRequisicoesDao) destaquesDao).listaPainelPessoalPendencias(status));
		
		status= "'AVAL'";
		model.addAttribute("chamadosPendenteValidacao", ((PainelPessoalRequisicoesDao) destaquesDao).listaPainelPessoalPendencias(status));
		
//		model.addAttribute("chamadosViolados", metasDao.listaPainelPessoalMetas(perfil, gerencia));
//		model.addAttribute("chamadosReabertos", metasDao.listaPainelPessoalReabertosLista(perfil));
		
		
		ModelAndView mv = new ModelAndView("chamados/pendenciasGestor");
		return mv;
	}

	
	@RequestMapping("/gmud")
	public ModelAndView gmud(Model model) throws ParseException{

//		Implementação em andamento			IMPL			
//
//		Aberta								OP
//		Programada							SCHDLD
//		RDM									RFC
//
//		Aprovação Liberação					APP	
//		Em espera							HOLD			
//
//		Aprovada							APR	
//
//		Resolvida							RE				
//		Verificação em andamento			VRFY	

		String rdmPainelAprovada = "'APR'";
		String rdmPainelExecucao = "'IMPL'";
		String rdmPainelPlanejamento = "'RFC','SCHDLD','OP'";
		String rdmPainelValidacao = "'APP','HOLD'";
		String rdmPainelOutros = "'RE','VRFY'";
		
		model.addAttribute("chamadosRDMGeralAprovada", ((PainelGeralRdmDao) rdmGeral).listaPainelPessoalRdmGeral(rdmPainelAprovada));
		model.addAttribute("chamadosRDMGeralPlanejamento", ((PainelGeralRdmDao) rdmGeral).listaPainelPessoalRdmGeral(rdmPainelPlanejamento));
		model.addAttribute("chamadosRDMGeralValidacao", ((PainelGeralRdmDao) rdmGeral).listaPainelPessoalRdmGeral(rdmPainelValidacao));

		model.addAttribute("chamadosRDMGeralExecucao", ((PainelGeralRdmDao) rdmGeral).listaPainelPessoalRdmGeral(rdmPainelExecucao));
		model.addAttribute("chamadosRDMGeralOutros", ((PainelGeralRdmDao) rdmGeral).listaPainelPessoalRdmGeral(rdmPainelOutros));
		
		ModelAndView mv = new ModelAndView("chamados/gmud");
		return mv;
	}


	@RequestMapping("/relatorios")
	public ModelAndView relatorio_volumetria(Model model) throws ParseException{

		
	    return new ModelAndView("/chamados/relatorios");
	}
	

	
	@Autowired
	private org.springframework.context.ApplicationContext appContext;

	@RequestMapping("/relatoriosDinamicos")
	public ModelAndView relatorioListaChamados(Model model, Relatorios relatorios) throws ParseException{

		
		System.out.println("opcao"+ relatorios.getOpcao());
		JasperReportsPdfView view = new JasperReportsPdfView();
	    view.setJdbcDataSource(equipeDao.getDt());
	    
	    if (relatorios.getOpcao().equals("rel_chamados")){
	    	
		    view.setUrl("resources/Lista_chamados.jrxml");
		    Map<String, Object> params = new HashMap<>();
		    params.put("mes", relatorios.getMes());
		    params.put("ano", relatorios.getAno());
		    params.put("gerencia", relatorios.getGerencia());
		    view.setApplicationContext(appContext);

		    return new ModelAndView(view, params);

	    }
	    
	    if (relatorios.getOpcao().equals("vol_requisicoes")){
	    	
		    view.setUrl("resources/requisicoes_mensal_por_semanal.jrxml");
		    view.setApplicationContext(appContext);

		    return new ModelAndView(view);
	    }
	    
	    
	    if (relatorios.getOpcao().equals("rel_reabertos")){
	    	
		    view.setUrl("resources/chamados_reabertos.jrxml");
		    view.setApplicationContext(appContext);

		    return new ModelAndView(view);
	    }
	    
	    if (relatorios.getOpcao().equals("rel_Aberto7Dias")){
	    	
		    view.setUrl("resources/Abertos7dias.jrxml");
		    Map<String, Object> params = new HashMap<>();
		    params.put("gerencia", relatorios.getGerencia());
		    view.setApplicationContext(appContext);

		    return new ModelAndView(view, params);

	    }
	    
	    
	    if (relatorios.getOpcao().equals("rel_satisfacao_geral")){
	    	
		    view.setUrl("resources/satisfacao_geral.jrxml");
		    Map<String, Object> params = new HashMap<>();
		    params.put("mes", relatorios.getMes());
		    params.put("ano", relatorios.getAno());
		    view.setApplicationContext(appContext);

		    return new ModelAndView(view, params);

	    }
	    
	    
	    if (relatorios.getOpcao().equals("rel_satisfacao_gerencia")){
	    	
		    view.setUrl("resources/satisfacao_por_gerencia.jrxml");
		    Map<String, Object> params = new HashMap<>();
		    params.put("mes", relatorios.getMes());
		    params.put("ano", relatorios.getAno());
		    params.put("gerencia", relatorios.getGerencia());
		    view.setApplicationContext(appContext);

		    return new ModelAndView(view, params);

	    }
	    if (relatorios.getOpcao().equals("rel_satisfacao_equipe")){
	    	
	    	
	    	System.out.println("Equipe" + relatorios.getEquipe());
	    	
	    	
		    view.setUrl("resources/satisfacao_por_equipe.jrxml");
		    Map<String, Object> params = new HashMap<>();
		    params.put("mes", relatorios.getMes());
		    params.put("ano", relatorios.getAno());
		    params.put("equipe", relatorios.getEquipe());
		    view.setApplicationContext(appContext);

		    return new ModelAndView(view, params);

	    }
	    
    if (relatorios.getOpcao().equals("rel_pendentes_algar")){
	    	
	    	
		    view.setUrl("resources/ListaPendentesFilasAlgar.jrxml");
		    Map<String, Object> params = new HashMap<>();
		    params.put("gerencia", "");
		    view.setApplicationContext(appContext);

		    return new ModelAndView(view, params);

	    }
    
    if (relatorios.getOpcao().equals("rel_pendentes_nao_algar")){
    	
    	
	    view.setUrl("resources/ListaPendentesFilasNaoAlgar.jrxml");
	    Map<String, Object> params = new HashMap<>();
	    params.put("gerencia", "");
	    view.setApplicationContext(appContext);

	    return new ModelAndView(view, params);

    }
	    
    if (relatorios.getOpcao().equals("rel_incidentes_mes")){
    	
    	
	    view.setUrl("resources/Lista_incidentes_abertos.jrxml");
	    Map<String, Object> params = new HashMap<>();
	    params.put("mes", relatorios.getMes());
	    params.put("ano", relatorios.getAno());
	    view.setApplicationContext(appContext);

	    return new ModelAndView(view, params);

    }
    
    if (relatorios.getOpcao().equals("rel_problemas_tickets")){
    	
    	
	    view.setUrl("resources/Lista_problemas.jrxml");
	    Map<String, Object> params = new HashMap<>();
	    params.put("mes", relatorios.getMes());
	    params.put("ano", relatorios.getAno());
	    view.setApplicationContext(appContext);

	    return new ModelAndView(view, params);

    }
    if (relatorios.getOpcao().equals("rel_final_afetado")){
    	
    	
	    view.setUrl("resources/Lista_chamados_por_afetado.jrxml");
	    Map<String, Object> params = new HashMap<>();
	    params.put("mes", relatorios.getMes());
	    params.put("ano", relatorios.getAno());
	    params.put("afetado", relatorios.getUsuarioAfetado());
	    view.setApplicationContext(appContext);

	    return new ModelAndView(view, params);

    }
    
	    
	    
	    
	    view.setUrl("resources/chamados_reabertos.jrxml");
	    view.setApplicationContext(appContext);

	    return new ModelAndView(view);


	}
	

	@RequestMapping("/projetos")
	public ModelAndView listaOrdemServicoTarefaInterna(Model model) throws ParseException{
		
		//Infra.Tarefas Internas
		//INFRA.Ordem de Servico
//		
//		model.addAttribute("chamadosOSPessoal", ((PainelSemSlaDao) osDao).listaPainelPessoalOs("INFRA.Ordem de Servico"));
//		model.addAttribute("chamadosOSEquipePendente", ((PainelSemSlaDao) osDao).listaPainelPessoalOsPendente("INFRA.Ordem de Servico"));
//		model.addAttribute("chamadosOSGeralGrupo", ((PainelSemSlaDao) osDao).listaPainelPessoalEquipeOs("INFRA.Ordem de Servico"));
//		
//
//
//		model.addAttribute("chamadosTarefaPessoal", ((PainelSemSlaDao) osDao).listaPainelPessoalOs("Infra.Tarefas Internas"));
//		model.addAttribute("chamadosTarefaEquipePendente", ((PainelSemSlaDao) osDao).listaPainelPessoalOsPendente("Infra.Tarefas Internas"));
//		model.addAttribute("chamadosTarefaGeralGrupo", ((PainelSemSlaDao) osDao).listaPainelPessoalEquipeOs("Infra.Tarefas Internas"));
		
		ModelAndView mv = new ModelAndView("chamados/projetos");
		return mv;
	}
	
	
	@RequestMapping("/problemas")
	public ModelAndView listaProblemas(Model model) throws ParseException{
		
//		Aberto                 |OP        |
//		DOCUMENTAR             |DOC       |
//
//		Investigar Solução     |invsolu   |
//		Causa Raiz             |craiz     |
//		RDM Aberta             |RDMABERTA |
//		Validação da Solução   |PAVAL     |
//		ENCERRADO.             |PCL       |

		
		String status;
		
		status= "'OP','DOC'";
		model.addAttribute("problemasAbertos", ((PainelSemSlaDao) osDao).listaPainelGeralProblema(status));
		status= "'invsolu'";
		model.addAttribute("problemasInvestigacao", ((PainelSemSlaDao) osDao).listaPainelGeralProblema(status));
		status= "'craiz'";
		model.addAttribute("problemasCausaIdentificada", ((PainelSemSlaDao) osDao).listaPainelGeralProblema(status));
		status= "'RDMABERTA'";
		model.addAttribute("problemasSolucaoImplatacao", ((PainelSemSlaDao) osDao).listaPainelGeralProblema(status));
		status= "'PAVAL'";
		model.addAttribute("problemasEmRevisao", ((PainelSemSlaDao) osDao).listaPainelGeralProblema(status));

		
		ModelAndView mv = new ModelAndView("chamados/problemas");
		return mv;
	}	
	
	
	
	
	@RequestMapping("/mudarPerfilN1")
	public ModelAndView mudarPerfilN1(Model model) throws ParseException{
		
		
		String perfil="";
		Object usuarioLogado = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username;
		String gerencia = "";
		Collection<? extends GrantedAuthority> permissao = null;
		String user_exclusao = "''";
		if (usuarioLogado  instanceof UsuarioSistema ) {
			((UsuarioSistema)usuarioLogado).getUsuario().setGerencia("N1%");
		} else {
		   username = usuarioLogado.toString();
		}
		
		ModelAndView mv = new ModelAndView("redirect:/listaChamados");
		return mv;
		
	}

	
	@RequestMapping("/mudarPerfilN2")
	public ModelAndView mudarPerfilN2(Model model) throws ParseException{
		
		
		String perfil="";
		Object usuarioLogado = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username;
		String gerencia = "";
		Collection<? extends GrantedAuthority> permissao = null;
		String user_exclusao = "''";
		if (usuarioLogado  instanceof UsuarioSistema ) {
			((UsuarioSistema)usuarioLogado).getUsuario().setGerencia("N2%");
		} else {
		   username = usuarioLogado.toString();
		}
		
		ModelAndView mv = new ModelAndView("redirect:/listaChamados");
		return mv;
		
	}
	
	
	@RequestMapping("/mudarPerfilN3")
	public ModelAndView mudarPerfilN3(Model model) throws ParseException{
		
		
		String perfil="";
		Object usuarioLogado = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username;
		String gerencia = "";
		Collection<? extends GrantedAuthority> permissao = null;
		String user_exclusao = "''";
		if (usuarioLogado  instanceof UsuarioSistema ) {
			((UsuarioSistema)usuarioLogado).getUsuario().setGerencia("N3%");
		} else {
		   username = usuarioLogado.toString();
		}
		
		ModelAndView mv = new ModelAndView("redirect:/listaChamados");
		return mv;
		
	}
	
	

	
}
