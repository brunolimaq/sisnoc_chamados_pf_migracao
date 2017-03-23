

<div class="panel panel-primary">
	<div class="panel-body">
		<div class="row">
			<div class="clearfix">
           	<div class="col-md-3 clearfix">
				<div class="list-group ">
					<a href="#chamados" class="list-group-item active" id="painel_noc_titulo">
						<strong>NOC Chamados</strong>
					</a>
           	
					<table class="table table-bordered table-hover col-md-3">
						<thead>
							<tr class="painel_noc">
								<td><center><strong>Chamado</strong></center></td>
								<td><center><strong>Descrição</strong></center></td>
								<td><center><strong>SLA</strong></center></td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${chamadosPainelNoc}" var="chamadosPainelNoc">
								
									<tr class="${chamadosPainelNoc.alerta}">
										<td>${chamadosPainelNoc.chamado}</td>
										<td>${chamadosPainelNoc.titulo}</td>
										<td>${chamadosPainelNoc.sla}</td>
									</tr>
								
							</c:forEach>
						</tbody>    
					</table>
				</div>
				<div><br></div>
				
				<div style="color=red"> . </div>
				<div class="list-group ">
					<a href="#chamados" class="list-group-item active" id="painel_incidente_titulo">
						<strong>NOC Incidentes</strong>
					</a>
           	
					<table class="table table-bordered table-hover col-md-3">
						<thead>
							<tr class="painel_incidente">
								<td><center><strong>Chamado</strong></center></td>
								<td><center><strong>Descrição</strong></center></td>
								<td><center><strong>SLA</strong></center></td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${incidentesPainelNoc}" var="incidentesPainelNoc">
								
									<tr class="${incidentesPainelNoc.alerta}" >
										<td>${incidentesPainelNoc.chamado}</td>
										<td>${incidentesPainelNoc.titulo}</td>
										<td>${incidentesPainelNoc.sla}</td>
									</tr>
								
							</c:forEach>
						</tbody>    
					</table>
				</div>
			</div> <!-- fim DIV col-md4 do NOC ROW -->
				<div class="col-md-5">
               	<div class="list-group ">
                   	<a href="#chamados" class="list-group-item active" id="painel_chamados_titulo">
						<strong>Chamados</strong>
					 </a>
					<table class="table table-bordered table-hover">
						<thead>
							<tr class="painel_chamados">
								<td><center><strong>Equipe</strong></center></td>
								<td><center><strong>Chamado</strong></center></td>
								<td><center><strong>Descrição</strong></center></td>
								<td><center><strong>SLA</strong></center></td>
								<td><center><strong>Meta</strong></center></td>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${chamadosPainelChamados}" var="chamadosPainelChamados">	
								<tr  class="${chamadosPainelChamados.alerta}">
									<td>${chamadosPainelChamados.equipe}</td>
									<td>${chamadosPainelChamados.chamado}</td>
									<td>${chamadosPainelChamados.titulo}</td>
									<td>${chamadosPainelChamados.sla}
									</td>
										<c:if test="${chamadosPainelChamados.equipe = 'Banco de Dados'}">	
											<td  width="15%" height="70%" style="padding:3px" >
											<div class="progress" style="height:30px" align="center">
											  <div class="progress-bar ${chamadosPainelChamados.meta_2}" style="width: 33%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 2 horas">
											    <span >2</span>
											  </div>
											  <div class="progress-bar ${chamadosPainelChamados.meta_6}" style="width: 33%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 6 horas">
											    <span>6</span>
											  </div>
											  <div class="progress-bar ${chamadosPainelChamados.meta_24}" style="width: 34%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 24 horas">
											    <span>12</span>
											  </div>
											</div>
											</td>
										</c:if>
										<c:if test="${chamadosPainelChamados.equipe = 'Segurança da Informação - Ativos'}">	
											<td  width="15%" height="70%" style="padding:3px" >
											<div class="progress" style="height:30px" align="center">
											  <div class="progress-bar ${chamadosPainelChamados.meta_2}" style="width: 33%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 2 horas">
											    <span >15'</span>
											  </div>
											  <div class="progress-bar ${chamadosPainelChamados.meta_6}" style="width: 33%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 6 horas">
											    <span>30'</span>
											  </div>
											  <div class="progress-bar ${chamadosPainelChamados.meta_24}" style="width: 34%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 24 horas">
											    <span>60'</span>
											  </div>
											</div>
											</td>
										</c:if>
										<c:if test="${chamadosPainelChamados.equipe != 'Banco de Dados'}">	
											<c:if test="${chamadosPainelChamados.equipe != 'Segurança da Informação - Ativos'}">	
												<td  width="15%" height="70%" style="padding:3px" >
												<div class="progress" style="height:30px" align="center">
												  <div class="progress-bar ${chamadosPainelChamados.meta_2}" style="width: 33%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 2 horas">
												    <span >2</span>
												  </div>
												  <div class="progress-bar ${chamadosPainelChamados.meta_6}" style="width: 33%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 6 horas">
												    <span>6</span>
												  </div>
												  <div class="progress-bar ${chamadosPainelChamados.meta_24}" style="width: 34%" class="sr-only" data-toggle="tooltip" data-placement="bottom" title="Meta de 24 horas">
												    <span>24</span>
												  </div>
												</div>
												</td>
											</c:if>
										</c:if>
								</tr>
							</c:forEach>
						</tbody>    
					</table>
                   </div>
               </div> <!-- fim DIV col-md4 do Chamados ROW -->
               <div class="col-md-4">
               	<div class="list-group">
                   	<a href="#chamados" class="list-group-item active " id="painel_incidente_titulo">
						<strong>Incidentes</strong>
					 </a>
					<table class="table table-bordered table-hover">
						<thead>
							<tr class="painel_incidente">
								<td><center><strong>Equipe</strong></center></td>
								<td><center><strong>Chamado</strong></center></td>
								<td><center><strong>Descrição</strong></center></td>
								<td><center><strong>SLA</strong></center></td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${chamadosPainelIncidentes}" var="chamadosPainelIncidentes">	
								<tr class="${chamadosPainelIncidentes.alerta}" data-toggle="tooltip" data-placement="bottom" title="${chamadosPainelIncidentes.alerta}">
									<td>${chamadosPainelIncidentes.equipe}</td>
									<td>${chamadosPainelIncidentes.chamado}</td>
									<td>${chamadosPainelIncidentes.titulo}</td>
									<td>${chamadosPainelIncidentes.sla}</td>
								</tr>
							</c:forEach>
						</tbody>    
					</table>
                   </div>
               </div> <!-- fim DIV col-md4 do Incidentes ROW -->
               </div>
           </div> <!-- fim DIV ROW -->
	</div> <!-- fim DIV dos Paineis NOC, Chamados e Incidentes -->
</div><!-- fim DIV Painel Geral -->
