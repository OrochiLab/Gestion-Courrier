<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="details_courrier.aspx.cs" Inherits="GestionCourrier.details_courrier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header">
					<div class="pull-left">
						<h1>Détails du courrier</h1>
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
							<a href="more-login.html">Accueil</a>
							<i class="icon-angle-right"></i>
						</li>
						<li>
							<a href="more-files.html">Courriers</a>
							<i class="icon-angle-right"></i>
						</li>
						<li>
							<a href="more-blank.html">Courriers arrivés</a>
						</li>
					</ul>
					<div class="close-bread">
						<a href="#"><i class="icon-remove"></i></a>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span12">
						<div class="box">
							<div class="box-title">
								<h3>
									<i class="icon-reorder"></i>
									Détails du courrier <strong><asp:Label ID="reference" runat="server" Text="Label"></asp:Label></strong>
								</h3>
							</div>
							<div class="box-content">
								<div class="alert alert-info">
									<h4>Information!</h4>
									<p>Cliquez simplement sur l'élément que vous désirez modifier !</p>
								</div>
								<table id="user" class="table table-bordered table-striped table-force-topborder" style="clear: both">
									<tbody> 
										<tr>         
											<td width="15%">Réference : </td>
											<td width="35%"><asp:HyperLink ID="ref_cour" runat="server">Test</asp:HyperLink></td>
											<td width="15%">Agent de l'unité: </td>
											<td width="35%"><asp:HyperLink ID="agentua" runat="server">Test</asp:HyperLink></td>
										</tr>

                                        <tr>         
											<td>Réference du dossier : </td>
											<td><asp:HyperLink ID="ref_dos" runat="server">Test</asp:HyperLink></td>
											<td>Requis une réponse ?: </td>
											<td><asp:HyperLink ID="reponse" runat="server">Test</asp:HyperLink></td>
										</tr>

                                        <tr>         
											<td>Expediteur :  </td>
											<td><asp:HyperLink ID="expediteur" runat="server">Test</asp:HyperLink></td>
											<td>Courrier de réponse :  </td>
											<td><asp:HyperLink ID="courrier_reponse" runat="server">Test</asp:HyperLink></td>
										</tr>

                                        <tr>         
											<td>Type : </td>
											<td><asp:HyperLink ID="type" runat="server">Test</asp:HyperLink></td>
											<td>Date du courrier :  </td>
											<td><asp:HyperLink ID="datecour" runat="server">Test</asp:HyperLink></td>
										</tr>
										 
                                        <tr>         
											<td>Nature : </td>
											<td><asp:HyperLink ID="nature" runat="server">Test</asp:HyperLink></td>
											<td>Date d'arrivée :  </td>
											<td><asp:HyperLink ID="datearr" runat="server">Test</asp:HyperLink></td>
										</tr>

                                        <tr>         
											<td>Date création : </td>
											<td><asp:HyperLink ID="datecrea" runat="server">Test</asp:HyperLink></td>
											<td>Facture ? :  </td>
											<td>
                                                <asp:HyperLink ID="facture" runat="server">Test</asp:HyperLink>
                                                Devise : <asp:HyperLink ID="device" runat="server">Test</asp:HyperLink>
                                                Montant : <asp:HyperLink ID="montant" runat="server">Test</asp:HyperLink>
											</td>
										</tr>

                                        <tr>         
											<td>Objet: </td>
											<td><asp:HyperLink ID="objet" runat="server">Test</asp:HyperLink></td>
											<td>Etat :  </td>
											<td><asp:HyperLink ID="etat" runat="server">Test</asp:HyperLink></td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
    <script>
        $('#ContentPlaceHolder1_reponse').editable({
            type: 'select',
            title: 'Ce courrier exige t-il un accusé ?',
            source : [
                {value : 'oui',text : 'Oui'},
                {value : 'non',text : 'Non'}

            ],
            success: function (response, newValue) {
                console.log('Nouvelle valeur : ' + newValue);
            }
        });

        $('#ContentPlaceHolder1_ref_dos').editable({
            type: 'select',
            title: 'Ce courrier est une réponse au courrier : ',
            source: [
                { value: '', text: 'Choisissez le courrier' },
                <% 
                List<GestionCourrier.Metier.Dossier> liste = GestionCourrier.Services.DossierService.getRefDossiers();
                for (var i = 0; i < liste.Count; i++)
                    Response.Write("{ "+String.Format("value : '{0}', text : '{1}'", liste[i].getReference(), liste[i].getReference())+"}"+((i==liste.Count)?"":","));
                %>

            ],
            success: function (response, newValue) {
                console.log('Nouvelle valeur : ' + newValue);
            }
        });

    </script>
</asp:Content>
