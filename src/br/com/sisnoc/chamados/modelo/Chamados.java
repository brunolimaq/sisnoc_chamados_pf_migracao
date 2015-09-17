package br.com.sisnoc.chamados.modelo;


public class Chamados {

	
	private String chamado;
	private String nome;
	private String descricao;
	private String tipo;
	private String status;
	private String sla;
	private Integer sla2;
	private String categoria;
	private String abertura;
	private String dataInicio;
	private String dataAgendamento;
	private String id;
	private String atualizacao;
	private String diasAtualizacao;
	private String chamado_Pai;

	




	public String getDescricao() {
		return descricao;
	}


	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}




	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSla() {
		return sla;
	}

	public void setSla(String sla) {
		this.sla = sla;
	}

	public Integer getSla2() {
		return sla2;
	}

	public void setSla2(Integer sla2) {
		this.sla2 = sla2;
	}


	public String getChamado() {
		return chamado;
	}


	public void setChamado(String chamado) {
		this.chamado = chamado;
	}



	public String getTipo() {
		return tipo;
	}



	public void setTipo(String tipo) {
		this.tipo = tipo;
	}



	public String getCategoria() {
		return categoria;
	}



	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}



	public String getAbertura() {
		return abertura;
	}



	public void setAbertura(String abertura) {
		this.abertura = abertura;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getDataInicio() {
		return dataInicio;
	}


	public void setDataInicio(String string) {
		this.dataInicio = string;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getAtualizacao() {
		return atualizacao;
	}


	public void setAtualizacao(String atualizacao) {
		this.atualizacao = atualizacao;
	}


	public String getDiasAtualizacao() {
		return diasAtualizacao;
	}


	public void setDiasAtualizacao(String diasAtualizacao) {
		this.diasAtualizacao = diasAtualizacao;
	}


	public String getDataAgendamento() {
		return dataAgendamento;
	}


	public void setDataAgendamento(String dataAgendamento) {
		this.dataAgendamento = dataAgendamento;
	}


	public String getChamado_Pai() {
		return chamado_Pai;
	}


	public void setChamado_Pai(String chamado_Pai) {
		this.chamado_Pai = chamado_Pai;
	}



	
}
