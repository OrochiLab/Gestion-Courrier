<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ajout_contact.aspx.cs" Inherits="GestionCourrier.ajout_contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header">
					<div class="pull-left">
						<h1>Ajout de contact</h1>
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
							<a href="contacts.aspx">Contacts</a>
							<i class="icon-angle-right"></i>
						</li>
						<li>
							<a href="#">Ajout contact</a>
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
								<h3><i class="icon-edit"></i> Ajouter un contact</h3>
							</div>
							<div class="box-content">
								
                                <asp:Panel ID="pnl_result" runat="server" CssClass="alert alert-success" Visible="false">
                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
									Ajout effectué avec succès !!
                                </asp:Panel>

									<div class="control-group">
										<label for="textfield" class="control-label">Nom : </label>
										<div class="controls">
                                            <asp:TextBox runat="server" ID="nom" name="nom"  data-rule-required="true" CssClass="input-xlarge"/>
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">Type de contact</label>
										<div class="controls">
											
                                            <asp:RadioButtonList ID="type" runat="server" Width="162px">
                                                <asp:ListItem Selected="True">Interne</asp:ListItem>
                                                <asp:ListItem>Externe</asp:ListItem>
                                            </asp:RadioButtonList>
                                            
										</div>
									</div>
									<div class="control-group">
										<label for="adresse" class="control-label">Adresse : 
                                        
                                        </label>
										<div class="controls">
											
                                            <asp:TextBox id="adresse" TextMode="multiline" Columns="50" Rows="2" runat="server"  class="input-block-level"/>
										</div>
									</div>
									<div class="form-actions">
										
                                        <asp:Button runat="server" id="btn_enregistrer" Text="Enregistrer" CssClass="btn btn-primary" OnClick="btn_enregistrer_Click" />
									</div>
								
							</div>
						</div>
					</div>
				</div>
				
</asp:Content>
