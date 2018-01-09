<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

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
                        <li><a runat="server" href="~/Help">Help</a></li>
                        <li><a runat="server" href="~/Contact">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>


    <h2>Contact Us </h2>
    <p>If you have any questions or concerns, please contact us using one of the following methods:</p>
    <address>
        <strong>Telephone:</strong><p>Jim to provide Phone #</p><br />
        <strong>Marketing:</strong> Jim to provide E-mail address<a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</form>
</body>
</html>

