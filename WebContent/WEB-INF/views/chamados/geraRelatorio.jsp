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

 	<script src="resources/js/jquery/jquery.js" type="text/javascript"></script>
    <script src="resources/js/angular.min.js" type="text/javascript"></script>
    <script src="resources/js/moment-with-langs.js" type="text/javascript"></script>
    <script src="resources/js/jquery/jquery.js" type="text/javascript"></script>
    <script src="resources/js/bootstrap.js" type="text/javascript"></script>
     
     <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" />


    <style>

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
  				    
     
    </style>

    
</head>

<body data-spy="scroll" data-target="#navbar-example">


      <!-- Chamados CA -->

  <div class="bs-example" data-example-id="embedded-scrollspy">
  
    <nav id="navbar-example2" class="navbar navbar-default navbar-static" id="meuMenu">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="/sisnoc"><img src="resources/images/logo_pequena_algar.png" id="logo" alt=""/></a>
        </div>
        <div class="collapse navbar-collapse bs-example-js-navbar-scrollspy">
          <ul class="nav navbar-nav">
            <li ><a href="#aplicacao">Aplicação / Linux <span class="badge">${countApp}</span></a></li>
            <li><a href="#banco">Banco de Dados <span class="badge">${countBd}</span></a></li>
            <li><a href="#bkp">Backup <span class="badge">${countBkp}</span></a></li>
            <li><a href="#vmware">VMWare / Storage <span class="badge">${countVm}</span></a></li>
            <li><a href="#windows">Windows <span class="badge">${countWin}</span></a></li>
            <li><a href="#rede">Rede <span class="badge">${countRede}</span></a></li>
            <li><a href="#monitoracao">Monitoração <span class="badge">${countMon}</span></a></li>
            <li><a href="#gerencial">Gerencial / Documentadores <span class="badge">${countGer}</span></a></li>
            <li><a href="#problemas">Problemas <span class="badge">${countPro}</span></a></li>
            <li><a href="#os">Ordem de Serviço <span class="badge">${countOs}</span></a></li>
            <li><a href="relatorios">Relatórios</a></li>
         </ul>
        </div>
      </div>
      
    </nav>
    
    
      
        <div class="row">
                     
   <div class="panel panel-primary">
       <div class="panel-heading"><h3 id="aplicacao"><center><strong>Relatórios</strong></center></h3></div>
        <div class="panel-body">
        
                     <div class="row">
                 
                               <div class="col-md-12">

               
                        <div class="list-group">
                        <a href="#" class="list-group-item list-group-item-success  ">
                        	<center><strong>Incidentes / Solicitações <span class="badge">${countApp}</span></strong></center>  
  						</a>
  
                    <table class="table table-bordered table-hover">
                              <thead>
                            <tr class="app_linux">
                                <td><center><strong>Responsável</strong></center></td>
                                <td><center><strong>Chamado</strong></center></td>
                                <td><center><strong>Descrição</strong></center></td>
                                <td><center><strong>Tipo</strong></center></td>
                                <td><center><strong>Categoria</strong></center></td>
                                <td><center><strong>Qtd. Abertos</strong></center></td>
                                <td><center><strong>SLA</strong></center></td>
                            </tr>
                          </thead>
                           <tbody>
		                		<c:forEach items="${relatorio}" var="relatorio">	
										<tr   data-toggle="tooltip" data-placement="bottom" title="100" class="${relatorio.result}" id="slaid_${relatorio.result}">
											<td>${relatorio.responsavel}</td>
											<td>${relatorio.chamado}</td>
											<td>${relatorio.resumo}</td>											
											<td>${relatorio.tipo}</td>
											<td>${relatorio.categoria}</td>
											<td>${relatorio.qts_aberto}</td>
											<td>${relatorio.result}</td>																											
								</c:forEach>
                        </tbody>
                    </table>
                   
                   
                    </div>
                 </div>
                       
    </div> <!-- Fim row-->
        
        
       </div>
    </div>
    </div>
    
    
    
    
<script>
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
</script>
</body>
</html>