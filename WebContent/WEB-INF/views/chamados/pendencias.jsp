<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chamados ${equipe} </title>

  
  	 <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" />
  	 <link rel="stylesheet" type="text/css" href="resources/css/sisnoc.css" />
  	 <script src="resources/js/jquery-2.1.4.js"></script>
  	 
     
     	
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

<br>	
<br>

<div class="panel panel-primary">
        <div class="panel-heading"><h3 id="chamados"><center><strong>Chamados Pendentes</strong></center></h3></div>
	<div class="panel-body">
		<div class="row">

				<div class="col-md-6">
               	<div class="list-group ">
                   	<a href="#chamados" class="list-group-item active" id="painel_chamados_titulo">
						<strong>Chamados </strong>
					 </a>
					<c:if test="${empty chamadosPendentes}">
						<div class="alert alert-success" role="alert"><strong>Nenhuma ocorr�ncia nesta fila!</strong></div>

  					</c:if>
  					<c:if test="${!empty chamadosPendentes}">
					 
						<table class="table table-bordered ">
							<thead>
								<tr class="painel_chamados">
									<td><center><strong>Equipe</strong></center></td>
									<td><center><strong>Chamado</strong></center></td>
									<td><center><strong>Descri��o</strong></center></td>
									<td><center><strong>SLA</strong></center></td>
<%-- 									<td><center><strong>Meta</strong></center></td> --%>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${chamadosPendentes}" var="chamadosPendentes">	
									<tr  class="${chamadosPendentes.alerta}">
										<td>${chamadosPendentes.equipe}</td>
										<td><a href="http://suportecgti.dpf.gov.br/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosPendentes.id}" target="_blank" >${chamadosPendentes.chamado}</a></td>
										<td>${chamadosPendentes.titulo}</td>
										<td>${chamadosPendentes.sla}
										<%-- <c:if test="${chamadosPendentes.equipe == 'Banco de Dados'}">	
												<td  width="15%" height="70%" style="padding:3px" >
												<div class="progress" style="height:30px" align="center">
												  <div class="progress-bar ${chamadosPendentes.meta_2}" style="width: 33%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 2 horas">
												    <span >2</span>
												  </div>
												  <div class="progress-bar ${chamadosPendentes.meta_6}" style="width: 33%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 6 horas">
												    <span>6</span>
												  </div>
												  <div class="progress-bar ${chamadosPendentes.meta_24}" style="width: 34%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 24 horas">
												    <span>12</span>
												  </div>
												</div>
												</td>
											</c:if>
											<c:if test="${chamadosPendentes.equipe == 'Seguran�a da Informa��o - Ativos'}">	
												<td  width="15%" height="70%" style="padding:3px" >
												<div class="progress" style="height:30px" align="center">
												  <div class="progress-bar ${chamadosPendentes.meta_2}" style="width: 33%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 2 horas">
												    <span >15m</span>
												  </div>
												  <div class="progress-bar ${chamadosPendentes.meta_6}" style="width: 33%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 6 horas">
												    <span>45m</span>
												  </div>
												  <div class="progress-bar ${chamadosPendentes.meta_24}" style="width: 34%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 24 horas">
												    <span>1</span>
												  </div>
												</div>
												</td>
											</c:if>
											<c:if test="${chamadosPendentes.equipe != 'Banco de Dados'}">	
												<c:if test="${chamadosPendentes.equipe != 'Seguran�a da Informa��o - Ativos'}">	
													<td  width="15%" height="70%" style="padding:3px" >
													<div class="progress" style="height:30px" align="center">
													  <div class="progress-bar ${chamadosPendentes.meta_2}" style="width: 33%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 2 horas">
													    <span >2</span>
													  </div>
													  <div class="progress-bar ${chamadosPendentes.meta_6}" style="width: 33%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 6 horas">
													    <span>6</span>
													  </div>
													  <div class="progress-bar ${chamadosPendentes.meta_24}" style="width: 34%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 24 horas">
													    <span>24</span>
													  </div>
													</div>
													</td>
												</c:if>
											</c:if> --%>
										</tr>
								</c:forEach>
							</tbody>    
						</table>
					</c:if>
                   </div>
               </div> <!-- fim DIV col-md6 do Chamados ROW -->
               
               				<div class="col-md-6">
               	<div class="list-group ">
                   	<a href="#chamados" class="list-group-item active" " id="painel_incidente_titulo">
						<strong>Incidentes </strong>
					 </a>
					<c:if test="${empty incidentesPendentes}">
						<div class="alert alert-success" role="alert"><strong>Nenhuma ocorr�ncia nesta fila!</strong></div>

  					</c:if>
  					<c:if test="${!empty incidentesPendentes}">
					 
						<table class="table table-bordered ">
							<thead>
								<tr class="painel_incidente">
									<td><center><strong>Equipe</strong></center></td>
									<td><center><strong>Chamado</strong></center></td>
									<td><center><strong>Descri��o</strong></center></td>
									<td><center><strong>SLA</strong></center></td>
<%-- 									<td><center><strong>Meta</strong></center></td> --%>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${incidentesPendentes}" var="incidentesPendentes">	
									<tr  class="${incidentesPendentes.alerta}">
										<td>${incidentesPendentes.equipe}</td>
										<td><a href="http://suportecgti.dpf.gov.br/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${incidentesPendentes.id}" target="_blank" >${incidentesPendentes.chamado}</a></td>										<td>${incidentesPendentes.titulo}</td>
										<td>${incidentesPendentes.sla}
										</td>
										<%-- <td  width="15%" height="70%" style="padding:3px" >
										<div class="progress" style="height:30px" align="center">
										  <div class="progress-bar ${incidentesPendentes.meta_2}" style="width: 33%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 2 horas">
										    <span >15m</span>
										  </div>
										  <div class="progress-bar ${incidentesPendentes.meta_6}" style="width: 33%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 6 horas">
										    <span>45m</span>
										  </div>
										  <div class="progress-bar ${incidentesPendentes.meta_24}" style="width: 34%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 24 horas">
										    <span>1</span>
										  </div>
										</div>
										</td> --%>
									</tr>
								</c:forEach>
							</tbody>    
						</table>
					</c:if>						
                   </div>
               </div> <!-- fim DIV col-md4 do Chamados ROW -->
               
               
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