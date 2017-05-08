package br.com.sisnoc.chamados.modelo;


public class Chamado {

	
	private String chamado;
	private String nome;
	
	private String tipo;
	private String sla;
	private Integer sla2;
	private String categoria;
	private String abertura;
	private String dataInicio;
	private String dataAgendamento;
	
	private String atualizacao;
	private String diasAtualizacao;
	private String chamado_Pai;
	private String data_retorno;
	private Integer time;
	private String meta_2;
	private String meta_6;
	private String meta_12;
	private String meta_24;
	private Integer epoch;
	
	public Integer getEpoch() {
		return epoch;
	}


	public void setEpoch(Integer epoch) {
		this.epoch = epoch;
	}


	//MEC
	private String id;
	private String wo;
	private String responsavel;
	private String equipe;
	private String descricao;
	private String titulo;
	private String status;
	private String grupo;
	private String prioridade;
	private String statusDescricao;
	private String tipoLegivel;

	//Counts
	private Integer countNocChamados;
	private Integer countNocIncidentes;
	private Integer countTotalNoc;
	
	public String getMeta_2() {
		return meta_2;
	}


	public void setMeta_2(String meta_2) {
		this.meta_2 = meta_2;
	}


	public String getMeta_6() {
		return meta_6;
	}


	public void setMeta_6(String meta_6) {
		this.meta_6 = meta_6;
	}


	public String getMeta_24() {
		return meta_24;
	}


	public void setMeta_24(String meta_24) {
		this.meta_24 = meta_24;
	}


	public void setTime(Integer time) {
		this.time = time;
	}


	private String alerta;

	
	
	public String getWo() {
		return wo;
	}


	public void setWo(String wo) {
		this.wo = wo;
	}




	public String getTitulo() {
		return titulo;
	}


	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}


	




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


	public String getData_retorno() {
		return data_retorno;
	}


	public void setData_retorno(String data_retorno) {
		this.data_retorno = data_retorno;
	}


	public String getResponsavel() {
		return responsavel;
	}


	public void setResponsavel(String responsavel) {
		this.responsavel = responsavel;
	}


	public Integer getTime() {
		return time;
	}


	public void setTime(int time) {
		this.time = time;
	}


	public String getAlerta() {
		return alerta;
	}


	public void setAlerta(String alerta) {
		this.alerta = alerta;
	}

	@Override
	public String toString() {
		String chamado = this.getChamado()+": "+this.getTipo()+": "+this.getTime()+": "+this.getStatus();
		return chamado;
	}


	public String getEquipe() {
		return equipe;
	}


	public void setEquipe(String equipe) {
		this.equipe = equipe;
	}


	public String getMeta_12() {
		return meta_12;
	}


	public void setMeta_12(String meta_12) {
		this.meta_12 = meta_12;
	}


	public Integer getCountNocChamados() {
		return countNocChamados;
	}


	public void setCountNocChamados(Integer countNocChamados) {
		this.countNocChamados = countNocChamados;
	}


	public Integer getCountNocIncidentes() {
		return countNocIncidentes;
	}


	public void setCountNocIncidentes(Integer countNocIncidentes) {
		this.countNocIncidentes = countNocIncidentes;
	}


	public Integer getCountTotalNoc() {
		
		return countNocChamados+countNocIncidentes;
	}


	public String getGrupo() {
		return grupo;
	}


	public void setGrupo(String grupo) {
		this.grupo = grupo;
	}


	public String getPrioridade() {
		return prioridade;
	}


	public void setPrioridade(String prioridade) {
		this.prioridade = prioridade;
	}


	public String getStatusDescricao() {
		return statusDescricao;
	}


	public void setStatusDescricao(String statusDescricao) {
		this.statusDescricao = statusDescricao;
	}


	public String getTipoLegivel() {
		return tipoLegivel;
	}


	public void setTipoLegivel(String tipoLegivel) {
		this.tipoLegivel = tipoLegivel;
	}




	
}
