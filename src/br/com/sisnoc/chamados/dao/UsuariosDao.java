package br.com.sisnoc.chamados.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.Optional;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Repository;
import org.springframework.web.context.annotation.RequestScope;
import org.springframework.web.context.annotation.SessionScope;


import br.com.sisnoc.chamados.modelo.Usuario;


@Repository
public class UsuariosDao {
	
	private  final Connection connection;

    
	
	@Autowired
	public UsuariosDao(@Qualifier("datasourceMySql") DataSource datasource) {
		try {
			this.connection = datasource.getConnection();
				
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	

	public Optional<Usuario> validaLogin(String loginUsuario) throws SQLException{


	
		String sql_login = "select " 
		+" u.loginUsuario, "
		+" u.senhaUsuario, "
		+" u.emailUsuario, "
		+" u.nomeUsuario, "
		+" GROUP_CONCAT(distinctrow e.nomeEquipe) as equipe, " 
		+" GROUP_CONCAT(distinctrow p.nomePermissao) as permissao, "
		+" GROUP_CONCAT(distinctrow g.nomeGerencia) as gerencia "
		+" from  "
		+" usuario u " 
		+" join usuario_equipe ue on ue.usuario_idUsuario = u.idUsuario "
		+" join equipe e on ue.equipe_idequipe = e.idEquipe "
		+" join usuario_permissao up on u.idUsuario = up.usuario_idUsuario "
		+" join permissao p  on p.idPermissao = up.permissao_idPermissao "
		+ "join usuario_gerencia ug on u.idUsuario = ug.usuario_idUsuario "
		+ "join gerencia g on g.idGerencia = ug.gerencia_idGerencia "
		+" where u.loginUsuario = '"+loginUsuario+"' ";

		Usuario usuario = new Usuario();

				PreparedStatement stmt = connection
				.prepareStatement(sql_login);
		ResultSet rs = stmt.executeQuery();
		

		while (rs.next()){
			
			
			usuario.setNome(rs.getString("loginUsuario"));
			usuario.setSenhaUsuario(rs.getString("senhaUsuario"));
			usuario.setNomeEquipe(rs.getString("equipe"));
			usuario.setPermissao(rs.getString("permissao"));
			usuario.setGerencia(rs.getString("gerencia"));
				
		}
		
		
		
		stmt.close();
		
		return Optional.of(usuario);

		
	}
	


	
	public void cadastro() throws SQLException {

	

		String sql_cadastro = "INSERT INTO usuario (nomeUsuario, loginUsuario, senhaUsuario) VALUES ('Bruno Lima', 'bruno.queiroz1', '123123')";
		String sql_cadastro_equipe = "INSERT INTO equipe (nomeEquipe) value('Equipe Aplica��o')";
		
		PreparedStatement stmt = connection
				.prepareStatement(sql_cadastro);
		stmt.executeUpdate();
		
		stmt = connection.prepareStatement(sql_cadastro_equipe);
		stmt.executeUpdate();
		
		stmt.close();
		
		
		
	}
	
	public void alterarSenha(String senha, String usuario) throws SQLException {

		

		String sql_cadastro = "UPDATE usuario SET senhaUsuario = '"+senha+"' where loginUsuario = '"+usuario+"'";
		
	
		PreparedStatement stmt = connection
				.prepareStatement(sql_cadastro);
		stmt.executeUpdate();
		
		stmt.close();
		
		
		
	}
	public Connection getConnection() throws SQLException {
		
		return connection; 
	}









}