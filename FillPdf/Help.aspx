<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="FillPdf._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body style="background-color: floralwhite">
    <form id="form1" runat="server" style="margin: 15px">
        <div class="navbar navbar-inverse navbar-fixed-top" id="navbar">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/">Health Care Application</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="cleanTechApp.aspx">Clean Technology Application</a></li>
                        <li><a runat="server" href="~/Help.aspx">Help</a></li>
                        <li><a runat="server" href="~/Contact.aspx">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>

    <h2><%: Title %></h2>
    <h4>Tips on how to use the form</h4>
    <p></p>
</form>
</body>
</html>