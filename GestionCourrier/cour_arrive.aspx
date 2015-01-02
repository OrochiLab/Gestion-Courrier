<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cour_arrive.aspx.cs" Inherits="GestionCourrier.cour_arrive" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header">
					<div class="pull-left">
						<h1>Courriers arrivés</h1>
					</div>
					<div class="pull-right">
						
						<ul class="stats">
							<li class='lightred'>
								<i class="icon-calendar"></i>
								<div class="details">
									<span class="big">February 22, 2013</span>
									<span>Wednesday, 13:56</span>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="breadcrumbs">
					<ul>
						<li>
							<a href="index.aspx">Accueil</a>
							<i class="icon-angle-right"></i>
						</li>
						<li>
							<a href="#">Courriers</a>
							<i class="icon-angle-right"></i>
						</li>
						<li>
							<a href="#">Courriers arrivés</a>
						</li>
					</ul>
					<div class="close-bread">
						<a href="#"><i class="icon-remove"></i></a>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span12">
						<div class="box box-color">
							<div class="box-title">
								<h3>
									Courriers arrivés
								</h3>
							</div>
							<div class="box-content nopadding"><br />
                                <asp:Button ID="btn_ajout" runat="server" Text="Ajouter un courrier" class="btn btn-primary" style="margin-bottom : 20px;" OnClick="btn_ajout_Click1" />
				
								<table class="table table-hover table-nomargin table-bordered dataTable-columnfilter dataTable">
									<thead>
										<tr class='thefilter'>
											<th>Reference</th>
											<th>Date creation</th>
                                            <th>Date courrier</th>
                                            <th>Date arrivée</th>
											<th class='hidden-350'>Etat</th>
											<th class='hidden-1024'>Requis réponse ?</th>
											<th class='hidden-480'>CSS grade</th>
                                            <th class="hidden-350"><h1>lol</h1></th>
										</tr>
										<tr>
											<th>Reference</th>
											<th>Date creation</th>
                                            <th>Date courrier</th>
                                            <th>Date arrivée</th>
											<th class='hidden-350'>Etat</th>
											<th class='hidden-1024'>Requis réponse ?</th>
											<th class='hidden-480'>CSS grade</th>
                                            <th class="hidden-350">Options</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Trident</td>
											<td>
												Internet
													Explorer 4.0
											</td>
                                            <td>Trident</td>
                                            <td>Trident</td>
											<td class='hidden-350'>Win 95+</td>
											<td class='hidden-1024'>4</td>
											<td class='hidden-480'>X</td>
                                            <td class='hidden-480'>
												<a href="#" class="btn" rel="tooltip" title="Détails"><i class="icon-search"></i></a>
												<a href="#" class="btn" rel="tooltip" title="Modifier"><i class="icon-edit"></i></a>
												<a href="#" class="btn" rel="tooltip" title="Supprimer"><i class="icon-remove"></i></a>
											</td>
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

</asp:Content>
