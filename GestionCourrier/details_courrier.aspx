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
							<a href="index.aspx">Accueil</a>
							<i class="icon-angle-right"></i>
						</li>
						<li>
							<a href="cour_arrive.aspx">Courriers arrivés</a>
							<i class="icon-angle-right"></i>
						</li>
						<li>
							<a href="#">Détails courrier</a>
						</li>
					</ul>
					<div class="close-bread">
						<a href="#"><i class="icon-remove"></i></a>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span12">
						<div class="box box-bordered box-color satblue">
								<div class="box-title">
									<h3><i class="icon-reorder"></i> Détails du courrier <strong><asp:Label ID="reference" runat="server" Text=""></asp:Label></strong></h3>
								</div>
								<div class="box-content nopadding">
									<ul class="tabs tabs-inline tabs-top">
										<li class='active'>
											<a href="#details" data-toggle='tab'><i class="icon-info-sign"></i> Détails</a>
										</li>
										<li>
											<a href="#reaffect" data-toggle='tab'><i class="icon-share-alt"></i> Réaffectations</a>
										</li>
										<li>
											<a href="#copies" data-toggle='tab'><i class="icon-tag"></i> Copies</a>
										</li>

									</ul>
									<div class="tab-content padding tab-content-inline tab-content-bottom">
										<div class="tab-pane active" id="details">
										<div class="alert alert-info">
									        <h4>Information!</h4>
									        <p>Cliquez simplement sur l'élément que vous désirez modifier, a noter que les éléments en gras ne sont pas modifiables !</p>
								        </div>
                                        <div id="resultat" class="alert alert-info">
                                            <button type="button" class="close" data-dismiss="alert">×</button>
									        <h5 id="reponse_modif">Reponse modification!</h5>
								        </div>
								<table id="user" class="table table-bordered table-striped table-force-topborder" style="clear: both">
									<tbody> 
										<tr>         
											<td width="15%">Réference : </td>
											<td width="35%"><asp:HyperLink style="font-weight:bold;" ID="ref_cour" runat="server">Test</asp:HyperLink></td>
											<td width="15%">Agent de l'unité: </td>
											<td width="35%"><asp:HyperLink style="font-weight:bold;" ID="agentua" runat="server">Test</asp:HyperLink> De l'unité : <asp:HyperLink style="font-weight:bold;" ID="uniteua" runat="server">Test</asp:HyperLink></td>
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
											<td>Réponse au courrier :  </td>
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
											<td><asp:HyperLink style="font-weight:bold;" ID="etat" runat="server">Test</asp:HyperLink></td>
										</tr>

									</tbody>
								</table>
										</div>
										<div class="tab-pane" id="reaffect">
										
                                            <div class="control-group">
                                            <div class="controls">
                                                <asp:Label ID="resultat_reaf" runat="server" Text=""></asp:Label>
                                             <div class="control-group">
										            <label for="unit" class="control-label">Unité administratif: </label>
										            <div class="controls">
                                                        <asp:DropDownList ID="unit" runat="server">
                                                            <asp:ListItem Value="3">test3</asp:ListItem>
                                                            <asp:ListItem Value="2">test2</asp:ListItem>
                                                            <asp:ListItem Value="1">test1</asp:ListItem>
                                                        </asp:DropDownList>
                                                        
										            </div>
                                                    <asp:HiddenField id="id_unit" runat="server" />
									            </div>

                                                <div class="control-group">
										            <label for="agent_ua" class="control-label">Suivi par l'agent : </label>
										            <div id="agent_ajax" class="controls" style="width:25%;">
                                                        <asp:DropDownList ID="agent_ua" runat="server">
                                                            <asp:ListItem Value="0">Selectionnez une agent</asp:ListItem>
                                                        </asp:DropDownList>
										            </div>
									            </div>
                                                <asp:HiddenField id="id_agent_ua" runat="server" />

                                                <div class="control-group">
										            <label for="datereaf" class="control-label">Date de réaffectation : </label>
										            <div class="controls">
                                                        <asp:TextBox runat="server" ID="datereaf" name="datereaf" data-rule-required="true" CssClass="input-medium datepick"/>
										            </div>
									            </div>

                                                <div class="control-group">
										                <label for="adresse" class="control-label">Motif :</label>
										                <div class="controls">
											                <asp:TextBox id="motif" TextMode="multiline" Columns="50" Rows="2" runat="server"  class="input-block-level"/>
										                </div>
									            </div>
                                                <asp:Button runat="server" id="btn_enregistrer" Text="Enregistrer" CssClass="btn btn-primary" OnClick="btn_enregistrer_Click" />
                                               </div>
                                            </div>

                                   <table class="table table-hover table-nomargin">
									<thead>
										<tr>
											<th>Agent précedent</th>
                                            <th>Unité précedente</th>
											<th>Agent cible</th>
                                            <th>Unité cible</th>
                                            <th>Date de réaffectation</th>
                                            <th>Motif</th>
										</tr>
									</thead>
									<tbody>
                                        <%
                                            List<GestionCourrier.Metier.Reaffectation> listereaf = GestionCourrier.Services.ReaffectationService.getReaffectations(ref_cour.Text.ToString());
                                            foreach(GestionCourrier.Metier.Reaffectation reaf in listereaf)
                                            { 
                                             %>

										<tr>
											<td><% Response.Write(reaf.getAgent_Courant().getNom()+" "+reaf.getAgent_Courant().getPrenom()); %></td>
                                            <td><% Response.Write(reaf.getAgent_Courant().getUnite().getNom()); %></td>
                                            <td><% Response.Write(reaf.getAgent_Cible().getNom()+" "+reaf.getAgent_Cible().getPrenom()); %></td>
                                            <td><% Response.Write(reaf.getAgent_Cible().getUnite().getNom()); %></td>
                                            <td><% Response.Write(reaf.getDate_Reaf().ToString().Substring(0,10)); %></td>
                                            <td><% Response.Write(reaf.getMotif()); %></td>
										</tr>
                                        <%
                                        } %>

									</tbody>
								</table>




										</div>
										<div class="tab-pane" id="copies">
										
                                        
                                        <div class="control-group">
                                            <div class="controls">
                                                <asp:Label ID="resultat_copie" runat="server" Text=""></asp:Label>
                                             <div class="control-group">
										            <label for="unit_copie" class="control-label">Unité administratif: </label>
										            <div class="controls">
                                                        <asp:DropDownList ID="unit_copie" runat="server">
                                                            <asp:ListItem Value="3">test3</asp:ListItem>
                                                            <asp:ListItem Value="2">test2</asp:ListItem>
                                                            <asp:ListItem Value="1">test1</asp:ListItem>
                                                        </asp:DropDownList>
                                                        
										            </div>
                                                 <asp:HiddenField id="id_unit_copie" runat="server" />
									            </div>

                                                <div class="control-group">
										            <label for="id_destinataire" class="control-label">Destinataire: </label>
										            <div class="controls">
                                                        <asp:DropDownList ID="id_destinataire" runat="server">
                                                            <asp:ListItem Value="3">test3</asp:ListItem>
                                                            <asp:ListItem Value="2">test2</asp:ListItem>
                                                            <asp:ListItem Value="1">test1</asp:ListItem>
                                                        </asp:DropDownList>
                                                        
										            </div>
                                                    <asp:HiddenField id="id_destinataire_copie" runat="server" />
									            </div>

                                                <div class="control-group">
										                <label for="motif_copie" class="control-label">Motif :</label>
										                <div class="controls">
											                <asp:TextBox id="motif_copie" TextMode="multiline" Columns="50" Rows="2" runat="server"  class="input-block-level"/>
										                </div>
									            </div>
                                                <asp:Button runat="server" id="btn_enregistrer_copie" Text="Enregistrer" CssClass="btn btn-primary" OnClick="btn_enregistrer_copie_Click" />
                                               </div>
                                            </div>

                                   <table class="table table-hover table-nomargin">
									<thead>
										<tr>
											<th>Unité administrative</th>
                                            <th>Destinataire</th>
											<th>Motif</th>
										</tr>
									</thead>
									<tbody>
                                        <%
                                            List<GestionCourrier.Metier.Copie> listecopies = GestionCourrier.Services.CopieService.getCopies(ref_cour.Text.ToString());
                                            foreach(GestionCourrier.Metier.Copie cop in listecopies)
                                            { 
                                             %>

										<tr>
											<td><% Response.Write(cop.getUnite().getNom()); %></td>
                                            <td><% Response.Write(cop.getDestinataire().getNom()); %></td>
                                            <td><% Response.Write(cop.getMotif()); %></td>
										</tr>
                                        <%
                                        } %>
									</tbody>
								</table>
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        </div>
									</div>
								</div>
							</div>
					</div>
				</div>
    <script>
        function requeteModification(colonne,valeur)
        {
            $.get("modifier_cour.aspx?ref_cour=" + $('#ContentPlaceHolder1_ref_cour').text() + "&colonne="+colonne+"&valeur=" + valeur, function (data, status) {
                $("#reponse_modif").html(data);
                $("#resultat").show();
            });
        }
        $(document).ready(function () {
            $("#resultat").hide();
        });

        $('#ContentPlaceHolder1_type').editable({
            type: 'text',
            title: 'Entrez le type du courrier',
            success: function (response, newValue) {
                console.log("Type du courrier : " + newValue);
                requeteModification("type", newValue);
            }
        });

        $('#ContentPlaceHolder1_nature').editable({
            type: 'text',
            title: 'Entrez la nature du courrier',
            success: function (response, newValue) {
                console.log("Nature du courrier : " + newValue);
                requeteModification("nature", newValue);
            }
        });

        $('#ContentPlaceHolder1_device').editable({
            type: 'text',
            title: 'Entrez le devise de la facture',
            success: function (response, newValue) {
                console.log("Devise : " + newValue);
                requeteModification("devise", newValue);
            }
        });

        $('#ContentPlaceHolder1_montant').editable({
            type: 'text',
            title: 'Entrez le montant de la facture',
            success: function (response, newValue) {
                console.log("Montant : " + newValue);
                requeteModification("montant", newValue);
            }
        });

        $('#ContentPlaceHolder1_objet').editable({
            type: 'text',
            title: 'Entrez l objet du courrier',
            success: function (response, newValue) {
                console.log("Objet : " + newValue);
                requeteModification("objet", newValue);
            }
        });

        $('#ContentPlaceHolder1_datecrea').editable({
            type: 'date',
            title: 'Entrez la date de creation du courrier',
            format: 'dd/mm/yyyy',
            viewformat: 'dd/mm/yyyy',
            datepicker: {
                weekStart: 1
            },
            success: function (response, newValue) {
                newValue = (('' + newValue.getDate()).length < 2 ? '0' : '') + newValue.getDate() + "/" + (('' + newValue.getMonth()).length < 2 ? '0' : '') + (newValue.getMonth() + 1) + "/" + newValue.getFullYear();
                console.log("Date de creation : " + newValue);
                requeteModification("datecrea", newValue);
            }
        });

        $('#ContentPlaceHolder1_datecour').editable({
            type: 'date',
            title: 'Entrez la date de rédaction du courrier',
            format: 'dd/mm/yyyy',
            viewformat: 'dd/mm/yyyy',
            datepicker: {
                weekStart: 1
            },
            success: function (response, newValue) {
                newValue = (('' + newValue.getDate()).length < 2 ? '0' : '') + newValue.getDate() + "/" + (('' + newValue.getMonth()).length < 2 ? '0' : '') + (newValue.getMonth() + 1) + "/" + newValue.getFullYear();
                console.log("Date du courrier : " + newValue);
                requeteModification("datecour", newValue);
            }
        });

        $('#ContentPlaceHolder1_datearr').editable({
            type: 'date',
            title: 'Entrez la date d arrivée du courrier',
            format: 'dd/mm/yyyy',
            viewformat: 'dd/mm/yyyy',
            datepicker: {
                weekStart: 1
            },
            success: function (response, newValue) {
                newValue = (('' + newValue.getDate()).length < 2 ? '0' : '') + newValue.getDate() + "/" + (('' + newValue.getMonth()).length < 2 ? '0' : '') + (newValue.getMonth() + 1) + "/" + newValue.getFullYear();
                console.log("Date d arrivée : " + newValue);
                requeteModification("datearr", newValue);
            }
        });

        $('#ContentPlaceHolder1_reponse').editable({
            type: 'select',
            title: 'Ce courrier exige t-il un accusé ?',
            source : [
                {value : '1',text : 'Oui'},
                {value : '0',text : 'Non'}

            ],
            success: function (response, newValue) {
                console.log('Accusé ? : ' + newValue);
                requeteModification("reponse", newValue);
            }
        });

        $('#ContentPlaceHolder1_ref_dos').editable({
            type: 'select',
            title: 'Référence du dossier : ',
            source: [
                { value: 'sans', text: '' },
                <% 
                List<GestionCourrier.Metier.Dossier> liste = GestionCourrier.Services.DossierService.getRefDossiers();
                for (var i = 0; i < liste.Count; i++)
                    Response.Write("{ "+String.Format("value : '{0}', text : '{1}'", liste[i].getReference(), liste[i].getReference())+"}"+((i==liste.Count)?"":","));
                %>

            ],
            success: function (response, newValue) {
                console.log('Nouveau dossier : ' + newValue);
                requeteModification("ref_dos", newValue);
            }
        });

        $('#ContentPlaceHolder1_expediteur').editable({
            type: 'select',
            title: 'Expediteur du courrier : ',
            source: [
                { value: '', text: '' },
                <% 
                List<GestionCourrier.Metier.Contact> listec = GestionCourrier.Services.ContactService.getContacts();
                for (var i = 0; i < listec.Count; i++)
                    Response.Write("{ "+String.Format("value : '{0}', text : '{1}'", listec[i].getId(), listec[i].getNom())+"}"+((i==listec.Count)?"":","));
                %>

            ],
            success: function (response, newValue) {
                console.log('Nouveau expediteur : ' + newValue);
                requeteModification("expediteur", newValue);
            }
        });

        $('#ContentPlaceHolder1_courrier_reponse').editable({
            type: 'select',
            title: 'Ce courrier est une réponse au : ',
            source: [
                { value: '', text: '' },
                <% 
                List<string> listecr = GestionCourrier.Services.CourrierService.getCourriresAvecReponses();
                for (var i = 0; i < listecr.Count; i++)
                    Response.Write("{ "+String.Format("value : '{0}', text : '{1}'", listecr[i], listecr[i])+"}"+((i==listecr.Count)?"":","));
                %>

            ],
            success: function (response, newValue) {
                console.log('Courrier réponse : ' + newValue);
                requeteModification("courrier_reponse", newValue);
            }
        });

        $("#ContentPlaceHolder1_unit").on("change", function () {

            $.get("uagent.aspx?id=" + this.value, function (data, status) {
                $("#agent_ajax").html(data);
            });
        });

        $("#ContentPlaceHolder1_btn_enregistrer").click(function (e) {

            $("#ContentPlaceHolder1_id_agent_ua").val($("#ContentPlaceHolder1_agent_ua").val());

        });

        $("#ContentPlaceHolder1_btn_enregistrer_copie").click(function (e) {

            $("#ContentPlaceHolder1_id_unit_copie").val($("#ContentPlaceHolder1_unit_copie").val());
            $("#ContentPlaceHolder1_id_destinataire_copie").val($("#ContentPlaceHolder1_id_destinataire").val());

        });

    </script>
</asp:Content>
