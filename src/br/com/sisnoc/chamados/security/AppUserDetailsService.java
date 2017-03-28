package br.com.sisnoc.chamados.security;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.thymeleaf.util.Validate;

import br.com.sisnoc.chamados.dao.UsuariosDao;
import br.com.sisnoc.chamados.modelo.Usuario;

@Service
public class AppUserDetailsService implements UserDetailsService {

	
	@Autowired
	private UsuariosDao usuarios;
	
	public UserDetails loadUserByUsername(String loginUsuario) throws UsernameNotFoundException {
		
			System.out.println("antes execptio ");
			Optional<Usuario> usuarioOptional = null;
			try {
				usuarioOptional = usuarios.validaLogin(loginUsuario);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Usuario usuario = usuarioOptional.orElseThrow(() -> new UsernameNotFoundException("Usuário e/ou senha incorretos"));
			System.out.println("Passou pelo execptio " + usuario.getNome());
			return new UsuarioSistema(usuario, new HashSet<>());

		
	}
//
//	@Override
//	public UserDetails loadUserByUsername(String loginUsuario) throws UsernameNotFoundException {
//		Usuario usuario = new Usuario();
//
//		try {
//			
//			String validacao = usuarios.validaLogin(loginUsuario);
//			System.out.println(validacao);
//			if (validacao == "") {
//					return (UserDetails) new UsernameNotFoundException("Usuário e/ou senha incorretos"); 
//			}
//
//			usuario.setNome(validacao);
//		
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		System.out.println("chegou aqui!!" + usuario.getNome());
//		
//		return new User(usuario.getNome(), usuario.getNome(), new HashSet<>());
//	}

}
