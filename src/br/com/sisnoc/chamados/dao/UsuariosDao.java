package br.com.sisnoc.chamados.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Repository;

import br.com.sisnoc.chamados.modelo.Chamado;
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


//		String sql_login = "SELECT * from usuario where loginUsuario = '"+loginUsuario+"'";
		
		String sql_login = "select " 
		+" u.loginUsuario, "
		+" u.senhaUsuario, "
		+" u.emailUsuario, "
		+" u.nomeUsuario, "
		+" GROUP_CONCAT(distinctrow e.nomeEquipe) as equipe, " 
		+" GROUP_CONCAT(distinctrow p.nomePermissao) as permisao "
		+" from  "
		+" usuario u " 
		+" join usuario_equipe ue on ue.usuario_idUsuario = u.idUsuario "
		+" join equipe e on ue.equipe_idequipe = e.idEquipe "
		+" join usuario_permissao up on u.idUsuario = up.usuario_idUsuario "
		+" join permissao p  on p.idPermissao = up.permissao_idPermissao "
		+" where u.loginUsuario = '"+loginUsuario+"' ";

		Usuario usuario = new Usuario();

				PreparedStatement stmt = connection
				.prepareStatement(sql_login);
		ResultSet rs = stmt.executeQuery();
		

		while (rs.next()){
			
			
			usuario.setNome(rs.getString("loginUsuario"));
			usuario.setSenhaUsuario(rs.getString("senhaUsuario"));
			usuario.setGrupo(rs.getString("equipe"));
			System.out.println("chegou no while");
				
		}
		
		
		
		stmt.close();
		
		return Optional.of(usuario);

		
	}
	
	public void cadastro() throws SQLException {

	

		String sql_cadastro = "INSERT INTO usuario (nomeUsuario, loginUsuario, senhaUsuario) VALUES ('Bruno Lima', 'bruno.queiroz1', '123123')";
		String sql_cadastro_equipe = "INSERT INTO equipe (nomeEquipe) value('Equipe Aplicação')";
		
		PreparedStatement stmt = connection
				.prepareStatement(sql_cadastro);
		stmt.executeUpdate();
		
		stmt = connection.prepareStatement(sql_cadastro_equipe);
		stmt.executeUpdate();
		
		stmt.close();
		
		
		
	}


	public Connection getConnection() {
		return connection;
	}

}
