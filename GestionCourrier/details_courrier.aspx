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
								<table id="user" class="table table-bordered table-striped table-force-topborder" style="clear: both">
									<tbody> 
										<tr>         
											<td width="15%">Réference : </td>
											<td width="35%"><asp:HyperLink style="font-weight:bold;" ID="ref_cour" runat="server">Test</asp:HyperLink></td>
											<td width="15%">Agent de l'unité: </td>
											<td width="35%"><asp:HyperLink style="font-weight:bold;" ID="agentua" runat="server">Test</asp:HyperLink></td>
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
											Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto vel labore sed odio laudantium in eum aliquid reiciendis blanditiis consequatur excepturi dicta quisquam soluta quis neque nostrum expedita temporibus illum aliquam voluptatibus a cumque sit nulla et consectetur ex maiores sequi culpa suscipit. Voluptate quae id consequatur consequuntur exercitationem cumque beatae obcaecati laudantium? Ea tenetur animi itaque eos aperiam molestiae reprehenderit eaque perferendis iusto beatae sapiente fuga ex ab fugit excepturi nesciunt blanditiis nostrum ipsa. Facere repellendus tempore deleniti neque nihil commodi nemo recusandae eveniet error eligendi tenetur quia et consequuntur cupiditate facilis esse aspernatur praesentium reprehenderit dolorum accusantium ipsum cum voluptas quisquam ea atque aliquid omnis at quam magnam rem cumque repellat maxime mollitia nulla architecto sequi saepe veritatis optio amet culpa consectetur ducimus sapiente doloribus corporis odit adipisci. Commodi ab culpa accusamus maxime amet dolore at necessitatibus fugit beatae id asperiores doloribus perspiciatis expedita quisquam itaque iusto eos ad quibusdam rem fuga ipsum ut quasi. Unde explicabo quae quod saepe maxime nulla ut. Aperiam possimus repellendus deleniti quasi quaerat aliquam veniam numquam doloremque sequi perspiciatis eligendi provident nam voluptates nihil earum saepe maxime mollitia maiores porro animi nulla odit sapiente atque totam illo! Accusantium quis corporis omnis et.
										</div>
										<div class="tab-pane" id="copies">
											Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque ipsum ab odio accusamus similique dicta ipsam dolor magni nemo? Laudantium numquam consectetur maiores quaerat totam cupiditate error repellendus eos quibusdam dolore ipsum sequi illo blanditiis voluptatibus veniam dicta alias tempore consequuntur reprehenderit dignissimos iste sit perferendis possimus quisquam id voluptatum explicabo ut ad accusamus neque. Commodi ipsam quia aperiam nisi id unde sapiente magnam reiciendis voluptate placeat in optio consequuntur culpa magni repudiandae veniam aut. Magni sed asperiores omnis error nemo cum minima illum rerum assumenda ipsa excepturi odit laborum doloremque iure temporibus consectetur in culpa libero iusto repellendus. Culpa perspiciatis nesciunt explicabo officiis beatae ipsam qui odio architecto asperiores ad amet aspernatur veniam ex voluptates cumque expedita reiciendis nobis incidunt harum praesentium a totam ut cum corrupti quia rem provident delectus fuga deserunt itaque aut fugiat veritatis necessitatibus inventore nisi enim aliquid quibusdam! Nihil ratione laboriosam accusamus. Iure sapiente iste odit voluptas sit reiciendis. Cum voluptatibus quia cupiditate cumque eveniet mollitia unde adipisci vel itaque ipsa est iste ducimus sed consequuntur ratione eaque voluptates et odit quod nemo quis aut repudiandae ipsum nostrum deserunt! Excepturi cum eos ut labore debitis facilis ipsum! Fugit eos dicta amet neque qui deserunt!
										</div>
									</div>
								</div>
							</div>
					</div>
				</div>
    <script>
        $('#ContentPlaceHolder1_type').editable({
            type: 'text',
            title: 'Entrez le type du courrier',
            success: function (response, newValue) {
                console.log("Type du courrier : " + newValue);
            }
        });

        $('#ContentPlaceHolder1_nature').editable({
            type: 'text',
            title: 'Entrez la nature du courrier',
            success: function (response, newValue) {
                console.log("Nature du courrier : " + newValue);
            }
        });

        $('#ContentPlaceHolder1_device').editable({
            type: 'text',
            title: 'Entrez le devise de la facture',
            success: function (response, newValue) {
                console.log("Devise : " + newValue);
            }
        });

        $('#ContentPlaceHolder1_montant').editable({
            type: 'text',
            title: 'Entrez le montant de la facture',
            success: function (response, newValue) {
                console.log("Montant : " + newValue);
            }
        });

        $('#ContentPlaceHolder1_objet').editable({
            type: 'text',
            title: 'Entrez l objet du courrier',
            success: function (response, newValue) {
                console.log("Objet : " + newValue);
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
                console.log("Date du creation : " + newValue);
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
                console.log("Date du courrier : " + newValue);
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
                console.log("Date d arrivée : " + newValue);
            }
        });

        $('#ContentPlaceHolder1_reponse').editable({
            type: 'select',
            title: 'Ce courrier exige t-il un accusé ?',
            source : [
                {value : 'oui',text : 'Oui'},
                {value : 'non',text : 'Non'}

            ],
            success: function (response, newValue) {
                console.log('Accusé ? : ' + newValue);
            }
        });

        $('#ContentPlaceHolder1_ref_dos').editable({
            type: 'select',
            title: 'Ce courrier est une réponse au courrier : ',
            source: [
                { value: '', text: '' },
                <% 
                List<GestionCourrier.Metier.Dossier> liste = GestionCourrier.Services.DossierService.getRefDossiers();
                for (var i = 0; i < liste.Count; i++)
                    Response.Write("{ "+String.Format("value : '{0}', text : '{1}'", liste[i].getReference(), liste[i].getReference())+"}"+((i==liste.Count)?"":","));
                %>

            ],
            success: function (response, newValue) {
                console.log('Nouveau dossier : ' + newValue);
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
            }
        });

    </script>
</asp:Content>
