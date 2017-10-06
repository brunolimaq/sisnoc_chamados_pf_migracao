package br.com.sisnoc.chamados.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;
import org.springframework.web.context.annotation.RequestScope;

import br.com.sisnoc.chamados.dao.util.DestaquesDao;

import br.com.sisnoc.chamados.modelo.Chamado;
import br.com.sisnoc.chamados.negocio.CalculaSla;
import br.com.sisnoc.chamados.negocio.Popula;
import br.com.sisnoc.chamados.security.UsuarioSistema;

@Repository
@DestaquesDao
public class PainelPessoalRequisicoesDao {

	
private  final Connection connection;

	
	@Autowired
	public PainelPessoalRequisicoesDao(@Qualifier("datasourceSQL") DataSource datasource) {
		try {
			this.connection = datasource.getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	private Integer countPendencias;
	private String flagStatus;

	
	public List<Chamado> listaPainelPessoalDestaques() throws ParseException {
		try {
			
			ArrayList<Chamado> ListaChamados = new ArrayList<Chamado>();
			String sql_listaChamados = "";
			
			Object usuarioLogado = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			String username;
			String gerencia = "";
			String equipe = "";
			Collection<? extends GrantedAuthority> permissao = null;
			String user_exclusao = "''";
			if (usuarioLogado  instanceof UsuarioSistema ) {
				   
//					((UsuarioSistema)usuarioLogado).getUsuario().setGerencia("N2");
				   username = ( (UsuarioSistema)usuarioLogado).getUsuario().getNome();
				   permissao = ( (UsuarioSistema)usuarioLogado).getUsuario().getAuthority();
				   gerencia = ( (UsuarioSistema)usuarioLogado).getUsuario().getGerencia()+"%";
				   equipe = ( (UsuarioSistema)usuarioLogado).getUsuario().getNomeEquipe();

			} else {
			   username = usuarioLogado.toString();
			}
			
		
			// chamados em andamento
				sql_listaChamados = "select "
						+"req.ref_num as chamado, "
						+"req.id as ID "
					+"from "
						+"call_req req WITH(NOLOCK) join cr_stat stat WITH(NOLOCK) on "
						+"req.status = stat.code join prob_ctg cat WITH(NOLOCK) on "
						+"cat.persid = req.category "
						+" join ca_contact usu WITH (NOLOCK)  on usu.contact_uuid = req.assignee "
					+"where "
						+"cat.sym like '"+gerencia+"' "
						+"and stat.code in ('OP','ATD','ENC') "
						+"and usu.userid = '"+username+"'";

			PreparedStatement stmt = connection
					.prepareStatement(sql_listaChamados);
			ResultSet rs_listaChamados = stmt.executeQuery();
			
			String lista = "\'\'";
			
			int countTeste = 0;
			while (rs_listaChamados.next()){
				countTeste++;
				lista = lista +",\'" + rs_listaChamados.getString("ID") + "\'";
				setFlagStatus("Andamento");
			}
			
			rs_listaChamados.close();
			
		
			if(countTeste == 0){
				
				
				// chamados pendentes
				sql_listaChamados = "select "
						+"req.ref_num as chamado, "
						+"req.id as ID "
					+"from "
						+"call_req req WITH(NOLOCK) join cr_stat stat WITH(NOLOCK) on "
						+"req.status = stat.code join prob_ctg cat WITH(NOLOCK) on "
						+"cat.persid = req.category "
						+" join ca_contact usu WITH (NOLOCK)  on usu.contact_uuid = req.assignee "
					+"where "
						+"cat.sym like '"+gerencia+"' "
						+"and req.type != 'P'"
						+"and stat.code in ('APRG','AFOR','AUSR','AHD','ACOM','AREC','AGE') "
						+"and usu.userid = '"+username+"'"
						+"and (datediff(hh,DATEADD(hh,-3,DATEADD(SS,req.last_mod_dt,'19700101')), getdate()) > 22"
						+"or req.last_mod_by != (select contact_uuid from ca_contact where userid = '"+username+"'))";

			 stmt = connection
					.prepareStatement(sql_listaChamados);
			ResultSet rs_listaChamadosPendente = stmt.executeQuery();
			
			 lista = "\'\'";
			
			countTeste = 0;
			while (rs_listaChamadosPendente.next()){
				
				countTeste++;
				lista = lista +",\'" + rs_listaChamadosPendente.getString("ID") + "\'";
				setFlagStatus("Pendentes");
			}
					
			rs_listaChamadosPendente.close();
				
			}
			
			
			
			
			
			String sql_listaLog = "select "
					+"req.id as ID, "
					+"req.priority as prioridade, "
					+"req.ref_num as chamados, "
					+"usu.first_name as responsavel,"
					+"vwg.last_name as equipe,"
					+"ctg.sym as grupo,"
					+"req.type as tipo, "
					+"req.summary as titulo, "
					+"log.time_stamp + DATEPART(tz,SYSDATETIMEOFFSET())*60 as time,"
					+"DATEDIFF(s, '1970-01-01 00:00:00', GETDATE()) as epoch,"
					+ "stat.sym as statusDescricao, "
					+ "log.type as status "
				+"from "
					+"call_req req WITH(NOLOCK) "
					+"join cr_stat stat WITH(NOLOCK) on req.status = stat.code "
					+"join prob_ctg ctg WITH(NOLOCK) on ctg.persid = req.category "
					+"join View_Group vwg  WITH (NOLOCK) on req.group_id = vwg.contact_uuid "
					+"left join ca_contact usu WITH (NOLOCK)  on usu.contact_uuid = req.assignee "
					+"join act_log log WITH (NOLOCK)  on log.call_req_id = req.persid "
				+"where "
					+"log.type in ('INIT','SLADELAY','SLARESUME','RE') "
					+"and req.id in  ("+ lista + ") "
					+ "order by req.id, log.time_stamp";
			
			stmt = connection
					.prepareStatement(sql_listaLog);
			ResultSet rs_listalog = stmt.executeQuery();

			Popula popula = new Popula();
			
			
			
			
			
			//Corre o ResultSet
			Integer count = 0;
				while (rs_listalog.next()){
					// adiciona um chamado na lista
	
					Chamado chamados = new Chamado();
					chamados.setId(popula.populaID(rs_listalog));
					chamados.setEquipe(popula.populaEquipe(rs_listalog));
					chamados.setChamado(popula.populaChamados(rs_listalog));
					chamados.setTitulo(popula.populaTitulo(rs_listalog));
					chamados.setStatus(popula.populaStatus(rs_listalog));
					chamados.setTime(popula.populaTime(rs_listalog));
					chamados.setEpoch(popula.populaEpoch(rs_listalog));
					chamados.setGrupo(popula.populaGrupo(rs_listalog));
					chamados.setPrioridade(popula.populaPrioridade(rs_listalog));
					chamados.setTipo(popula.populaTipo(rs_listalog));
					chamados.setTipoLegivel(popula.populaTipoLegivel(rs_listalog));
					chamados.setStatusDescricao(popula.populaStatusDescricao(rs_listalog));
					chamados.setFlagStatus(getFlagStatus());
					ListaChamados.add(chamados);
					count++;
				}
			
				
				rs_listalog.close();
				stmt.close();

				if(ListaChamados.isEmpty()){
					return null;
				} else {
					return CalculaSla.SlaMec(ListaChamados);
				}

			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	//Esperando criação e categoria PROJETO
	public Integer listaPainelAtualizacaoOS() throws ParseException {
		try {
			
						
			Object usuarioLogado = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			String username;
			String gerencia = "";
			String equipe = "";
			Collection<? extends GrantedAuthority> permissao = null;
			String user_exclusao = "''";
			if (usuarioLogado  instanceof UsuarioSistema ) {
				   
//					((UsuarioSistema)usuarioLogado).getUsuario().setGerencia("N2");
				   username = ( (UsuarioSistema)usuarioLogado).getUsuario().getNome();
				   permissao = ( (UsuarioSistema)usuarioLogado).getUsuario().getAuthority();
				   gerencia = ( (UsuarioSistema)usuarioLogado).getUsuario().getGerencia()+"%";
				   equipe = ( (UsuarioSistema)usuarioLogado).getUsuario().getNomeEquipe();

			} else {
			   username = usuarioLogado.toString();
			}
			

			String sql_atualizacaoOs = "select "
					+ "MAX(datediff(dd,DATEADD(hh,-3,DATEADD(SS,req.last_mod_dt,'19700101')), getdate())) as diasatualizacao "
					+ "from " 
					+ "call_req req WITH (NOLOCK)  join cr_stat stat WITH (NOLOCK) on req.status = stat.code " 
					+ "left join ca_contact usu WITH (NOLOCK)  on usu.contact_uuid = req.assignee " 
					+ "join prob_ctg ctg WITH (NOLOCK)  on ctg.persid = req.category " 
					+ "join act_log log WITH (NOLOCK)  on log.call_req_id = req.persid  "
					+ "join View_Group vwg WITH (NOLOCK)  on req.group_id = vwg.contact_uuid " 
					+ "where "
					+"cat.sym like '"+gerencia+"' "
					+"and stat.code in ('OP','WIP','PRBAPP', 'RSCH', 'PF', 'AEUR' , 'AWTVNDR', 'FIP', 'PNDCHG' , 'PO', 'PRBANCOMP', 'ACK') " 
					+ "and log.type='INIT' " 
					+ "and usu.userid = '"+username+"' "
					+ "and datediff(dd,DATEADD(hh,-3,DATEADD(SS,req.last_mod_dt,'19700101')), getdate()) > 3"
					+ "order by 1 ";
			
			PreparedStatement stmt = connection
					.prepareStatement(sql_atualizacaoOs);
			ResultSet rs_atualizacaoOs = stmt.executeQuery();
			
			
			
			Integer atualizacaoOS = 0;
				while (rs_atualizacaoOs.next()){
					
	
					atualizacaoOS = rs_atualizacaoOs.getInt("diasatualizacao");
				}
			
				
				rs_atualizacaoOs.close();
				stmt.close();

				
					return atualizacaoOS;
				

			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	//Pend�ncias
	
	public List<Chamado> listaPainelPessoalPendencias(String status) throws ParseException {
		try {
			
			ArrayList<Chamado> ListaChamados = new ArrayList<Chamado>();
			String sql_listaChamados = "";
			
			Object usuarioLogado = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			String username;
			String gerencia = "";
			String equipe = "";
			Collection<? extends GrantedAuthority> permissao = null;
			String user_exclusao = "''";
			if (usuarioLogado  instanceof UsuarioSistema ) {
				   
//					((UsuarioSistema)usuarioLogado).getUsuario().setGerencia("N2");
				   username = ( (UsuarioSistema)usuarioLogado).getUsuario().getNome();
				   permissao = ( (UsuarioSistema)usuarioLogado).getUsuario().getAuthority();
				   gerencia = ( (UsuarioSistema)usuarioLogado).getUsuario().getGerencia()+"%";
				   equipe = ( (UsuarioSistema)usuarioLogado).getUsuario().getNomeEquipe();

			} else {
			   username = usuarioLogado.toString();
			}
					
			String[] splitEquipe = equipe.split(",");
			
			String listaEquipe = "\'\'";
			
			for (String eqp : splitEquipe) {
				listaEquipe = listaEquipe +",\'" + eqp + "\'";
			}
			

				sql_listaChamados = "select "
						+"req.ref_num as chamado, "
						+"req.id as ID "
					+"from "
						+"call_req req WITH(NOLOCK) join cr_stat stat WITH(NOLOCK) on "
						+"req.status = stat.code join prob_ctg cat WITH(NOLOCK) on "
						+"cat.persid = req.category "
						+" join ca_contact usu WITH (NOLOCK)  on usu.contact_uuid = req.assignee "
						+ "join View_Group vwg WITH (NOLOCK)  on req.group_id = vwg.contact_uuid " 
					+"where "
						+"cat.sym like '"+gerencia+"' "
						+"and stat.code in ("+status+") "
						+"and req.type != 'P'"
						+"and vwg.last_name in ("+ listaEquipe + ") ";

			PreparedStatement stmt = connection
					.prepareStatement(sql_listaChamados);
			ResultSet rs_listaChamados = stmt.executeQuery();
			
			String lista = "\'\'";

			while (rs_listaChamados.next()){

				lista = lista +",\'" + rs_listaChamados.getString("ID") + "\'";
			}
			
			rs_listaChamados.close();
			
			String sql_listaLog = "select "
									+"req.id as ID, "
									+"req.ref_num as chamados, "
									+"req.priority as prioridade, "
									+"usu.first_name as responsavel, "
									+"vwg.last_name as equipe, "
									+"ctg.sym as grupo, "
									+"req.type as tipo, "
									+"req.summary as titulo, "
									+"log.time_stamp + DATEPART(tz,SYSDATETIMEOFFSET())*60 as time, "
									+"DATEDIFF(s, '1970-01-01 00:00:00', GETDATE()) as epoch, "
									+ "stat.sym as statusDescricao, "
									+ "log.type as status "
								+"from "
									+"call_req req WITH(NOLOCK) "
									+"join cr_stat stat WITH(NOLOCK) on req.status = stat.code "
									+"join prob_ctg ctg WITH(NOLOCK) on ctg.persid = req.category "
									+"join View_Group vwg  WITH (NOLOCK) on req.group_id = vwg.contact_uuid "
									+"left join ca_contact usu WITH (NOLOCK)  on usu.contact_uuid = req.assignee "
									+"join act_log log WITH (NOLOCK)  on log.call_req_id = req.persid "
								+"where "
									+"log.type in ('INIT','SLADELAY','SLARESUME','RE') "
									//+"and req.id in  (470837) "
									+"and req.id in  ("+ lista + ") "
									+ "order by req.type, stat.sym";
			
			stmt = connection
					.prepareStatement(sql_listaLog);
			ResultSet rs_listalog = stmt.executeQuery();

			Popula popula = new Popula();
			
			
			
			
			
			//Corre o ResultSet
			Integer count = 0;
				while (rs_listalog.next()){
					// adiciona um chamado na lista
	
					
					Chamado chamados = new Chamado();
					chamados.setId(popula.populaID(rs_listalog));
					chamados.setEquipe(popula.populaEquipe(rs_listalog));
					chamados.setChamado(popula.populaChamados(rs_listalog));
					chamados.setTitulo(popula.populaTitulo(rs_listalog));
					chamados.setStatus(popula.populaStatus(rs_listalog));
					chamados.setTime(popula.populaTime(rs_listalog));
					chamados.setEpoch(popula.populaEpoch(rs_listalog));
					chamados.setGrupo(popula.populaGrupo(rs_listalog));
					chamados.setPrioridade(popula.populaPrioridade(rs_listalog));
					chamados.setTipo(popula.populaTipo(rs_listalog));
					chamados.setTipoLegivel(popula.populaTipoLegivel(rs_listalog));
					chamados.setStatusDescricao(popula.populaStatusDescricao(rs_listalog));
					ListaChamados.add(chamados);
					count++;
				}
			
				setCountPendencias(count);
				
				rs_listalog.close();
				stmt.close();

				if(ListaChamados.isEmpty()){
					return null;
				} else {
					return CalculaSla.SlaMec(ListaChamados);
				}

			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	

	
	
	public Connection getConnection() throws SQLException {
		return connection;
	}

	public Integer getCountPendencias() {
		return countPendencias;
	}

	public void setCountPendencias(Integer countPendencias) {
		this.countPendencias = countPendencias;
	}

	public String getFlagStatus() {
		return flagStatus;
	}

	public void setFlagStatus(String flagStatus) {
		this.flagStatus = flagStatus;
	}

}