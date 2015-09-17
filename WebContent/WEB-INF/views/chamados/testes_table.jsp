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
           // timedRefresh(15000);
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
        
         #logo {
	    
	       text-align: left;
	       width: 45px;
	       height: 45px;
	       padding-top: 3px;
	       position: relative;
	       top: -16px;
	       left: -5px;
			}
        
        #topo {
    
	       text-align: right;
	       width: 50px;
	       height: 50px;
	       padding-top: 3px;
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
			  background-color: #fff;  
  		}  		
		
		#filho {
				color: #F75252;
			  background-color: #fff; 
		
		}
	.filho { 
	display: none; }

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
                        <a href="#" class="list-group-item list-group-item-success ">
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
										<tr data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosPainelMon.sla2}" id="slaid_${chamadosPainelMon.sla2}">
											<td>${chamadosPainelMon.nome}</td>
											<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosPainelMon.id}" target="_blank" >${chamadosPainelMon.chamado}</a></td>
											<td>${chamadosPainelMon.descricao}</td>
											<td>${chamadosPainelMon.tipo}</td>
											<td>${chamadosPainelMon.status}</td>
											<td>${chamadosPainelMon.sla}</td>
  										</tr>
								</c:forEach>
                        </tbody>
                    </table>
                   
                   
                    </div>
                </div>
                
                
                
                <div class="col-md-4">
                    <div class="list-group">
                        <a href="#" class="list-group-item list-group-item-success ">
<center><strong>Solicitações</strong></center>  
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
		                		<c:forEach items="${chamadosPainelSol}" var="chamadosPainelSol">	
										<tr data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosPainelSol.sla2}" id="slaid_${chamadosPainelSol.sla2}">
											<td>${chamadosPainelSol.nome}</td>
											<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosPainelSol.id}" target="_blank" >${chamadosPainelSol.chamado}</a></td>
											<td>${chamadosPainelSol.descricao}</td>
											<td>${chamadosPainelSol.status}</td>
											<td>${chamadosPainelSol.sla}</td>
  										</tr>
								</c:forEach>
                        </tbody>
                    </table>
                   
                   
                    </div>
                </div>
                
                
          <div class="col-md-4">
                    <div class="list-group">
                        <a href="#" class="list-group-item list-group-item-success ">
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
										<tr data-toggle="tooltip" data-placement="bottom" title="100" class="${chamadosPainelInc.sla2}" id="slaid_${chamadosPainelInc.sla2}">
											<td>${chamadosPainelInc.nome}</td>
											<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosPainelInc.id}" target="_blank" >${chamadosPainelInc.chamado}</a></td>
											<td>${chamadosPainelInc.descricao}</td>
											<td>${chamadosPainelInc.status}</td>
											<td>${chamadosPainelInc.sla}</td>
  										</tr>
								</c:forEach>
                        </tbody>
                    </table>
                   
                    </div>
                    
                    
                </div>


                
                
                
            </div>

          <div class="row">
          
          
                              <div class="col-md-6">
                    <div class="list-group">
                        <a href="#" class="list-group-item list-group-item-success ">
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
                        <a href="#" class="list-group-item list-group-item-success ">
<center><strong>Ordem de Serviço</strong></center>  
  </a>
                   
                   
                        <table id="chamados" class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Nome</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                               <td><center><strong>Status</strong></center></td>
                                <td><center><strong>Atualização</strong></center></td>
                                <td><center><strong>Aberto</strong></center></td>
                                <td><center><strong>Tipo</strong></center></td>
                                
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${chamadosPainelOrdemServico}" var="chamadosPainelOrdemServico">	
										<tr data-toggle="tooltip" data-placement="bottom" title="Status da Ordem de Serviço foi atualizado a mais de 10 dias, ATENÇÃO!!" class="${chamadosPainelOrdemServico.diasAtualizacao} parent" id="sladias_${chamadosPainelOrdemServico.diasAtualizacao}">
											<td>${chamadosPainelOrdemServico.nome}</td>
											<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosPainelOrdemServico.id}" target="_blank" >${chamadosPainelOrdemServico.chamado}</a></td>
											<td>${chamadosPainelOrdemServico.descricao}</td>
											<td>${chamadosPainelOrdemServico.status}</td>
											<td>${chamadosPainelOrdemServico.atualizacao}</td>
											<td>${chamadosPainelOrdemServico.dataInicio}</td>
											<td>Pai</td>
										</tr>
											<c:if test="${chamadosPainelOrdemServico.chamado == '39213' }">	
														<tr class="filho" id=filho>
															<td>${chamadosPainelOrdemServico.nome}</td>
															<td><a href="http://bacurau/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=cr+SKIPLIST=1+QBE.EQ.id=${chamadosPainelOrdemServico.id}" target="_blank" >${chamadosPainelOrdemServico.chamado}</a></td>
															<td>${chamadosPainelOrdemServico.descricao}</td>
														</tr>
											</c:if>
								</c:forEach>
                        </tbody>
                    
                    		

                    </div>
                    
                    
                </div>  
         
          
          
          </div>  
            
            
            
        </div>
    </div>
    
    
    


       
    
    </div>  <!--  Fim Row de todos os Paineis -->
<script src="resources/js/jquery-2.1.4.js"></script>
<script>
//Teste


	//Escondendo os tr com classe 'filho'
	$("#chamados").find("tr.filho").hide();

	//Exibindo os filhos da tr que foi clicada
	$("#chamados tr:not(.filho)").click(
		function() {
			$(this).nextUntil(":not(.filho)").toggle();
		}
	);


//$("table table tbody tr ").click(
//    function() {
//        $(this).find("td").toggle();
//    }
//);
//
//$('#myModal').on('shown.bs.modal', function () {
//  $('#myInput').focus()
//})

//$('.parent').click(function() {
//    $('td').not('.parent').toggle();
//});

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

</body>
</html>