<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="chamadosteste" class="br.com.sisnoc.chamados.modelo.Chamados"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Chamados SAC</title>
  
  	 <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" />
     <script src="resources/js/jquery-2.1.4.js"></script>
     <script src="resources/js/bootstrap.min.js"></script>
     
     	
<script type="text/javascript">


        function timedRefresh(timeoutPeriod) {
            setTimeout("location.reload(true);", timeoutPeriod);
        }

        jQuery(document).ready(function () {
            timedRefresh(15000);
        });
       
    </script>

<style>
.navbar-default {
  background-color: #EAE6E6;
  border-color: #e7e7e7;
}

body {
font-size: 13px;
}

 .panel-heading {
      padding: 1px 0 0 0;
      border-bottom: 1px solid transparent;
      border-top-left-radius: 3px;
      border-top-right-radius: 3px;
    }    
        .app_linux {
            color: #31708f;
            background-color: #d9edf7;
            border-color: #bce8f1;
            
        }
        
          .app_zabbix {
            color: white;
            background-color: #337AB7;
            border-color: #337AB7;
        }
        
        .Incidente {
            background-color:  #fcf8e3 !important; 
             
        }
        
		
		#slaid_0 {
		
			}
			
			
		#slaid_1 {
			  color: #732801;
			}
			
		#slaid_1 a {
			  color: #732801;
			}
			
	    #slaid_2 {
			  color: #8B3D0D;
			}
		#slaid_2 a {
			  color: #8B3D0D;
		}
			
	    #slaid_3 {
			  color: #FF3A00;
			}
		#slaid_3  a {
			color: #FF3A00;
  		}
			
	    #slaid_4 {
			color: #FF0000;
			border-color:  #FF0000;
  			}
  		
  		#slaid_4  a {
			color: #FF0000;
  		}
  			
  			
	    #slaid_5 {
  			color: #FFFFFF;
			background-color: #FF0000 !important;		
  			}
  		#slaid_5 a {
  			color: #FFFFFF;
  		}	
  		
  		#slaid_6 {
			  color: #FFFFFF;
			  background-color: #000000 !important;
		  }
		#slaid_6 a {
  			color: #FFFFFF;
  		}	
  		
  		#od_padrao {
  			color: #337ab7;
			background-color: #E5E5E5 !important;
  			}
 
		#sladias_0 {
 				color: #333;
			  background-color: #fff;  		}
			  
		#sladias_0 a {
  			color: #333;
  		}
		#sladias_1 {
 			color: #333;
			  background-color: #fff;  			}
			  
		#sladias_1 a {
  			color: #333;
  		}
  				#sladias_2 {
 				color: #F08657;
			  background-color: #fff;  		}
			  
		#sladias_2 a {
  			color: #F08657;
  		}
  				#sladias_3 {
 				color: #F08657;
			  background-color: #fff;  		}
			  
		#sladias_3 a {
  			color: #F08657;
  		}
  				#sladias_4 {
 				color: #F08657;
			  background-color: #fff;  		}
			  
		#sladias_4 a {
  			color: #F08657;
  		}
  				#sladias_5 {
 				color: #FF4E00;
			  background-color: #fff;  		}
			  
		#sladias_5 a {
  			color: #FF4E00;
  		}
  				#sladias_6 {
 				color: #FF4E00;
			  background-color: #fff;  		}
			  
		#sladias_6 a {
  			color: #FF4E00;
  		}
  				#sladias_7 {
 				color: #F75252;
			  background-color: #fff;  		}
			  
		#sladias_7 a {
  			color: #F75252;
  		}
  				#sladias_8 {
 				color: #FF0000;
			  background-color: #fff;  		}
			  
		#sladias_8 a {
  			color: #FF0000;
  		}
  				#sladias_9 {
 				color: #FF0000;
			  background-color: #fff;  		}
			  
		#sladias_9 a {
  			color: #FF0000;
  		}  		
  
  	.filho { 
	display: none; 
	background-color: #FDFBC4;
    font-size: 11px;
    }
     .filho_td div td { 
     padding: 1px;
     font-size: 5px;
    }
	  #logo { 
       width: 20px;
       height: 20px;
	}
	
	 #logo_seta { 
    width: 20px;
    height: 20px;
    left: -33px;
    top: 14px;
    position: relative;
	}
	
	#texto {
	text-align: right;
	}

</style>

</head>

<body>
<br>

  <nav class="navbar navbar-default  navbar-fixed-top">
<div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Sisnoc</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
          <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Equipes
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
          
          <li ><a href="#aplicacao">Aplicação <span class="badge">${countApp}</span></a></li>
            <li><a href="#banco">Banco de Dados <span class="badge">${countBd}</span></a></li>
            <li><a href="#bkp">Backup <span class="badge">${countBkp}</span></a></li>
            <li><a href="#vmware">VMWare <span class="badge">${countVm}</span></a></li>
            <li><a href="#So">Sist. Operacionais <span class="badge">${countSo}</span></a></li>
            <li><a href="#rede">Rede <span class="badge">${countRede}</span></a></li>
            <li><a href="#zabbix">Zabbix <span class="badge">${countZa}</span></a></li>
            <li><a href="#storage">Storage <span class="badge">${countSto}</span></a></li>
            <li><a href="#document">Documentadores <span class="badge">${countDoc}</span></a></li>
            <li><a href="#corp">Corporativo <span class="badge">${countCorp}</span></a></li>
            <li><a href="#monitoracao">Monitoração <span class="badge">${countMon}</span></a></li>
            <li><a href="#gerencial">Supervisor <span class="badge">${countGer}</span></a></li>
          </ul>
        </li>
        <li><a href="#problemas">Problemas <span class="badge">${countPro}</span></a></li>
        <li><a href="#os">Ordem de Serviço <span class="badge">${countOs}</span></a></li>
        <li><a href="#">RDM</a></li>
        <li><a href="relatorios">Relatórios</a></li>

 
      </ul>
    </div>
  </div>
</nav>

<br>
<br>
<div class="panel panel-primary">
        <div class="panel-heading"><h3 id="chamados"><center><strong>Chamados Algar</strong></center></h3></div>
        <div class="panel-body">
                   

         <div class="row">

                <div class="col-md-4">
                    <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
   <center><strong>Monitoração</strong></center> 
  </a>
                   
                 <table class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Tipo</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>SLA</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosPainelMon}" var="chamadosPainelMon">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosPainelMon.sla2}" id="slaid_${chamadosPainelMon.sla2}">
											<td>${chamadosPainelMon.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosPainelMon.id}" target="_blank" >${chamadosPainelMon.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosPainelMon.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosPainelMon.descricao}</td>
											<td >${chamadosPainelMon.tipo}</td>
											<td>${chamadosPainelMon.status}</td>
											<td>${chamadosPainelMon.sla}</td>
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosPainelMon.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td >${chamadosFilhos.descricao}</td>
															<td >${chamadosFilhos.tipo}</td>
															<td >${chamadosFilhos.status}</td>
															<td >${chamadosFilhos.sla}</td>
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>    
                    </table>
                   
                   
                    </div>
                </div>
                
                
                
                <div class="col-md-4">
                    <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
<center><strong>Solicitações</strong></center>  
  </a>
                   
    <table  id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>SLA</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosPainelSol}" var="chamadosPainelSol">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosPainelSol.sla2}" id="slaid_${chamadosPainelSol.sla2}">
											<td>${chamadosPainelSol.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosPainelSol.id}" target="_blank" >${chamadosPainelSol.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosPainelSol.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosPainelSol.descricao}</td>
											<td>${chamadosPainelSol.status}</td>
											<td>${chamadosPainelSol.sla}</td>
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosPainelSol.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td >${chamadosFilhos.descricao}</td>
															<td >${chamadosFilhos.status}</td>
															<td >${chamadosFilhos.sla}</td>
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>                            
                    </table>
                   
                   
                    </div>
                </div>
                
                
          <div class="col-md-4">
                    <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
<center><strong>Incidentes</strong></center>  
  </a>
                   
    <table class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>SLA</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosPainelInc}" var="chamadosPainelInc">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosPainelInc.sla2}" id="slaid_${chamadosPainelInc.sla2}">
											<td>${chamadosPainelInc.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosPainelInc.id}" target="_blank" >${chamadosPainelInc.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosPainelInc.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosPainelInc.descricao}</td>
											<td>${chamadosPainelInc.status}</td>
											<td>${chamadosPainelInc.sla}</td>
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosPainelInc.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td >${chamadosFilhos.descricao}</td>
															<td >${chamadosFilhos.status}</td>
															<td >${chamadosFilhos.sla}</td>
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>                            
                    </table>
                    </div>
                    
                    
                </div>


                
                
                
            </div>

          <div class="row">
          
          
                              <div class="col-md-6">
                    <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
<center><strong>Requisição de Mudança</strong></center>  
  </a>
                   
                   
                        <table class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                               <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Agendamento</strong></center></td>
                            </tr>
                          </thead>
                          
                           <tbody>
		                		<c:forEach items="${chamadosPainelRdm}" var="chamadosPainelRdm">	
										<tr>
											<td>${chamadosPainelRdm.nome}</td>
											<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=" target="_blank" >${chamadosPainelRdm.chamado}</a></td>
											<td>${chamadosPainelRdm.descricao}</td>
											<td>${chamadosPainelRdm.status}</td>
											<td>${chamadosPainelRdm.dataAgendamento}</td>
										</tr>
								</c:forEach>
                        </tbody>
                    </table>

                    </div>
                    
                    
                </div>  
                
          
                                  <div class="col-md-6">
                    <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
<center><strong>Ordem de Serviço</strong></center>  
  </a>
                   
                   
                        <table  id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                               <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Atualização</strong></center></td>
                                <td><center><strong>Aberto</strong></center></td>
                            </tr>
                          </thead>
                           <tbody  id="od_padrao">
		                		<c:forEach items="${chamadosPainelOrdemServico}" var="chamadosPainelOrdemServico">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="Status da Ordem de Serviço foi atualizado a mais de 10 dias, ATENÇÃO!!" class="${chamadosPainelOrdemServico.diasAtualizacao}" id="sladias_${chamadosPainelOrdemServico.diasAtualizacao}">
											<td>${chamadosPainelOrdemServico.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosPainelOrdemServico.id}" target="_blank" >${chamadosPainelOrdemServico.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosPainelOrdemServico.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosPainelOrdemServico.descricao}</td>
											<td>${chamadosPainelOrdemServico.status}</td>
											<td>${chamadosPainelOrdemServico.atualizacao}</td>
											<td>${chamadosPainelOrdemServico.dataInicio}</td>											
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosPainelOrdemServico.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td>${chamadosFilhos.descricao}</td>
															<td>${chamadosFilhos.status}</td>
															<td>${chamadosFilhos.atualizacao}</td>
															<td>${chamadosFilhos.dataInicio}</td>
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>                            

                    </table>

                    </div>
                </div>  
          </div>  
        </div>
    </div>
    

        <!-- Fim Chamados CA -->


 
     <!-- Inicio Equipe APP Linux -->
     
        <div class="row">
                     
   <div class="panel panel-primary">
       <div class="panel-heading"><h3 id="aplicacao"><center><strong>Equipe de Aplicação</strong></center></h3></div>
        <div class="panel-body">
        
                     <div class="row">
                 
                               <div class="col-md-12">

               
                        <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success  ">
                        	<center><strong>Incidentes / Solicitações <span class="badge">${countApp}</span></strong></center>  
  						</a>
  						
  
                    <table id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Tipo</strong></center></td>
                                <td><center><strong>Categoria</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Aberto</strong></center></td>
                                <td><center><strong>SLA</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosApp}" var="chamadosApp">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosApp.sla2}" id="slaid_${chamadosApp.sla2}">
											<td>${chamadosApp.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosApp.id}" target="_blank" >${chamadosApp.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosApp.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosApp.descricao}</td>
											<td>${chamadosApp.tipo}</td>
											<td>${chamadosApp.categoria}</td>
											<td>${chamadosApp.status}</td>
											<td>${chamadosApp.dataInicio}</td>
											<td>${chamadosApp.sla}</td>
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosApp.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td >${chamadosFilhos.descricao}</td>
															<td >${chamadosFilhos.tipo}</td>
															<td >${chamadosFilhos.categoria}</td>
															<td >${chamadosFilhos.status}</td>
															<td >${chamadosFilhos.dataInicio}</td>
															<td >${chamadosFilhos.sla}</td>
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>
                    </table>
                    </div>
                 </div>
                       
    </div> <!-- Fim row-->
        
        
       </div>
    </div>
    
       <!-- FIM Equipe APP Linux -->
       
       <!-- Inicio Equipe Banco de Dados -->
     
                     
   <div class="panel panel-primary">
       <div class="panel-heading"><h3 id="banco"><center><strong>Equipe de Banco de Dados</strong></center></h3></div>
        <div class="panel-body">
        
                     <div class="row">
                 
                               <div class="col-md-12">

               
                        <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
                        	<center><strong>Incidentes / Solicitações <span class="badge">${countBd}</span></strong></center>  
  						</a>
  						
  
                    <table id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Tipo</strong></center></td>
                                <td><center><strong>Categoria</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Aberto</strong></center></td>
                                <td><center><strong>SLA</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosBd}" var="chamadosBd">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosBd.sla2}" id="slaid_${chamadosBd.sla2}">
											<td>${chamadosBd.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosBd.id}" target="_blank" >${chamadosBd.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosBd.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosBd.descricao}</td>
											<td>${chamadosBd.tipo}</td>
											<td>${chamadosBd.categoria}</td>
											<td>${chamadosBd.status}</td>
											<td>${chamadosBd.dataInicio}</td>
											<td>${chamadosBd.sla}</td>
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosBd.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td >${chamadosFilhos.descricao}</td>
															<td >${chamadosFilhos.tipo}</td>
															<td >${chamadosFilhos.categoria}</td>
															<td >${chamadosFilhos.status}</td>
															<td >${chamadosFilhos.dataInicio}</td>
															<td >${chamadosFilhos.sla}</td>
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>
                    </table>
                   
                   
                    </div>
                 </div>
                       
    </div> <!-- Fim row-->
        
        
       </div>
    </div>
    
       <!-- FIM Equipe Equipe Banco de Dados --> 
       
           <!-- Inicio Equipe Backup -->
     
                     
   <div class="panel panel-primary">
       <div class="panel-heading"><h3 id="bkp"><center><strong>Equipe de Backup</strong></center></h3></div>
        <div class="panel-body">
        
                     <div class="row">
                 
                               <div class="col-md-12">

               
                        <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
                        	<center><strong>Incidentes / Solicitações <span class="badge">${countBkp}</span></strong></center>  
  						</a>
  						
  
                    <table id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Tipo</strong></center></td>
                                <td><center><strong>Categoria</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Aberto</strong></center></td>
                                <td><center><strong>SLA</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosBkp}" var="chamadosBkp">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosBkp.sla2}" id="slaid_${chamadosBkp.sla2}">
											<td>${chamadosBkp.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosBkp.id}" target="_blank" >${chamadosBkp.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosBkp.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosBkp.descricao}</td>
											<td>${chamadosBkp.tipo}</td>
											<td>${chamadosBkp.categoria}</td>
											<td>${chamadosBkp.status}</td>
											<td>${chamadosBkp.dataInicio}</td>
											<td>${chamadosBkp.sla}</td>
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosBkp.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td >${chamadosFilhos.descricao}</td>
															<td >${chamadosFilhos.tipo}</td>
															<td >${chamadosFilhos.categoria}</td>
															<td >${chamadosFilhos.status}</td>
															<td >${chamadosFilhos.dataInicio}</td>
															<td >${chamadosFilhos.sla}</td>
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>
                    </table>
                   
                   
                    </div>
                 </div>
                       
    </div> <!-- Fim row-->
        
        
       </div>
    </div>
    
       <!-- FIM Equipe Equipe Backup -->
       
                <!-- Inicio Equipe VmWare / Storage -->
     
                     
   <div class="panel panel-primary">
       <div class="panel-heading"><h3 id="vmware"><center><strong>Equipe de VMWare</strong></center></h3></div>
        <div class="panel-body">
        
                     <div class="row">
                 
                               <div class="col-md-12">

               
                        <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
                        	<center><strong>Incidentes / Solicitações <span class="badge">${countVm}</span></strong></center>  
  						</a>
  						
  
                    <table id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Tipo</strong></center></td>
                                <td><center><strong>Categoria</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Aberto</strong></center></td>
                                <td><center><strong>SLA</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosVm}" var="chamadosVm">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosVm.sla2}" id="slaid_${chamadosVm.sla2}">
											<td>${chamadosVm.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosVm.id}" target="_blank" >${chamadosVm.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosVm.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosVm.descricao}</td>
											<td>${chamadosVm.tipo}</td>
											<td>${chamadosVm.categoria}</td>
											<td>${chamadosVm.status}</td>
											<td>${chamadosVm.dataInicio}</td>
											<td>${chamadosVm.sla}</td>
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosVm.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td >${chamadosFilhos.descricao}</td>
															<td >${chamadosFilhos.tipo}</td>
															<td >${chamadosFilhos.categoria}</td>
															<td >${chamadosFilhos.status}</td>
															<td >${chamadosFilhos.dataInicio}</td>
															<td >${chamadosFilhos.sla}</td>
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>                          
                    </table>
                   
                   
                    </div>
                 </div>
                       
    </div> <!-- Fim row-->
        
        
       </div>
    </div>
    
       <!-- FIM Equipe Equipe VMWare / Storage -->
       
        <!-- Inicio Equipe Windows -->
     
                     
   <div class="panel panel-primary">
       <div class="panel-heading"><h3 id="So"><center><strong>Equipe de Sistemas Operacionais</strong></center></h3></div>
        <div class="panel-body">
        
                     <div class="row">
                 
                               <div class="col-md-12">

               
                        <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
                        	<center><strong>Incidentes / Solicitações <span class="badge">${countSo}</span></strong></center>  
  						</a>
  						
  
                    <table  id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Tipo</strong></center></td>
                                <td><center><strong>Categoria</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Aberto</strong></center></td>
                                <td><center><strong>SLA</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosSo}" var="chamadosSo">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosSo.sla2}" id="slaid_${chamadosSo.sla2}">
											<td>${chamadosSo.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosSo.id}" target="_blank" >${chamadosSo.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosSo.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosSo.descricao}</td>
											<td>${chamadosSo.tipo}</td>
											<td>${chamadosSo.categoria}</td>
											<td>${chamadosSo.status}</td>
											<td>${chamadosSo.dataInicio}</td>
											<td>${chamadosSo.sla}</td>
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosSo.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td >${chamadosFilhos.descricao}</td>
															<td >${chamadosFilhos.tipo}</td>
															<td >${chamadosFilhos.categoria}</td>
															<td >${chamadosFilhos.status}</td>
															<td >${chamadosFilhos.dataInicio}</td>
															<td >${chamadosFilhos.sla}</td>
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>
                    </table>
                   
                   
                    </div>
                 </div>
                       
    </div> <!-- Fim row-->
        
        
       </div>
    </div>
    
       <!-- FIM Equipe Equipe Windows -->    
       
          
        <!-- Inicio Equipe Rede -->
     
                     
   <div class="panel panel-primary">
       <div class="panel-heading"><h3 id="rede"><center><strong>Equipe de Rede</strong></center></h3></div>
        <div class="panel-body">
        
                     <div class="row">
                 
                               <div class="col-md-12">

               
                        <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
                        	<center><strong>Incidentes / Solicitações <span class="badge">${countRede}</span></strong></center>  
  						</a>
  						
  
                    <table  id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Tipo</strong></center></td>
                                <td><center><strong>Categoria</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Aberto</strong></center></td>
                                <td><center><strong>SLA</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosRede}" var="chamadosRede">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosRede.sla2}" id="slaid_${chamadosRede.sla2}">
											<td>${chamadosRede.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosRede.id}" target="_blank" >${chamadosRede.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosRede.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosRede.descricao}</td>
											<td>${chamadosRede.tipo}</td>
											<td>${chamadosRede.categoria}</td>
											<td>${chamadosRede.status}</td>
											<td>${chamadosRede.dataInicio}</td>
											<td>${chamadosRede.sla}</td>
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosRede.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td >${chamadosFilhos.descricao}</td>
															<td >${chamadosFilhos.tipo}</td>
															<td >${chamadosFilhos.categoria}</td>
															<td >${chamadosFilhos.status}</td>
															<td >${chamadosFilhos.dataInicio}</td>
															<td >${chamadosFilhos.sla}</td>
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>
                    </table>
                   
                   
                    </div>
                 </div>
                       
    </div> <!-- Fim row-->
        
        
       </div>
    </div>
    
       <!-- FIM Equipe Equipe Rede --> 
    
    
  
       
       
       <!-- Inicio Equipe analista de monitoracao -->
     
                     
   <div class="panel panel-primary">
       <div class="panel-heading"><h3 id="zabbix"><center><strong>Equipe Zabbix</strong></center></h3></div>
        <div class="panel-body">
        
                     <div class="row">
                 
                               <div class="col-md-12">

               
                        <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
                        	<center><strong>Incidentes / Solicitações <span class="badge">${countZa}</span></strong></center>  
  						</a>
  						
  
                    <table  id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Tipo</strong></center></td>
                                <td><center><strong>Categoria</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Aberto</strong></center></td>
                                <td><center><strong>SLA</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosMonit}" var="chamadosMonit">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosMonit.sla2}" id="slaid_${chamadosMonit.sla2}">
											<td>${chamadosMonit.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosMonit.id}" target="_blank" >${chamadosMonit.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosMonit.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosMonit.descricao}</td>
											<td>${chamadosMonit.tipo}</td>
											<td>${chamadosMonit.categoria}</td>
											<td>${chamadosMonit.status}</td>
											<td>${chamadosMonit.dataInicio}</td>
											<td>${chamadosMonit.sla}</td>
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosMonit.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td >${chamadosFilhos.descricao}</td>
															<td >${chamadosFilhos.tipo}</td>
															<td >${chamadosFilhos.categoria}</td>
															<td >${chamadosFilhos.status}</td>
															<td >${chamadosFilhos.dataInicio}</td>
															<td >${chamadosFilhos.sla}</td>
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>
                    </table>
                   
                   
                    </div>
                 </div>
                       
    </div> <!-- Fim row-->
        
        
       </div>
    </div>
    
       <!-- FIM Equipe Equipe analista de monitoracao --> 
    
    
    <!-- Inicio Equipe storage -->
     
                     
   <div class="panel panel-primary">
       <div class="panel-heading"><h3 id="storage"><center><strong>Equipe Storage</strong></center></h3></div>
        <div class="panel-body">
        
                     <div class="row">
                 
                               <div class="col-md-12">

               
                        <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
                        	<center><strong>Incidentes / Solicitações <span class="badge">${countSto}</span></strong></center>  
  						</a>
  						
  
                    <table  id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Tipo</strong></center></td>
                                <td><center><strong>Categoria</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Aberto</strong></center></td>
                                <td><center><strong>SLA</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosStor}" var="chamadosStor">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosStor.sla2}" id="slaid_${chamadosStor.sla2}">
											<td>${chamadosStor.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosStor.id}" target="_blank" >${chamadosStor.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosStor.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosStor.descricao}</td>
											<td>${chamadosStor.tipo}</td>
											<td>${chamadosStor.categoria}</td>
											<td>${chamadosStor.status}</td>
											<td>${chamadosStor.dataInicio}</td>
											<td>${chamadosStor.sla}</td>
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosStor.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td >${chamadosFilhos.descricao}</td>
															<td >${chamadosFilhos.tipo}</td>
															<td >${chamadosFilhos.categoria}</td>
															<td >${chamadosFilhos.status}</td>
															<td >${chamadosFilhos.dataInicio}</td>
															<td >${chamadosFilhos.sla}</td>
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>
                    </table>
                   
                   
                    </div>
                 </div>
                       
    </div> <!-- Fim row-->
        
        
       </div>
    </div>
    
       <!-- FIM Equipe Equipe storage --> 
    
    
    
    <!-- Inicio Equipe documentadores -->
     
                     
   <div class="panel panel-primary">
       <div class="panel-heading"><h3 id="document"><center><strong>Equipe Documentadores</strong></center></h3></div>
        <div class="panel-body">
        
                     <div class="row">
                 
                               <div class="col-md-12">

               
                        <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
                        	<center><strong>Incidentes / Solicitações <span class="badge">${countDoc}</span></strong></center>  
  						</a>
  						
  
                    <table  id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Tipo</strong></center></td>
                                <td><center><strong>Categoria</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Aberto</strong></center></td>
                                <td><center><strong>SLA</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosDocu}" var="chamadosDocu">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosDocu.sla2}" id="slaid_${chamadosDocu.sla2}">
											<td>${chamadosDocu.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosDocu.id}" target="_blank" >${chamadosDocu.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosDocu.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosDocu.descricao}</td>
											<td>${chamadosDocu.tipo}</td>
											<td>${chamadosDocu.categoria}</td>
											<td>${chamadosDocu.status}</td>
											<td>${chamadosDocu.dataInicio}</td>
											<td>${chamadosDocu.sla}</td>
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosDocu.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td >${chamadosFilhos.descricao}</td>
															<td >${chamadosFilhos.tipo}</td>
															<td >${chamadosFilhos.categoria}</td>
															<td >${chamadosFilhos.status}</td>
															<td >${chamadosFilhos.dataInicio}</td>
															<td >${chamadosFilhos.sla}</td>
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>
                    </table>
                   
                   
                    </div>
                 </div>
                       
    </div> <!-- Fim row-->
        
        
       </div>
    </div>
    
       <!-- FIM Equipe Equipe documentadores --> 
    
    
     <!-- Inicio Equipe serv corporativos -->
     
                     
   <div class="panel panel-primary">
       <div class="panel-heading"><h3 id="corp"><center><strong>Equipe Serv. Corporativos</strong></center></h3></div>
        <div class="panel-body">
        
                     <div class="row">
                 
                               <div class="col-md-12">

               
                        <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
                        	<center><strong>Incidentes / Solicitações <span class="badge">${countCorp}</span></strong></center>  
  						</a>
  						
  
                    <table  id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Tipo</strong></center></td>
                                <td><center><strong>Categoria</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Aberto</strong></center></td>
                                <td><center><strong>SLA</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosCorp}" var="chamadosCorp">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosCorp.sla2}" id="slaid_${chamadosCorp.sla2}">
											<td>${chamadosCorp.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosCorp.id}" target="_blank" >${chamadosCorp.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosCorp.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosCorp.descricao}</td>
											<td>${chamadosCorp.tipo}</td>
											<td>${chamadosCorp.categoria}</td>
											<td>${chamadosCorp.status}</td>
											<td>${chamadosCorp.dataInicio}</td>
											<td>${chamadosCorp.sla}</td>
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosCorp.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td >${chamadosFilhos.descricao}</td>
															<td >${chamadosFilhos.tipo}</td>
															<td >${chamadosFilhos.categoria}</td>
															<td >${chamadosFilhos.status}</td>
															<td >${chamadosFilhos.dataInicio}</td>
															<td >${chamadosFilhos.sla}</td>
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>
                    </table>
                   
                   
                    </div>
                 </div>
                       
    </div> <!-- Fim row-->
        
        
       </div>
    </div>
    
       <!-- FIM Equipe Equipe serv corporativos --> 
    
          <!-- Inicio Equipe Monitoração -->
     
                     
   <div class="panel panel-primary">
       <div class="panel-heading"><h3 id="monitoracao"><center><strong>Equipe de Monitoradores</strong></center></h3></div>
        <div class="panel-body">
        
                     <div class="row">
                 
                               <div class="col-md-12">

               
                        <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
                        	<center><strong>Incidentes / Solicitações <span class="badge">${countMon}</span></strong></center>  
  						</a>
  						
  
                    <table  id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Tipo</strong></center></td>
                                <td><center><strong>Categoria</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Aberto</strong></center></td>
                                <td><center><strong>SLA</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosMon}" var="chamadosMon">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosMon.sla2}" id="slaid_${chamadosMon.sla2}">
											<td>${chamadosMon.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosMon.id}" target="_blank" >${chamadosMon.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosMon.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosMon.descricao}</td>
											<td>${chamadosMon.tipo}</td>
											<td>${chamadosMon.categoria}</td>
											<td>${chamadosMon.status}</td>
											<td>${chamadosMon.dataInicio}</td>
											<td>${chamadosMon.sla}</td>
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosMon.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td >${chamadosFilhos.descricao}</td>
															<td >${chamadosFilhos.tipo}</td>
															<td >${chamadosFilhos.categoria}</td>
															<td >${chamadosFilhos.status}</td>
															<td >${chamadosFilhos.dataInicio}</td>
															<td >${chamadosFilhos.sla}</td>
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>
                    </table>
                   
                   
                    </div>
                 </div>
                       
    </div> <!-- Fim row-->
        
        
       </div>
    </div>
    
       <!-- FIM Equipe Equipe Monitoração --> 
       
       
          <!-- Inicio Equipe Gerencia -->
     
                     
   <div class="panel panel-primary">
       <div class="panel-heading"><h3 id="gerencial"><center><strong>Supervisor</strong></center></h3></div>
        <div class="panel-body">
        
                     <div class="row">
                 
                               <div class="col-md-12">

               
                        <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
                        	<center><strong>Incidentes / Solicitações <span class="badge">${countGer}</span></strong></center>  
  						</a>
  						
  
                    <table  id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Tipo</strong></center></td>
                                <td><center><strong>Categoria</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Aberto</strong></center></td>
                                <td><center><strong>SLA</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosGer}" var="chamadosGer">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosGer.sla2}" id="slaid_${chamadosGer.sla2}">
											<td>${chamadosGer.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosGer.id}" target="_blank" >${chamadosGer.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosGer.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosGer.descricao}</td>
											<td>${chamadosGer.tipo}</td>
											<td>${chamadosGer.categoria}</td>
											<td>${chamadosGer.status}</td>
											<td>${chamadosGer.dataInicio}</td>
											<td>${chamadosGer.sla}</td>
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosGer.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td >${chamadosFilhos.descricao}</td>
															<td >${chamadosFilhos.tipo}</td>
															<td >${chamadosFilhos.categoria}</td>
															<td >${chamadosFilhos.status}</td>
															<td >${chamadosFilhos.dataInicio}</td>
															<td >${chamadosFilhos.sla}</td>
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>
                    </table>
                   
                   
                    </div>
                 </div>
                       
    </div> <!-- Fim row-->
        
        
       </div>
    </div>
    
       <!-- FIM Equipe Equipe Gerencia --> 
       
       
       
        
       
       
       
       
               <!-- Inicio Problemas -->
     
                     
   <div class="panel panel-primary">
       <div class="panel-heading"><h3 id="problemas"><center><strong>Problemas</strong></center></h3></div>
        <div class="panel-body">
        
                     <div class="row">
                 
                               <div class="col-md-12">

               
                        <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
                        	<center><strong>Incidentes / Solicitações <span class="badge">${countPro}</span></strong></center>  
  						</a>
  						
  
                    <table  id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Categoria</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Aberto</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosPro}" var="chamadosPro">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosPro.sla2}" id="slaid_${chamadosPro.sla2}">
											<td>${chamadosPro.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosPro.id}" target="_blank" >${chamadosPro.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosPro.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosPro.descricao}</td>
											<td>${chamadosPro.categoria}</td>
											<td>${chamadosPro.status}</td>
											<td>${chamadosPro.dataInicio}</td>
  										</tr>
								</c:forEach>
                        </tbody>
                    </table>
                   
                   
                    </div>
                 </div>
                       
    </div> <!-- Fim row-->
        
        
       </div>
    </div>
    
       <!-- FIM Problemas --> 
       
             <!-- Inicio Ordem de Serviço -->
     
                     
   <div class="panel panel-primary">
       <div class="panel-heading"><h3 id="os"><center><strong>Ordem de Serviço</strong></center></h3></div>
        <div class="panel-body">
        
                     <div class="row">
                 
                               <div class="col-md-12">

               
                        <div class="list-group">
                        <a href="#chamados" class="list-group-item list-group-item-success ">
                        	<center><strong>Solicitações <span class="badge">${countOs}</span></strong></center>  
  						</a>
  						
  
                    <table  id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Atualização</strong></center></td>
                                <td><center><strong>Aberto</strong></center></td>
                            </tr>
                          </thead>
                           <tbody id="od_padrao" >
		                		<c:forEach items="${chamadosOs}" var="chamadosOs">	
										<tr data-toggle="tooltip" data-placement="bottom" title="Status da Ordem de Serviço foi atualizado a mais de 10 dias, ATENÇÃO!!" class="${chamadosOs.diasAtualizacao}" id="sladias_${chamadosOs.diasAtualizacao}">
											<td>${chamadosOs.nome}</td>
												<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosOs.id}" target="_blank" >${chamadosOs.chamado}</a>
												<c:forEach items="${chamadosFilhosCarinha}" var="chamadosFilhosCarinha" >
														<c:if test="${chamadosFilhosCarinha.chamado == chamadosOs.chamado }">
																<img src="resources/images/filho.png" id="logo" alt=""/>
														</c:if>
												</c:forEach>
											</td>
											<td>${chamadosOs.descricao}</td>
											<td>${chamadosOs.status}</td>
											<td>${chamadosOs.atualizacao}</td>
											<td>${chamadosOs.dataInicio}</td>
  										</tr>
  										<c:forEach items="${chamadosFilhos}" var="chamadosFilhos">	
  											<c:if test="${chamadosFilhos.chamado_Pai == chamadosOs.chamado }">	
														<tr class="filho">
														<div>
															<td><img src="resources/images/setabaixo.png" id="logo" alt=""/> ${chamadosFilhos.nome}</td>
															<td ><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosFilhos.id}" target="_blank" >${chamadosFilhos.chamado}</a></td>
															<td >${chamadosFilhos.descricao}</td>
															<td >${chamadosFilhos.status}</td>
															<td >${chamadosFilhos.atualizacao}</td>
															<td >${chamadosFilhos.dataInicio}</td>
														
															</div>
														</tr>
											</c:if>
										</c:forEach>
								</c:forEach>
                        </tbody>
                    </table>
                   
                   
                    </div>
                 </div>
                       
    </div> <!-- Fim row-->
        
        
       </div>
    </div>
    
       <!-- FIM Ordem de Serviço --> 
       

       
    
    </div>  <!--  Fim Row de todos os Paineis -->
<script src="resources/js/jquery-2.1.4.js"></script>
<script>
//Escondendo os tr com classe 'filho'
$("#chamados").find("tr.filho").hide();

//Exibindo os filhos da tr que foi clicada
$("#chamados tr:not(.filho)").click(
	function() {
		$(this).nextUntil(":not(.filho)").toggle();
	}
);
//SLA
	$("#slaid_0.0").ready(function() {
		$("#slaid_0.0").attr({title: "SLA dentro do prazo!!!"})
	});
	$("#slaid_1.1").ready(function() {
		$("#slaid_1.1").attr({title: "SLA menor que 4 horas!!!"})
	});
	$("#slaid_2.2").ready(function() {
		$("#slaid_2.2").attr({title: "SlA menor que 2 horas!!!"})
	});
	$("#slaid_3.3").ready(function() {
		$("#slaid_3.3").attr({title: "SLA menor que 1 hora!!!"})
	});
	$("#slaid_4.4").ready(function() {
		$("#slaid_4.4").attr({title: "SLA menor que 30 minutos!!!"})
	});
	$("#slaid_5.5").ready(function() {
		$("#slaid_5.5").attr({title: "SLA menor que 15 minutos!!!"})
	});
	$("#slaid_6.6").ready(function() {
		$("#slaid_6.6").attr({title: "SLA estourado!!!"})
	});

	//Title Personalizado 
	var monitoracao = ${countPainelMon}
	var solicitacao = ${countPainelSol}
	var incidente = ${countPainelInc}
	
	 $(document).ready(function() {
	        document.title = ' (Inc ' + incidente + ')' + '(Sol ' + solicitacao + ')' + '(Mon ' + monitoracao + ')' + ' Chamados Algar';
	    });
	 
	 //Alerta Dias Ordem de Serviço
	 
	 $("#sladias_0.0").ready(function() {
		$("#sladias_0.0").attr({title: "Status da Ordem de Serviço atualizado HOJE!!"})
	 });
	 $("#sladias_1.1").ready(function() {
			$("#sladias_1.1").attr({title: "Status da Ordem de Serviço foi atualizado ONTEM!!"})
		 });
	 $("#sladias_2.2").ready(function() {
			$("#sladias_2.2").attr({title: "Status da Ordem de Serviço foi atualizado a 2 dias!!"})
		 });
	 $("#sladias_3.3").ready(function() {
			$("#sladias_3.3").attr({title: "Status da Ordem de Serviço foi atualizado a 3 dias!!"})
		 });
	 $("#sladias_4.4").ready(function() {
			$("#sladias_4.4").attr({title: "Status da Ordem de Serviço foi atualizado a 4 dias!!"})
		 });
	 $("#sladias_5.5").ready(function() {
			$("#sladias_5.5").attr({title: "Status da Ordem de Serviço foi atualizado a 5 dias!!"})
		 });
	 $("#sladias_6.6").ready(function() {
			$("#sladias_6.6").attr({title: "Status da Ordem de Serviço foi atualizado a 6 dias!!"})
		 });
	 $("#sladias_7.7").ready(function() {
			$("#sladias_7.7").attr({title: "Status da Ordem de Serviço foi atualizado a 7 dias!!"})
		 });
	 $("#sladias_8.8").ready(function() {
			$("#sladias_8.8").attr({title: "Status da Ordem de Serviço foi atualizado a 8 dias!!"})
		 });
	 $("#sladias_9.9").ready(function() {
			$("#sladias_9.9").attr({title: "Status da Ordem de Serviço foi atualizado a 9 dias!!"})
		 });
	

	 
	 
</script>

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

</body>
</html>