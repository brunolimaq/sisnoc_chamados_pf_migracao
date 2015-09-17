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
        <div class="panel-heading"><h3 id="chamados"><center><strong>Relatórios</strong></center></h3></div>
        <div class="panel-body">
                   
<h3>Quantidade de Solicitações/Incidêntes sendo tratados</h3>
<hr>



            
            
        </div>
    </div>
    
    
  

       
    
    </div>  <!--  Fim Row de todos os Paineis -->
<script>
	 
	 
</script>

</body>
</html>