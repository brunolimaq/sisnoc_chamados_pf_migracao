package br.com.sisnoc.chamados.modelo;

import javax.persistence.Entity;

import org.springframework.stereotype.Repository;

@Entity
public class Usuario {
	
	private String nome;
	private String loginUsuario;
	private String senhaUsuario;
	private String nomeEquipe;
	private String grupo;
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return loginUsuario;
	}
	public void setEmail(String email) {
		this.loginUsuario= email;
	}

	public String getSenhaUsuario() {
		return senhaUsuario;
	}
	public void setSenhaUsuario(String senhaUsuario) {
		this.senhaUsuario = senhaUsuario;
	}
	public String getNomeEquipe() {
		return nomeEquipe;
	}
	public void setNomeEquipe(String nomeEquipe) {
		this.nomeEquipe = nomeEquipe;
	}
	public String getGrupo() {
		return grupo;
	}
	public void setGrupo(String grupo) {
		this.grupo = grupo;
	}

}
