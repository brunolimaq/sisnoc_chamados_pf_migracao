
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

  <nav  class="navbar navbar-inverse navbar-fixed-top">
<div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/chamados/listaChamados">Sisnoc Algar</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li><a href="/chamados/">Painel</a></li>
        <li><a href="/chamados/pendencias">Pendências <span class="badge">${countPendencias}</span></a></li>
        <li><a href="/chamados/gmud">RDM</a></li>
        <li><a href="/chamados/projetos">Projetos</a></li>
        <li><a href="/chamados/problemas">Problemas</a></li>
        <li><a href="/chamados/relatorios">Relatórios</a></li>
        
<!--         <li><a href="#">Problemas <span class="badge"></span></a></li> -->
<!--         <li><a href="#">GMUD</a></li> -->
<!--         <li><a href="#">Relat?rios</a></li> -->
  <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Equipes N3
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
			<li ><a href="/chamados/equipe_micro">Microsoft<span class="badge"></span></a></li>
			<li ><a href="/chamados/equipe_app_so_orq">Aplicações, Sistemas Operacionais <span class="badge"></span></a></li>
			<li ><a href="/chamados/equipe_seg">Segurança da Informação<span class="badge"></span></a></li>
            <li><a href="/chamados/equipe_ger_ident">Gerenciamento de Identidades <span class="badge"></span></a></li>
            <li><a href="/chamados/equipe_redes">Redes <span class="badge"></span></a></li>
            <li><a href="/chamados/equipe_comun_msg">Comunicação e Mensageria <span class="badge"></span></a></li>
            <li><a href="/chamados/equipe_bancoDados">Banco de dados <span class="badge"></span></a></li>
            <li><a href="/chamados/equipe_monRedes_servApp">Monitoramento <span class="badge"></span></a></li>
            <li><a href="/chamados/equipe_governaca">Governaça de TI <span class="badge"></span></a></li>
            <li><a href="/chamados/equipe_implantacao">Implantação<span class="badge"></span></a></li>
            <li><a href="/chamados/equipe_supervisao">Supervisão <span class="badge"></span></a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Equipes N2 
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
			<li ><a href="/chamados/equipe_n2_setPol">Setor Policial<span class="badge"></span></a></li>
			<li ><a href="/chamados/equipe_n2_sede">Sede <span class="badge"></span></a></li>
			<li ><a href="/chamados/equipe_n2_anp">ANP<span class="badge"></span></a></li>
            <li><a href="/chamados/equipe_n2_sudoca">Sudoeste <span class="badge"></span></a></li>
            <li><a href="/chamados/equipe_n2_aeroporto">Aeroporto <span class="badge"></span></a></li>
          </ul>
        </li>
		<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Equipes N1
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
			<li ><a href="/chamados/equipe_n1">1º Nível<span class="badge"></span></a></li>
			<li ><a href="/chamados/equipe_n1_email">1º Nível - E-mail Respondido<span class="badge"></span></a></li>
          </ul>
        </li>
        

        
      </ul>
    
      <ul class="nav navbar-nav navbar-right"> 
					<li>
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
							Minha Conta
							<span class="caret"></span> 
						</a>
						<div class="dropdown-menu perfil">
							<div class="col-sm-4 hidden-xs">
								<img class="img-responsive img-rounded" src="resources/images/logoalgar.png"> 
								
							</div>
							<ul class="list-unstyled col-sm-8"> 
								<li><sec:authentication property="principal.username"/></li>
								<li><a href="/chamados/perfil">Alterar Perfil</a></li>
								<li><a href="/chamados/logout">Sair</a></li>
							</ul>
						</div>
					</li>
		</ul>     
		 <ul class="nav navbar-nav navbar-right"> 
					<li>
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
							Perfil
							<span class="caret"></span> 
						</a>
						<div class="dropdown-menu perfil">
							<div class="col-sm-4 hidden-xs">
								<img class="img-responsive img-rounded" src="resources/images/logoalgar.png"> 
								
							</div>
							<ul class="list-unstyled col-sm-8"> 
								<li>Perfil</li>
								<li><a href="/chamados/mudarPerfilN1">N1</a></li>
								<li><a href="/chamados/mudarPerfilN2">N2</a></li>
								<li><a href="/chamados/mudarPerfilN3">N3</a></li>
							</ul>
						</div>
					</li>
		</ul>
      
    </div>
  </div>
</nav>
<br/>
<br/>
	
<input type="hidden" id="input-urlRaiz"  value="/chamados/">