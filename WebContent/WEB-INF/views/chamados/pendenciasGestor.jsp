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
	
	<script src="resources/js/jquery-3.1.1.min.js"></script>
	<script src="resources/js/highcharts.js"></script>
	<script src="resources/js/highcharts-more.js"></script>
	<script src="resources/js/solid-gauge.js"></script>
  	 
     
     	
 <script type="text/javascript"> 


         function timedRefresh(timeoutPeriod) {
            setTimeout("location.reload(true);", timeoutPeriod);
        }
         jQuery(document).ready(function () {
             timedRefresh(15000);
        });
       
  </script>  	  

</head>
<body>
<br>



<c:import url="menu.jsp"></c:import>


<div class="panel panel-primary">
        <div class="panel-heading"><h3 id="chamados"><center><strong>Pendências</strong></center></h3></div>
	<div class="panel-body">
	
		<div class="row">

		<div class="col-md-3">
               	<div class="list-group ">
                   	<a href="#chamados" class="list-group-item active" id="painel_rdm_planejamento">
						<strong>Agendados</strong>
					 </a>
					<c:if test="${empty chamadosPendenteAgendado}">
						<div class="alert alert-success" role="alert"><strong>Nenhuma ocorrência nesta fila!</strong></div>

  					</c:if>
  					<c:if test="${!empty chamadosPendenteAgendado}">
					 
						<table class="table table-bordered table-hover">
							<thead>
								<tr class="painel_rdm_planejamento">
									<td><center><strong>Número</strong></center></td>
									<td><center><strong>Responsável</strong></center></td>
<%-- 									<td><center><strong>Descrição</strong></center></td> --%>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${chamadosPendenteAgendado}" var="chamadosPendenteAgendado">	
									<tr>
										<td><a href="https://suportecgti.dpf.gov.br/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosPendenteAgendado.id}" target="_blank" >${chamadosPendenteAgendado.chamado}</a></td>
										<td>${chamadosPendenteAgendado.equipe}</td>
<%-- 										<td>${chamadosPendenteAgendado.titulo}</td> --%>
									</tr>
									
								</c:forEach>
							</tbody>    
						</table>
					</c:if>						
                   </div>
			</div>
               
               	<div class="col-md-3">
               	<div class="list-group ">
                   	<a href="#chamados" class="list-group-item active" " id="painel_rdm_validacao">
						<strong>Em aprovação </strong>
					 </a>
					 	<c:if test="${empty chamadosPendenteEmAprovacao}">
						<div class="alert alert-success" role="alert"><strong>Nenhuma ocorrência nesta fila!</strong></div>

  					</c:if>
  					<c:if test="${!empty chamadosPendenteEmAprovacao}">
					 
						<table class="table table-bordered table-hover">
							<thead>
								<tr class="painel_rdm_validacao">
									<td><center><strong>Número</strong></center></td>
									<td><center><strong>Responsável</strong></center></td>
<%-- 									<td><center><strong>Descrição</strong></center></td> --%>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${chamadosPendenteEmAprovacao}" var="chamadosPendenteEmAprovacao">	
									<tr>
										<td><a href="https://suportecgti.dpf.gov.br/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosPendenteEmAprovacao.id}" target="_blank" >${chamadosPendenteEmAprovacao.chamado}</a></td>
										<td>${chamadosPendenteEmAprovacao.equipe}</td>
<%-- 										<td>${chamadosPendenteEmAprovacao.titulo}</td> --%>
									</tr>
									
								</c:forEach>
							</tbody>    
						</table>
					</c:if>						
					 
				
                   </div>
               </div>
               
                <div class="col-md-3">
               	<div class="list-group ">
                   	<a href="#chamados" class="list-group-item active" " id="painel_rdm_aprovada">
						<strong>Aguardando</strong>
					 </a>
					<c:if test="${empty chamadosPendenteAguardando}">
						<div class="alert alert-success" role="alert"><strong>Nenhuma ocorrência nesta fila!</strong></div>

  					</c:if>
  					<c:if test="${!empty chamadosPendenteAguardando}">
					 
						<table class="table table-bordered table-hover">
							<thead>
								<tr class="painel_rdm_aprovada">
									<td><center><strong>Pendência</strong></center></td>
									<td><center><strong>Número</strong></center></td>
									<td><center><strong>Responsável</strong></center></td>
<%-- 									<td><center><strong>Descrição</strong></center></td> --%>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${chamadosPendenteAguardando}" var="chamadosPendenteAguardando">	
									<tr>
										<td>${chamadosPendenteAguardando.statusDescricao}</td>
										<td><a href="https://suportecgti.dpf.gov.br/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosPendenteAguardando.id}" target="_blank" >${chamadosPendenteAguardando.chamado}</a></td>
										<td>${chamadosPendenteAguardando.equipe}</td>
<%-- 										<td>${chamadosPendenteAguardando.titulo}</td> --%>
									</tr>
									
								</c:forEach>
							</tbody>    
						</table>
					</c:if>						
					 
				
                   </div>
               </div>  
               
               <div class="col-md-3">
               	<div class="list-group ">
                   	<a href="#chamados" class="list-group-item active" " id="painel_rdm_finalizada">
						<strong>Aguardando Validação</strong>
					 </a>
					 <c:if test="${empty chamadosPendenteValidacao}">
						<div class="alert alert-success" role="alert"><strong>Nenhuma ocorrência nesta fila!</strong></div>

  					</c:if>
  					<c:if test="${!empty chamadosPendenteValidacao}">
					 
						<table class="table table-bordered table-hover">
							<thead>
								<tr class="painel_rdm_finalizada">
									<td><center><strong>Número</strong></center></td>
									<td><center><strong>Responsável</strong></center></td>
<%-- 									<td><center><strong>Descrição</strong></center></td> --%>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${chamadosPendenteValidacao}" var="chamadosPendenteValidacao">	
									<tr>
										<td><a href="https://suportecgti.dpf.gov.br/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosPendenteValidacao.id}" target="_blank" >${chamadosPendenteValidacao.chamado}</a></td>
										<td>${chamadosPendenteValidacao.equipe}</td>
<%-- 										<td>${chamadosPendenteValidacao.titulo}</td> --%>
									</tr>
									
								</c:forEach>
							</tbody>    
						</table>
					</c:if>						
					 
				
                   </div>
               </div>  
               
               </div>
               
               <div class="row">

    	<div class="col-md-6">
               	
               	<div class="list-group ">
					<a href="#chamados" class="list-group-item active" id="painel_noc_titulo">
						<strong>Chamados violados </strong>
					 </a>
				<div class="alert alert-warning" role="alert"><strong>Em Construção</strong></div>
					 
<!-- 					 	<table class="table table-bordered table-hover"> -->
<!-- 							<thead> -->
<!-- 								<tr class="painel_noc"> -->
<%-- 									<td><center><strong>Categoria</strong></center></td> --%>
<%-- 									<td><center><strong>Equipe</strong></center></td> --%>
<%-- 									<td><center><strong>Chamado</strong></center></td> --%>
<%-- 									<td><center><strong>Descrição</strong></center></td> --%>
<%-- 									<td><center><strong>Ações</strong></center></td> --%>
<!-- 								</tr> -->
								
<!-- 							</thead> -->
<!-- 							<tbody> -->
							
<%-- 								<c:forEach items="${chamadosViolados}" var="chamadosViolados">	 --%>
									
<%-- 									<c:if test="${chamadosViolados.sla == 'Violado' }"> --%>
<!-- 									<tr > -->
<%-- 									    <td>${chamadosViolados.tipoLegivel}</td> --%>
<%-- 										<td>${chamadosViolados.equipe}</td> --%>
<%-- 									    <td><a href="https://suportecgti.dpf.gov.br/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosViolados.id}" target="_blank" >${chamadosViolados.chamado}</a></td> --%>
<%-- 										<td>${chamadosViolados.titulo}</td> --%>
<%-- 										<td>${chamadosViolados.statusDescricao}</td> --%>
<!-- 									</tr> -->
<%-- 								</c:if> --%>
<%-- 								</c:forEach> --%>
								
<!-- 							</tbody>     -->
<!-- 						</table> -->
					                   </div>
					                   </div>
					
    				<div class="col-md-6">
    				               	<div class="list-group ">
    				
					<a href="#chamados" class="list-group-item active" id="painel_noc_titulo">
						<strong>Chamados reabertos </strong>
					 </a>
					 <div class="alert alert-warning" role="alert"><strong>Em Construção</strong></div>
					 
<!-- 					  	<table class="table table-bordered table-hover"> -->
<!-- 							<thead> -->
<!-- 								<tr class="painel_noc"> -->
<%-- 									<td><center><strong>Categoria</strong></center></td> --%>
<%-- 									<td><center><strong>Equipe</strong></center></td> --%>
<%-- 									<td><center><strong>Chamado</strong></center></td> --%>
<%-- 									<td><center><strong>Descrição</strong></center></td> --%>
<%-- 									<td><center><strong>Ações</strong></center></td> --%>
									
<!-- 								</tr> -->
<!-- 							</thead> -->
<!-- 							<tbody> -->
<%-- 								<c:forEach items="${chamadosReabertos}" var="chamadosReabertos">	 --%>
<%-- 								<c:if test="${chamadosReabertos.reaberto > '1' }"> --%>
								
<!-- 									<tr> -->
<%-- 										<td>${chamadosReabertos.tipoLegivel}</td> --%>
<%-- 										<td>${chamadosReabertos.equipe}</td> --%>
<%-- 									   <td><a href="https://suportecgti.dpf.gov.br/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosReabertos.id}" target="_blank" >${chamadosReabertos.chamado}</a></td> --%>
<%-- 										<td>${chamadosReabertos.titulo}</td> --%>
<!-- 										<td></td> -->
<!-- 										</tr> -->
<%-- 									</c:if> --%>
<%-- 								</c:forEach> --%>
<!-- 							</tbody>     -->
<!-- 						</table> -->
						</div>
                   
                   
               
               
              </div> <!-- row -->


              </div><!-- painel body -->
              </div><!-- painel -->



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