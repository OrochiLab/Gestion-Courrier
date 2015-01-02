<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cour_arrive.aspx.cs" Inherits="GestionCourrier.cour_arrive" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header">
					<div class="pull-left">
						<h1>Contacts</h1>
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
							<a href="#">Contacts</a>
							<i class="icon-angle-right"></i>
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
									Liste des contacts de l'organisme
								</h3>

                                  
							</div>
							<div class="box-content nopadding"><br />
                                <asp:Button ID="btn_ajout" runat="server" Text="Ajouter contact" class="btn btn-primary" style="margin-bottom : 20px;" OnClick="btn_ajout_Click" />
				
								<table class="table table-hover table-nomargin table-bordered dataTable-columnfilter dataTable">
									<thead>
										<tr class='thefilter'>
											<th>Identifiant</th>
											<th>Nom</th>
                                            <th>Adresse</th>
                                            <th>Type</th>
										</tr>
										<tr>
											<th>Identifiant</th>
											<th>Nom</th>
                                            <th>Adresse</th>
                                            <th>Type</th>
										</tr>
									</thead>
									<tbody>
                                        <%
                                            List<GestionCourrier.Metier.Contact> liste = GestionCourrier.Services.ContactService.getContacts();
                                            if(liste!=null)
                                            foreach(GestionCourrier.Metier.Contact c in liste)
                                            { 
                                             %>
										<tr>
											<td><% Response.Write(c.getId()); %></td>
											<td><% Response.Write(c.getNom()); %></td>
                                            <td><% Response.Write(c.getAdresse()); %></td>
                                            <td><% Response.Write(c.getType()); %></td>
										</tr>
										<%
                                        } %>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

</asp:Content>
