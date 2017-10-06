<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Chamados ${equipe} </title>

  
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/index.css">
	<link rel="stylesheet" type="text/css" href="resources/css/sisnoc.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/font-awesome/css/font-awesome.min.css" />

	<script src="resources/js/jquery-3.1.1.min.js"></script>
	<script src="resources/js/highcharts.js"></script>
	<script src="resources/js/highcharts-more.js"></script>
	<script src="resources/js/solid-gauge.js"></script>
	
  	 
<style type="text/css">

a {
color: red;
}

</style>
     	
 <script type="text/javascript"> 



alteraDiv = function (){
    if($('#opcao').val() == 'rel_reabertos'){
   
        $("#listaUsuarios").hide();
        $("#listaEquipes").hide();
        $("#listaPor").hide();
        $("#listaMes").hide();
        $("#listaAno").hide();
        $("#listaTipo").hide();
        $("#responsavel").hide();
        $("#gerencia").hide();
        $("#usuarioAfetado").hide();

    }
    
    if($('#opcao').val() == 'rel_chamados'){

    	$("#listaUsuarios").hide();
        $("#listaEquipes").hide();
        $("#listaPor").hide();
        $("#listaMes").show();
        $("#listaAno").show();
        $("#listaTipo").show();
        $("#responsavel").hide();
        $("#gerencia").show();
        $("#usuarioAfetado").hide();

     }
    
    if($('#opcao').val() == 'vol_requisicoes'){

    	$("#listaUsuarios").hide();
        $("#listaEquipes").hide();
        $("#listaPor").hide();
        $("#listaMes").hide();
        $("#listaAno").hide();
        $("#listaTipo").hide();
        $("#responsavel").hide();
        $("#gerencia").hide();
        $("#usuarioAfetado").hide();

     }
    
    if($('#opcao').val() == 'rel_Aberto7Dias'){

    	$("#listaUsuarios").hide();
        $("#listaEquipes").hide();
        $("#listaPor").hide();
        $("#listaMes").hide();
        $("#listaAno").hide();
        $("#listaTipo").hide();
        $("#responsavel").hide();
        $("#gerencia").show();
        $("#usuarioAfetado").hide();

     }
    
    if($('#opcao').val() == 'rel_satisfacao_geral'){


    	$("#listaUsuarios").hide();
        $("#listaEquipes").hide();
        $("#listaPor").hide();
        $("#listaMes").show();
        $("#listaAno").show();
        $("#listaTipo").hide();
        $("#responsavel").hide();
        $("#gerencia").hide();
        $("#usuarioAfetado").hide();

     }
    
    if($('#opcao').val() == 'rel_satisfacao_gerencia'){


    	$("#listaUsuarios").hide();
        $("#listaEquipes").hide();
        $("#listaPor").hide();
        $("#listaMes").show();
        $("#listaAno").show();
        $("#listaTipo").hide();
        $("#responsavel").hide();
        $("#gerencia").show();
        $("#usuarioAfetado").hide();

     }
    
    if($('#opcao').val() == 'rel_satisfacao_equipe'){


    	$("#listaUsuarios").hide();
        $("#listaEquipes").show();
        $("#listaPor").hide();
        $("#listaMes").show();
        $("#listaAno").show();
        $("#listaTipo").hide();
        $("#responsavel").hide();
        $("#gerencia").hide();
        $("#usuarioAfetado").hide();

     }
    if($('#opcao').val() == 'rel_pendentes_algar'){


    	$("#listaUsuarios").hide();
        $("#listaEquipes").hide();
        $("#listaPor").hide();
        $("#listaMes").hide();
        $("#listaAno").hide();
        $("#listaTipo").hide();
        $("#responsavel").hide();
        $("#gerencia").hide();
        $("#usuarioAfetado").hide();

     }
    if($('#opcao').val() == 'rel_pendentes_nao_algar'){


    	$("#listaUsuarios").hide();
        $("#listaEquipes").hide();
        $("#listaPor").hide();
        $("#listaMes").hide();
        $("#listaAno").hide();
        $("#listaTipo").hide();
        $("#responsavel").hide();
        $("#gerencia").hide();
        $("#usuarioAfetado").hide();

     }
    
    if($('#opcao').val() == 'rel_incidentes_mes'){

    	$("#listaUsuarios").hide();
        $("#listaEquipes").hide();
        $("#listaPor").hide();
        $("#listaMes").show();
        $("#listaAno").show();
        $("#listaTipo").hide();
        $("#responsavel").hide();
        $("#gerencia").hide();
        $("#usuarioAfetado").hide();

     }
    
    
    if($('#opcao').val() == 'rel_final_afetado'){

    	$("#listaUsuarios").hide();
        $("#listaEquipes").hide();
        $("#listaPor").hide();
        $("#listaMes").show();
        $("#listaAno").show();
        $("#listaTipo").hide();
        $("#responsavel").hide();
        $("#gerencia").hide();
        $("#usuarioAfetado").show();
     }
    
    if($('#opcao').val() == 'rel_problemas_tickets'){

    	$("#listaUsuarios").hide();
        $("#listaEquipes").hide();
        $("#listaPor").hide();
        $("#listaMes").show();
        $("#listaAno").show();
        $("#listaTipo").hide();
        $("#responsavel").hide();
        $("#gerencia").hide();
        $("#usuarioAfetado").hide();

     }
    
}
 </script>  	 

</head>
<body>





<c:import url="menu.jsp"></c:import>

				<div class="panel panel-primary">
      			  <div class="panel-heading"><h3 id="chamados"><center><strong>Relatórios</strong></center></h3></div>
					<div class="panel-body">

              
             <div class="row">

				
					<div class="col-md-12">
					
					
					
						<form class="form-horizontal" action="/chamados/relatoriosDinamicos/" method="GET" target="_blank">
							<br/>
							<br/>
							
						<div class="form-group">
						    <div class="col-md-4">
						    <label for="relatorios">Relatórios:</label>
								<select class="form-control" name="opcao" id="opcao" onchange="alteraDiv()" >
<!-- 								  <option id="rel_reabertos" value="rel_reabertos">Chamados Reabertos</option> -->
								  <option id="#" value="#">Escolha um relatório..</option>
								  <option id="rel_chamados" value="rel_chamados">Chamados</option>
<!-- 								  <option id="vol_requisicoes" value="vol_requisicoes">Volumetria - Chamados</option> -->
								  <option id="rel_Aberto7Dias" value="rel_Aberto7Dias">Chamados com pendênncias superior a uma semana</option>
								  <option id="rel_satisfacao_geral" value="rel_satisfacao_geral">Satisfação - Geral</option> 
     						      <option id="rel_satisfacao" value="rel_satisfacao_gerencia">Satisfação por gerência</option> 
								  <option id="rel_satisfacao" value="rel_satisfacao_equipe">Satisfação por equipe</option>
								  <option id="rel_pendentes_algar" value="rel_pendentes_algar">Pendentes Algar</option>
								  <option id="rel_pendentes_nao_algar" value="rel_pendentes_nao_algar">Pendentes não Algar</option>
								  <option id="rel_incidentes_mes" value="rel_incidentes_mes">Incidentes aberto Mês</option>
								  
								  <option id="rel_final_afetado" value="rel_final_afetado">Chamados por usuário final afetado</option>
								  <option id="rel_problemas_tickets" value="rel_problemas_tickets">Problemas e Tickets relacionados</option>								  
								</select>
					    	</div>
						  </div>	
						<div class="form-group"  style="display: none;" id="listaPor" >
						    <div class="col-md-2">
   						    <label for="opcao">Relatórios por:</label>
								<select class="form-control"  >
								    <option value="usuario">Usuários</option>
								    <option value="equipe">Equipes</option>
								</select>
							</div>
						</div>
						
						 <div class="form-group has-feedback" style="display: none;" id="usuarioAfetado">
						    <div class="col-md-3">
							    <label for="usuarioAfetado">Usuário afetado</label>
							    <input type="text" class="form-control" placeholder="Digite um usuário.." autofocus="autofocus"  id="usuarioAfetado" name="usuarioAfetado"/>
							</div>
						  </div>
						<div class="form-group" style="display: none;" id="listaEquipes">
						    <div class="col-md-3">
						    <label for="relatorios">Equipes:</label>
								<select class="form-control" id="equipe" name="equipe">
								<option value="SERVICE DESK 1° NIVEL">SERVICE DESK 1° NIVEL</option>
								<option value="Service Desk 1° NIVEL - E-mail Respondido">Service Desk 1° NIVEL - E-mail Respondido</option>
								<option value="SERVICE DESK 2° NIVEL - SETOR POLICIAL">SERVICE DESK 2° NIVEL - SETOR POLICIAL</option>
								<option value="SERVICE DESK 2° NIVEL - SEDE">SERVICE DESK 2° NIVEL - SEDE</option>
								<option value="SERVICE DESK 2° NIVEL - ANP">SERVICE DESK 2° NIVEL - ANP</option>
								<option value="SERVICE DESK 2° NIVEL - SUDOESTE">SERVICE DESK 2° NIVEL - SUDOESTE</option>
								<option value="SERVICE DESK 2° NIVEL - AEROPORTO">SERVICE DESK 2° NIVEL - AEROPORTO</option>
								<option value="MICROSOFT">MICROSOFT</option>
								<option value="APLICAÇÕES, SISTEMAS OPERACIONAIS E ORQUESTRAÇÃO">APLICAÇÕES, SISTEMAS OPERACIONAIS E ORQUESTRAÇÃO</option>
								<option value="SEGURANÇA DA INFORMAÇÃO">SEGURANÇA DA INFORMAÇÃO</option>
								<option value="GERENCIAMENTO DE IDENTIDADES">GERENCIAMENTO DE IDENTIDADES</option>
								<option value="REDES LOCAIS, METROPOLITANA E DE LONGA DISTÂNCIA">REDES LOCAIS, METROPOLITANA E DE LONGA DISTÂNCIAS</option>
								<option value="SISTEMAS DE COMUNICAÇÃO E MENSAGEM ELETRÔNICA">SISTEMAS DE COMUNICAÇÃO E MENSAGEM ELETRÔNICA</option>
								<option value="BANCO DE DADOS">BANCO DE DADOS</option>
								<option value="MONITORAMENTO DE REDES, SERVIÇOS E APLICAÇÕES">MONITORAMENTO DE REDES, SERVIÇOS E APLICAÇÕES</option>
								<option value="GOVERNANÇA DE TI">GOVERNANÇA DE TI</option>
								<option value="Implantação">Implantação</option>
								<option value="SUPERVISÃO">SUPERVISÃO</option>
								</select>
						  </div>	 
						  </div> 
						  <div class="form-group"  style="display: none;" id="listaMes" >
						    <div class="col-md-2">
							    <label for="periodo">Mês:</label>
								<select class="form-control" id="mes" name="mes">
								  <option value="1">Janeiro</option>
								  <option value="2">Feveiro</option>
								  <option value="3">Março</option>
								  <option value="4">Abril</option>
								  <option value="5">Maio</option>
								  <option value="6">Junho</option>
								  <option value="7">Julho</option>
								  <option value="8">Agosto</option>								  								  
								  <option value="9">Setembro</option>
								  <option value="10">Outubro</option>
								  <option value="11">Novembro</option>
								  <option value="12">Dezembro</option>								  
								</select>
							</div>
						</div>		
						<div class="form-group"  style="display: none;" id="listaAno" >
						    <div class="col-md-2">
							    <label for="periodoAte">Ano:</label>
								<select class="form-control" id="ano" name="ano">
								  <option value="2017">2017</option>
								  <option value="2016">2016</option>
								  <option value="2015">2015</option>
								  <option value="2014">2014</option>
								</select>
							</div>
						</div>						  
								
						<div class="form-group"  style="display: none;" id="gerencia" >
						    <div class="col-md-2">
							    <label for="gerencia">Gerência:</label>
								<select class="form-control" id="gerencia" name="gerencia">
								  <option value="N3%">N3</option>
								  <option value="N2%">N2</option>
								  <option value="N1%">N1</option>
								</select>
							</div>
						</div>	
						<div class="form-group"  style="display: none;" id="listaTipo" >
						    <div class="col-md-2">
							    <label for="tipo">Tipo chamado:</label>
								<select class="form-control" id="tipo" name="tipo">
								  <option value="TODOS">Todos</option>
								  <option value="Incidente">Incidente</option>
								  <option value="Chamado">Chamado</option>
								  <option value="Problema">Problema</option>
								</select>
							</div>
						</div>				 
						
						
						 
  
						  	  
						  <div class="form-group">
						    <div class="col-md-2">
								  <button type="submit" class="btn btn-primary">Gerar</button>
						    </div>
						  </div>
						</form>
						
						
	             	</div>
	             	
	             		
	             	
             	</div>
            </div>
              
              </div><!-- painel body -->



<script src="resources/js/jquery-2.1.4.js"></script>

<!-- smooth scrolling script -->
<script>
		$(function () {
		
		$('a[href^="#"]').click(function(event) {
			var id = $(this).attr("href");
			var offset = 20;
			var target = $(id).offset().top - offset;
		
		$('html, body').animate({scrollTop:target}, 4000);
			event.preventDefault();
		});
		
		});
</script>
<!-- end smooth scrolling script -->

<jsp:include page="footer.jsp"></jsp:include>

<script src="resources/js/jquery-2.1.4.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>