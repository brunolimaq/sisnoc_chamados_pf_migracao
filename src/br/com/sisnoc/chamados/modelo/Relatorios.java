package br.com.sisnoc.chamados.modelo;

import java.util.Date;

public class Relatorios {

	
	
	private String responsavel;
	private String chamado;
	private String resumo;
	private String categoria;
	private String tipo;
	private Date inicio;
	private Date fim;
	private String data;
	private String hora;
	private String tempo_log;
	private String qts_aberto;
	private String result;
	private Integer mes;
	private Integer ano;
	private String opcao;
	private String gerencia;
	private String equipe;
	private String listaEquipes;
	private String usuarioAfetado;
	
	
	public String getResponsavel() {
		return responsavel;
	}
	public void setResponsavel(String responsavel) {
		this.responsavel = responsavel;
	}
	public String getChamado() {
		return chamado;
	}
	public void setChamado(String chamado) {
		this.chamado = chamado;
	}
	public String getResumo() {
		return resumo;
	}
	public void setResumo(String resumo) {
		this.resumo = resumo;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}
	public String getTempo_log() {
		return tempo_log;
	}
	public void setTempo_log(String tempo_log) {
		this.tempo_log = tempo_log;
	}
	public String getQts_aberto() {
		return qts_aberto;
	}
	public void setQts_aberto(String qts_aberto) {
		this.qts_aberto = qts_aberto;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public Date getInicio() {
		return inicio;
	}
	public void setInicio(Date inicio) {
		this.inicio = inicio;
	}
	public Date getFim() {
		return fim;
	}
	public void setFim(Date fim) {
		this.fim = fim;
	}
	public Integer getMes() {
		return mes;
	}
	public void setMes(Integer mes) {
		this.mes = mes;
	}
	public Integer getAno() {
		return ano;
	}
	public void setAno(Integer ano) {
		this.ano = ano;
	}
	public String getOpcao() {
		return opcao;
	}
	public void setOpcao(String opcao) {
		this.opcao = opcao;
	}
	public String getGerencia() {
		return gerencia;
	}
	public void setGerencia(String gerencia) {
		this.gerencia = gerencia;
	}
	public String getEquipe() {
		return equipe;
	}
	public void setEquipe(String equipe) {
		this.equipe = equipe;
	}
	public String getListaEquipes() {
		return listaEquipes;
	}
	public void setListaEquipes(String listaEquipes) {
		this.listaEquipes = listaEquipes;
	}
	public String getUsuarioAfetado() {
		return usuarioAfetado;
	}
	public void setUsuarioAfetado(String usuarioAfetado) {
		this.usuarioAfetado = usuarioAfetado;
	}
	
	
}