<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uagent.aspx.cs" Inherits="GestionCourrier.uagent" %>
<head>

	<title>Gestion de courriers</title>
    <!-- Bootstrap -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Bootstrap responsive -->
	<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
	<!-- jQuery UI -->
	<link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery-ui.css">
	<link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
	
	<!-- chosen -->
	<link rel="stylesheet" href="css/plugins/chosen/chosen.css">
	<!-- Theme CSS -->
	<link rel="stylesheet" href="css/style.css">
	<!-- Color CSS -->
	<link rel="stylesheet" href="css/themes.css">
    
    <!-- multi select -->
	<link rel="stylesheet" href="css/plugins/multiselect/multi-select.css">
    <!-- Datepicker -->
	<link rel="stylesheet" href="css/plugins/datepicker/datepicker.css">
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	
	<!-- Nice Scroll -->
	<script src="js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
	
	<!-- jQuery UI -->
	<script src="js/plugins/jquery-ui/jquery.ui.core.min.js"></script>
	<script src="js/plugins/jquery-ui/jquery.ui.widget.min.js"></script>
	<script src="js/plugins/jquery-ui/jquery.ui.mouse.min.js"></script>
	<script src="js/plugins/jquery-ui/jquery.ui.resizable.min.js"></script>
	<script src="js/plugins/jquery-ui/jquery.ui.sortable.min.js"></script>
	<script src="js/plugins/jquery-ui/jquery.ui.datepicker.min.js"></script>
    <!-- Wizard -->
	<script src="js/plugins/wizard/jquery.form.wizard.min.js"></script>
	<script src="js/plugins/mockjax/jquery.mockjax.js"></script>
    <!-- Form -->
	<script src="js/plugins/form/jquery.form.min.js"></script>
	
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Bootbox -->
	<script src="js/plugins/bootbox/jquery.bootbox.js"></script>
	
	<!-- Chosen -->
	<script src="js/plugins/chosen/chosen.jquery.min.js"></script>
    <!-- icheck -->
	<link rel="stylesheet" href="css/plugins/icheck/all.css">
	<script src="js/plugins/icheck/jquery.icheck.min.js"></script>
	<!-- Theme framework -->
	<script src="js/eakroko.min.js"></script>
	<!-- Theme scripts -->
	<script src="js/application.min.js"></script>
	<!-- Just for demonstration -->
	<script src="js/demonstration.min.js"></script>

</head>

<body>
    <form runat="server">
<asp:DropDownList ID="ContentPlaceHolder1_agent_ua" class='input-block-level chosen-select input-medium' runat="server">
    <asp:ListItem Value="0">Selectionnez une unité</asp:ListItem>
</asp:DropDownList>
</form>
    </body>