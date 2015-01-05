<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ajout_cour.aspx.cs" Inherits="GestionCourrier.ajout_cour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="page-header">
				<div class="pull-left">
					<h1>Ajout d'un nouveau courrier</h1>
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
						<a href="#">Ajout courrier</a>
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
							<h3><i class="icon-edit"></i> Ajout d'un nouveau courrier</h3>
						</div>
						<div class="box-content">
                            
								<asp:Label ID="result" runat="server" Text=""></asp:Label><br /><br />
                            <div class="control-group">
										<div class="controls">
											<div class="input-xlarge">
                                                <div class="input-append">
                                                    
                                                    <asp:CheckBox  style="float:left;margin-right:5px;" ID="opt_dos" runat="server" class='icheck-me' data-skin="flat" data-color="green"/><label for="ContentPlaceHolder1_opt_dos" class="control-label"> Réference du dossier (facultatif)</label>
                                                    <br />
                                                    <asp:DropDownList ID="ref_dos" class='input-block-level chosen-select' runat="server">
                                                    <asp:ListItem Value="0">Selectionnez un dossier</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <a href="#modal-1" id="link_ajt_dos" runat="server" role="button" class="btn" data-toggle="modal">Nouveau dossier</a>
                                                    <asp:HiddenField id="id_ref_dos" runat="server" />
                                                </div>
                                                    
                                                <div class="control-group">
										            <label for="ref_cour" class="control-label">Réference du courrier : </label>
										            <div class="controls">
                                                        <asp:TextBox runat="server" ID="ref_cour" name="ref_cour"  data-rule-required="true" CssClass="input-medium"/>
										            </div>
									            </div>

                                                <div class="control-group">
										            <label for="expediteur" class="control-label">Expéditeur: </label>
										            <div class="controls">
                                                        <asp:DropDownList ID="expediteur" class='input-block-level chosen-select input-medium' runat="server" OnSelectedIndexChanged="unit_SelectedIndexChanged">
                                                            <asp:ListItem Value="3">test3</asp:ListItem>
                                                            <asp:ListItem Value="2">test2</asp:ListItem>
                                                            <asp:ListItem Value="1">test1</asp:ListItem>
                                                        </asp:DropDownList>
                                                        
										            </div>
                                                    <asp:HiddenField id="id_expediteur" runat="server" />
									            </div>

                                                <div class="control-group">
										            <label for="type" class="control-label">Type : </label>
										            <div class="controls">
                                                        <asp:TextBox runat="server" ID="type" name="type"  data-rule-required="true" CssClass="input-medium"/>
										            </div>
									            </div>

                                                <div class="control-group">
										            <label for="nature" class="control-label">Nature : </label>
										            <div class="controls">
                                                        <asp:TextBox runat="server" ID="nature" name="nature"  data-rule-required="true" CssClass="input-medium"/>
										            </div>
									            </div>

                                                <div class="control-group">
										            <label for="nature" class="control-label">Objet : </label>
										            <div class="controls">
                                                        <asp:TextBox runat="server" ID="objetcr" name="objetcr"  data-rule-required="true" CssClass="input-xlarge"/>
										            </div>
									            </div>
									
                                                <div class="control-group">
										            <label for="datecr" class="control-label">Date création : </label>
										            <div class="controls">
                                                        <asp:TextBox runat="server" ID="datecrea" name="datecrea" data-rule-required="true" CssClass="input-medium datepick"/>
										            </div>
									            </div>

                                                <div class="control-group">
										            <label for="datecr" class="control-label">Date du courrier (date du rédaction par l'expediteur) : </label>
										            <div class="controls">
                                                        <asp:TextBox runat="server" ID="datecour" name="datecour" data-rule-required="true" CssClass="input-medium datepick"/>
										            </div>
									            </div>

                                                <div class="control-group">
										            <label for="datecr" class="control-label">Date d'arrivée du courrier : </label>
										            <div class="controls">
                                                        <asp:TextBox runat="server" ID="datearr" name="datearr" data-rule-required="true" CssClass="input-medium datepick"/>
										            </div>
									            </div>
                                                    
                                                <div class="control-group">
                                                <asp:CheckBox  style="float:left;margin-right:5px;" ID="cour_rep" runat="server" class='icheck-me' data-skin="flat" data-color="green"/><label for="ContentPlaceHolder1_cour_rep" class="control-label">Ce courrier est une réponse </label>
                                                <br />
                                                <div id="reponse_div">
                                                    <label for="type" class="control-label">Réference du courrier: </label>
										            <div class="controls">
                                                        <asp:DropDownList ID="ref_cour_rep" class='input-block-level chosen-select input-medium' runat="server">
                                                            <asp:ListItem Value="3">test3</asp:ListItem>
                                                            <asp:ListItem Value="2">test2</asp:ListItem>
                                                            <asp:ListItem Value="1">test1</asp:ListItem>
                                                        </asp:DropDownList>
                                                        
										            </div>
                                                    <asp:HiddenField id="id_ref_cour_rep" runat="server" />

                                                </div>
                                                </div>

                                                <div class="control-group">
										            <label for="type" class="control-label">Unité administratif: </label>
										            <div class="controls">
                                                        <asp:DropDownList ID="unit" class='input-block-level chosen-select input-medium' runat="server" OnSelectedIndexChanged="unit_SelectedIndexChanged">
                                                            <asp:ListItem Value="3">test3</asp:ListItem>
                                                            <asp:ListItem Value="2">test2</asp:ListItem>
                                                            <asp:ListItem Value="1">test1</asp:ListItem>
                                                        </asp:DropDownList>
                                                        
										            </div>
                                                    <asp:HiddenField id="id_unit" runat="server" />
									            </div>

                                                <div class="control-group">
										            <label for="type" class="control-label">Suivi par l'agent : </label>
										            <div id="agent_ajax" class="controls">
                                                        <asp:DropDownList ID="agent_ua" class='input-block-level chosen-select input-medium' runat="server">
                                                            <asp:ListItem Value="0">Selectionnez une unité</asp:ListItem>
                                                        </asp:DropDownList>
										            </div>
                                                    <asp:HiddenField id="id_agent_ua" runat="server" />
									            </div>

                                                    <asp:RadioButtonList ID="typecr" runat="server" RepeatDirection="Horizontal" CellPadding="5" CellSpacing="5" TextAlign="Left">
                                                        <asp:ListItem Value="arr">Courrier arriv&#233;</asp:ListItem>
                                                        <asp:ListItem Value="int">Courrier interne</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                <br />
                                                <asp:CheckBox  style="float:left;margin-right:5px;" ID="reponse" runat="server" class='icheck-me' data-skin="flat" data-color="green"/><label for="ContentPlaceHolder1_reponse" class="control-label">Requis une réponse</label>
                                                <br />       
                                                <asp:CheckBox  style="float:left;margin-right:5px;" ID="fact" runat="server" class='icheck-me' data-skin="flat" data-color="green"/><label for="ContentPlaceHolder1_fact" class="control-label">Facture </label>
                                                <br />
                                                <div id="fact_div">
                                                        <div class="control-group">
										                    <label for="type" class="control-label">Device : </label>
										                    <div class="controls">
                                                                <asp:TextBox runat="server" ID="device" name="device"  data-rule-required="true" CssClass="input-medium"/>
										                    </div>
									                    </div>

                                                    <div class="control-group">
										                <label for="nature" class="control-label">Montant : </label>
										                <div class="controls">
                                                            <asp:TextBox runat="server" ID="montant" name="montant"  data-rule-required="true" CssClass="input-medium"/>
										                </div>
									                </div>
                                                </div>
                                                
                                            </div>
                                            </div>
										</div>
									</div>

									
								<div class="form-actions">
									<asp:Button ID="btn_ajout_cr" runat="server" Text="Valider" class="btn btn-primary" style="margin-bottom : 20px;" OnClick="btn_ajout_cr_Click" />
								</div>
								
						</div>
					</div>




				</div>
				


<div id="modal-1" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3 id="myModalLabel">Ajouter un nouveau dossier</h3>
		</div>
		<div class="modal-body">
			<div class="box-content">
								
                            <asp:Panel ID="pnl_result" runat="server" CssClass="alert alert-success" Visible="false">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
								Ajout effectué avec succès !!
                            </asp:Panel>

								<div class="control-group">
									<label for="ref" class="control-label">Référence : </label>
									<div class="controls">
                                        <asp:TextBox runat="server" ID="ref" name="ref"  data-rule-required="true" CssClass="input-medium"/>
									</div>
								</div>

                                <div class="control-group">
									<label for="intitule" class="control-label">Intitulé : </label>
									<div class="controls">
                                        <asp:TextBox runat="server" ID="intitule" name="intitule"  data-rule-required="true" CssClass="input-medium"/>
									</div>
								</div>

                                <div class="control-group">
									<label for="objet" class="control-label">Objet : </label>
									<div class="controls">
                                        <asp:TextBox runat="server" ID="objet" name="objet"  data-rule-required="true" CssClass="input-medium"/>
									</div>
								</div>
									
                                <div class="control-group">
									<label for="datecrd" class="control-label">Date création : </label>
									<div class="controls">
                                        <asp:TextBox runat="server" ID="datecrd" name="datecrd" data-rule-required="true" CssClass="input-medium datepick"/>
									</div>
								</div>
									
								
						</div>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">Fermer</button>

			<asp:Button runat="server" id="btn_enregistrer" Text="Enregistrer" CssClass="btn btn-primary" />
									
		</div>
	</div>






<script>
    $(document).ready(function () {

        $("#ContentPlaceHolder1_ref_dos_chzn").hide();
        $("#ContentPlaceHolder1_link_ajt_dos").hide();
        $("#fact_div").hide();
        $("#reponse_div").hide();

        $("#ContentPlaceHolder1_btn_ajout_cr").click(function (e) {
            
            //console.log('avant ' + $("#ContentPlaceHolder1_id_agent_ua").val());
            $("#ContentPlaceHolder1_id_ref_dos").val($("#ContentPlaceHolder1_ref_dos_chzn a span").html());
            $("#ContentPlaceHolder1_id_unit").val($("#ContentPlaceHolder1_unit_chzn a span").html());
            $("#ContentPlaceHolder1_id_agent_ua").val($("#ContentPlaceHolder1_agent_ua_chzn a span").html());
            $("#ContentPlaceHolder1_id_ref_cour_rep").val($("#ContentPlaceHolder1_ref_cour_rep_chzn a span").html());
            $("#ContentPlaceHolder1_id_expediteur").val($("#ContentPlaceHolder1_expediteur_chzn a span").html());

            //console.log('apres : ' + $("#ContentPlaceHolder1_id_agent_ua").val());
            //e.preventDefault();
        });

        $("#ContentPlaceHolder1_unit").on("change", function () {

            $.get("uagent.aspx?id="+this.value, function (data, status) {
                $("#agent_ajax").html(data);
            });
        });
        $('#ContentPlaceHolder1_opt_dos').click(function () {
            if($("#ContentPlaceHolder1_opt_dos").is(':checked'))
            {
                $("#ContentPlaceHolder1_ref_dos_chzn").show();
                $("#ContentPlaceHolder1_link_ajt_dos").show();
            }
            else {
                $("#ContentPlaceHolder1_ref_dos_chzn").hide();
                $("#ContentPlaceHolder1_link_ajt_dos").hide();
            }
        });

        $('#ContentPlaceHolder1_fact').click(function () {
            if ($("#ContentPlaceHolder1_fact").is(':checked')) {
                $("#fact_div").show();
            }
            else {
                
                $("#fact_div").hide();
            }
        });

        $('#ContentPlaceHolder1_cour_rep').click(function () {
            if ($("#ContentPlaceHolder1_cour_rep").is(':checked')) {
                $("#reponse_div").show();
            }
            else {

                $("#reponse_div").hide();
            }
        });
    });

</script>
</asp:Content>



