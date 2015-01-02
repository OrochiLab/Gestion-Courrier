<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="GestionCourrier.login" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<!-- Apple devices fullscreen -->
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<!-- Apple devices fullscreen -->
	<meta names="apple-mobile-web-app-status-bar-style" content="black-translucent" />
	
	<title>Gestion de courrier - Connexion</title>

	<!-- Bootstrap -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Bootstrap responsive -->
	<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
	<!-- icheck -->
	<link rel="stylesheet" href="css/plugins/icheck/all.css">
	<!-- Theme CSS -->
	<link rel="stylesheet" href="css/style.css">
	<!-- Color CSS -->
	<link rel="stylesheet" href="css/themes.css">


	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	
	<!-- Nice Scroll -->
	<script src="js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
	<!-- Validation -->
	<script src="js/plugins/validation/jquery.validate.min.js"></script>
	<script src="js/plugins/validation/additional-methods.min.js"></script>
	<!-- icheck -->
	<script src="js/plugins/icheck/jquery.icheck.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/eakroko.js"></script>

	<!--[if lte IE 9]>
		<script src="js/plugins/placeholder/jquery.placeholder.min.js"></script>
		<script>
			$(document).ready(function() {
				$('input, textarea').placeholder();
			});
		</script>
	<![endif]-->
	

	<!-- Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico" />
	<!-- Apple devices Homescreen icon -->
	<link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-precomposed.png" />

</head>

<body class='login'>
    
	<div class="wrapper">
		<h1><a href="index.html">Gestion de courriers</a></h1>
		<div class="login-body">
			<h2>Connexion</h2>
			<form runat="server" class='form-validate' id="test">
                <div class="control-group">
                    <asp:Label ID="result" runat="server" Text=""></asp:Label>
				</div>
				<div class="control-group">
					<div class="email controls">
						<asp:TextBox ID="user" name="user" runat="server" placeholder="Utilisateur" class='input-block-level' data-rule-required="true"></asp:TextBox>
    
					</div>
				</div>
				<div class="control-group">
					<div class="pw controls">
					    <asp:TextBox ID="mdp" TextMode="password" name="mdp" runat="server" placeholder="Mot de passe" class='input-block-level' data-rule-required="true"></asp:TextBox>
    
                    </div>
				</div>
                <div class="control-group">
					<div class="pw controls">
                       
                        <asp:DropDownList ID="acces" name="acces" class='input-block-level' runat="server">
                            <asp:ListItem Selected="True" Value="bo">Accès bureau d&#39;ordre</asp:ListItem>
                            <asp:ListItem Selected="False" Value="ua">Accès Unité administrative</asp:ListItem>
                        </asp:DropDownList>
				    </div>
				</div>
				<div class="submit">
					<asp:Button ID="Button1" runat="server" Text="Se connecter" class="btn btn-primary" style="margin-bottom : 20px;" OnClick="Button1_Click" />
				</div>
			</form>
			
		</div>
	</div>
</body>

</html>

