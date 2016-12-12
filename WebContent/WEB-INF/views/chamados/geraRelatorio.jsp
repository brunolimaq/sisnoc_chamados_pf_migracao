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
    <script src="resources/js/bootstrap.js" type="text/javascript"></script>
     
     <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" />
     <script type="text/javascript" src="resources/js/jsapi"></script>
 <script type="text/javascript">

          // carregando bibliotecas do google
          google.load('visualization', '1', {'packages':['corechart']});
       
          google.setOnLoadCallback(desenhaGrafico);
          google.setOnLoadCallback(desenhaGrafico2);

         function desenhaGrafico() {
             var data = new google.visualization.DataTable();
             data.addColumn('string', 'Mês');
             data.addColumn('number', 'Qtd. Atendidos');

             data.addRows(12);

             // dados de janeiro
             data.setValue(0, 0, 'Janeiro');
             data.setValue(0, 1, 20450.0);
             // dados de fevereiro
             data.setValue(1, 0, 'Fevereiro');
             data.setValue(1, 1, 21870.0);
             // dados de marco
             data.setValue(2, 0, 'Março');
             data.setValue(2, 1, 22250.0);
             // dados de abril
             data.setValue(3, 0, 'Abril');
             data.setValue(3, 1, 21769.0);
             // dados de maio
             data.setValue(4, 0, 'Maio');
             data.setValue(4, 1, 23234.0);

             data.setValue(5, 0, 'Junho');
             data.setValue(5, 1, 1567.0);
             
             data.setValue(6, 0, 'Julho');
             data.setValue(6, 1, 23234.0);
             
             data.setValue(7, 0, 'Agosto');
             data.setValue(7, 1, 1466.0);
             
             data.setValue(8, 0, 'Setembro');
             data.setValue(8, 1, 1399.0);
             
             data.setValue(9, 0, 'Outubro');
             data.setValue(9, 1, 0);
             
             data.setValue(10, 0, 'Novembro');
             data.setValue(10, 1, 0);
             
             data.setValue(11, 0, 'Dezembro');
             data.setValue(11, 1, 0);
             
             // cria grafico
             var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
             
             chart.draw(data, {width: 600, height: 300, 
            	 title: 'Incidentes - Diário', 
            	 colors: ['red']          
             });
         }
             function desenhaGrafico2() {
                 var data = new google.visualization.DataTable();
                 data.addColumn('string', 'Mês');
                 data.addColumn('number', 'Qtd. Atendidos');

                 data.addRows(12);

                 // dados de janeiro
                 data.setValue(0, 0, 'Janeiro');
                 data.setValue(0, 1, 20450.0);
                 // dados de fevereiro
                 data.setValue(1, 0, 'Fevereiro');
                 data.setValue(1, 1, 21870.0);
                 // dados de marco
                 data.setValue(2, 0, 'Março');
                 data.setValue(2, 1, 22250.0);
                 // dados de abril
                 data.setValue(3, 0, 'Abril');
                 data.setValue(3, 1, 21769.0);
                 // dados de maio
                 data.setValue(4, 0, 'Maio');
                 data.setValue(4, 1, 23234.0);

                 data.setValue(5, 0, 'Junho');
                 data.setValue(5, 1, 1567.0);
                 
                 data.setValue(6, 0, 'Julho');
                 data.setValue(6, 1, 23234.0);
                 
                 data.setValue(7, 0, 'Agosto');
                 data.setValue(7, 1, 1466.0);
                 
                 data.setValue(8, 0, 'Setembro');
                 data.setValue(8, 1, 1399.0);
                 
                 data.setValue(9, 0, 'Outubro');
                 data.setValue(9, 1, 0);
                 
                 data.setValue(10, 0, 'Novembro');
                 data.setValue(10, 1, 0);
                 
                 data.setValue(11, 0, 'Dezembro');
                 data.setValue(11, 1, 0);
                 
                 // cria grafico
                 var chart = new google.visualization.LineChart(document.getElementById('chart_div2'));
                 
                 chart.draw(data, {width: 600, height: 300, 
                	 title: 'Incidentes - Mensal', 
                	 colors: ['red']          
                 });
         }
             
             
             
             
             
             google.load("visualization", "1", {packages:["gauge"]});
             google.setOnLoadCallback(drawChart);
             
             function drawChart() {

               var data = google.visualization.arrayToDataTable([
                 ['Label', 'Value'],
                 ['2 Horas', 80],
                 ['4 Horas', 55],
                 ['8 Horas', 68]
               ]);

               var options = {
                 width: 400, height: 120,
                 redFrom: 90, redTo: 100,
                 yellowFrom:75, yellowTo: 90,
                 minorTicks: 5
               };

               var chart = new google.visualization.Gauge(document.getElementById('chart_gauge'));

               chart.draw(data, options);

               setInterval(function() {
                 data.setValue(0, 1, 40 + Math.round(60 * Math.random()));
                 chart.draw(data, options);
               }, 13000);
               setInterval(function() {
                 data.setValue(1, 1, 40 + Math.round(60 * Math.random()));
                 chart.draw(data, options);
               }, 5000);
               setInterval(function() {
                 data.setValue(2, 1, 60 + Math.round(20 * Math.random()));
                 chart.draw(data, options);
               }, 26000);
             }

             
             google.load("visualization", "1", {packages:["corechart"]});
             google.setOnLoadCallback(drawChart2);
             function drawChart2() {
               var data = google.visualization.arrayToDataTable([
                 ['Task', 'Chamados por dia'],
                 ['Aplicação',     11],
                 ['Banco de Dados',      2],
                 ['Rede',  2],
                 ['Monitoração', 2],
                 ['Windows',    7]
               ]);

               var options = {
                 title: 'Chamados por área',
                 is3D: true,
               };

               var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
               chart.draw(data, options);
             }

    </script>

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



    
    
      
        <div class="row">
                     
   <div class="panel panel-primary">
       <div class="panel-heading"><h3 id="aplicacao"><center><strong>DashBoard</strong></center></h3></div>
        <div class="panel-body">
        
                     <div class="row">
                 
                               <div class="col-md-12">

               
                        <div class="list-group">
                        <a href="#" class="list-group-item list-group-item-success  ">
                        	<center><strong>Chamados <span class="badge"></span></strong></center>  
  						</a>
  
 				    <div id="chart_div"></div>
 				    
 				    <div id="chart_div2"></div>
 				    
 				    <div id="chart_gauge"></div>
                   
                   <div id="piechart_3d"></div>
                   
                    </div>
                 </div>
                       
    </div> <!-- Fim row-->
        
        
       </div>
    </div>
    </div>
    
    

</body>
</html>