<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SISNOC</title>

<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css3-dropdown-menu/assets/css/styles.css" />
<link rel="stylesheet" href="resources/icons/fontawesome/css/font-awesome.css">

</head>
<body>


  <div class="container">


       
       		<nav id="colorNav">
        
        
			<ul>
				<li class="green">
					<a href="#" class="fa fa-home"></a>
					<ul>
						<li><a href="/sistema/chamados"> Home</a></li>
					</ul>
				</li>
				<li class="red">
					<a href="#" class="fa fa-tachometer"></a>
					<ul>
						<li><a href="http://zabbix/painels/zabbix_externo.php"><i class="fa fa-newspaper-o"></i> Painel Zabbix Externo</a></li>
						<li><a href="../painels/zabbix.php"><i class="fa fa-newspaper-o"></i> Painel Zabbix</a></li>
						<li><a href="listaChamados"><i class="fa fa-tasks"></i> Painel Chamados Algar</a></li>
						<li><a href="listaChamadosSac"><i class="fa fa-tasks"></i> Painel Chamados Sac</a></li>
						<li><a href="listaChamadosSeg"><i class="fa fa-tasks"></i> Painel Chamados Segurança</a></li>
						
						
				    </ul>
				</li>
				<li class="blue">
					<a href="#" class="fa fa-connectdevelop"></a>
					<ul>
						<li><a href="http://candiru/"><i class="fa fa-stack-overflow"></i> Gestão Projetos</a></li>
						<li><a href="#"><i class="fa fa-bar-chart"></i> Relatórios</a></li>
					</ul>
				</li>
				<li class="yellow">
					<a href="#" class="fa fa-cogs"></a>
					<ul>
        				<li><a href="../index_sisnoc.php"><i class="fa fa-wrench"></i> Ferramentas NOC</a></li>
					</ul>
				</li>
				<li class="purple">
					<a href="#" class="fa fa-bars"></a>
					<ul>
						<li><a href="http://wiki/wiki"><i class="fa fa-wordpress"></i> Wiki</a></li>
						<li><a href="http://algartecnologia.contakt.com.br/"><i class="fa fa-paper-plane-o"></i> SMS Algar</a></li>
					</ul>
				</li>
			</ul>
		</nav>


      </div>
      

</body>
</html>