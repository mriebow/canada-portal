<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="default.aspx.cs" Inherits="FillPdf._default" %>

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
    <div>
         <h1 style="font-family: 'Arial Rounded MT Bold'">Equipment Finance Application / Demande de Crédit</h1>
    <hr />
    <asp:Panel class="col-xs-12 col-lg-7" ID="Panel1" runat="server" BorderStyle="Double" GroupingText="Business Information" BackColor="#E5E4F0">
            <div>
                <p style="margin-bottom:0px">Legal Business Name(Professional Corp.) / Dénomination sociale (au complet)</p>
                    <asp:TextBox ID="name" placeholder="Legal Name" runat="server" Width="75%" BackColor="#F6F6F6"></asp:TextBox>
            </div>
        <br />
            <div>
                <p style="margin-bottom:0px">Address / Adresse</p>
                <asp:TextBox ID="streetNumber" placeholder="Street Number/ Unit Number" runat="server" Width="25%" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
                <asp:TextBox ID="streetName" placeholder="Street Name" runat="server" Width="50%" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
            </div>
            <div>
                <asp:TextBox ID="city" placeholder="City/Ville" runat="server" Width="25%" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
                <asp:TextBox ID="province" placeholder="Province" runat="server" Width="25%" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
            </div>
            <div>
                <asp:TextBox ID="postal" placeholder="Postal/Code Postal" runat="server" Width="25%" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
                <asp:TextBox ID="country" placeholder="Country/Pays" runat="server" Width="25%" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
            </div>
        <br />
            <div>
                <p style="margin-bottom: 0px;">Number of Years at this Address /Nombre d'années à cette adresse</p>
                <asp:TextBox ID="yearsAddress" runat="server" TextMode="Number" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
                 <p style="margin-bottom:0px">Number of Years in Business / Nombre d'années d'activité</p>
                 <asp:TextBox ID="yearsBusiness" runat="server" TextMode="Number" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
            </div>
            <div>
                 <p style="margin-bottom: 0px;">Phone / Téléphone</p>
                 <asp:TextBox ID="phone" runat="server" style="margin-bottom: 5px" BackColor="#F6F6F6" Width="25%"></asp:TextBox>
                 <div>
                     <p style="margin-bottom: 0px;">
                         Website / Site Web</p>
                     <asp:TextBox ID="website" runat="server" BackColor="#F6F6F6" style="margin-bottom: 5px" TextMode="Url" Width="25%"></asp:TextBox>
                 </div>
            </div>
            <div>
                 <p style="margin-bottom: 0px;">Supplier(Vendor) Name / Renseignements sur le fournisseur</p>
                 <asp:TextBox ID="supplierName" runat="server" style="margin-bottom: 5px" BackColor="#F6F6F6" Width="25%"></asp:TextBox>
            </div>
            <div>
                 <p style="margin-bottom: 0px;">Equipment Description / Descriptions du matériel</p>
                 <asp:TextBox ID="description" runat="server" Font-Size="Medium" TextMode="MultiLine" style="margin-bottom: 5px" BackColor="#F6F6F6" Width="25%"></asp:TextBox>
            </div>
            <div>
                 <p style="margin-bottom: 0px;">Equipment Cost / Coût de l'équipement</p>
                 <asp:TextBox ID="cost" runat="server" TextMode="Number" style="margin-bottom: 5px" BackColor="#F6F6F6" OnTextChanged="cost_TextChanged"></asp:TextBox>
            </div>
            <div>
                 <p style="margin-bottom: 0px;">Term / Terme</p>
                 <asp:TextBox ID="term" runat="server" style="margin-bottom: 5px" BackColor="#F6F6F6" OnTextChanged="term_TextChanged"></asp:TextBox>
            </div>   
    <h4>Applications over $100,000 may require additional information - for example: Financial Statements / 
        Pour les demandes sur passant la somme de 100,000$ demande de informations additionel - etats financiers</h4>
    </asp:Panel>
    <div class="col-xs-12 col-lg-7">
        <h2 style="font-family: 'Arial Rounded MT Bold'">Business Owners - if joint lease, each partner must complete this section.</h2>
    </div>
    <asp:Panel class="col-xs-12 col-lg-7" ID="Panel2" runat="server" BorderStyle="Double" GroupingText="Customer Information" BackColor="#E5E4F0">
        <div style="padding-bottom: 8px">
            <p style="margin-bottom:0px">Business Owner Name</p>
            <asp:TextBox ID="ownerName" placeholder="First and Last Name" runat="server" Width="75%" BackColor="#F6F6F6"></asp:TextBox>
        </div>
        <div>
            <p style="margin-bottom:0px">Address / Adresse</p>
            <asp:TextBox ID="homeStreetNumber" placeholder="Street Number/ Unit Number" runat="server" Width="25%" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
            <asp:TextBox ID="homeStreetName" placeholder="Street Name" runat="server" Width="50%" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
        </div>
        <div>
            <asp:TextBox ID="homeCity" placeholder="City/Ville" runat="server" Width="25%" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
            <asp:TextBox ID="homeProvince" placeholder="Province" runat="server" Width="25%" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
        </div>
        <div>
            <p style="margin-bottom:0px">Home Address</p>
            <asp:TextBox ID="homePostal" placeholder="Postal" runat="server" Width="25%" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
            <asp:TextBox ID="homeCountry" placeholder="Country" runat="server" Width="25%" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
        </div>
        <div>
            <p style="margin-bottom:0px">Phone Number / Téléphone</p>
            <asp:TextBox ID="homePhoneNumber" placeholder="Primary Phone Number" runat="server" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
            <p style="margin-bottom:0px">Cell Number</p>
            <asp:TextBox ID="cell" placeholder="Cell Number" runat="server" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
        </div>
        <div>
            <p style="margin-bottom:0px">E-Mail</p>
            <asp:TextBox ID="email" runat="server" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
        </div>
        <div>
            <p style="margin-bottom:0px">Date of Birth</p>
            <asp:TextBox ID="DOB" runat="server" TextMode="Date" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
            <p style="margin-bottom:0px">Graduation Date</p>
            <asp:TextBox ID="gradDate" runat="server" TextMode="Date" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
        </div>
        <div>
            <p style="margin-bottom:0px">Social Insurance Number (SIN) / Descriptions du matériel</p>
            <asp:TextBox ID="sin" runat="server" style="margin-bottom: 5px" BackColor="#F6F6F6"></asp:TextBox>
            <p style="margin-bottom:0px">Prior Bankruptcy?</p>
            <asp:DropDownList ID="bankruptcy" runat="server" style="margin-bottom: 5px" BackColor="#F6F6F6">
               <asp:ListItem></asp:ListItem>
               <asp:ListItem>No</asp:ListItem>
               <asp:ListItem>Yes</asp:ListItem>
            </asp:DropDownList>
        </div>
    </asp:Panel>

    <div class="col-xs-12 col-lg-7">
        <h2 style="font-family: 'Arial Rounded MT Bold'">Please print, sign and upload the following authorization statement</h2>
    
        <p>
            Collection, Use and Disclosure of Personal Information
            In connection with an application for credit, DLL intends to conduct a personal investigation of the undersigned applicant(s), 
            co-applicant(s) and/or guarantor(s), in accordance with DLL’s Privacy Policy and Canada’s Personal Information Protection and Electronic Documents Act.    
            By executing this document, the undersigned: (a) acknowledges and understands that DLL’s Privacy Policy is available for review online as document 
            number 323C98S at www.seemyterms.com and may be amended from time to time; (b) consents to DLL obtaining, collecting, using, disclosing, investigating, 
            retaining or exchanging his or her personal information (as defined in DLL’s Privacy Policy) for the purpose of assessing credit worthiness in connection 
            with financing transactions, making decisions about credit applications, monitoring, evaluating, servicing and collecting on the accounts established 
            to the granting of such credit and responding to inquiries about credit applications, the undersigned, and relevant accounts and files; 
            (c) consents to DLL establishing and maintaining a file of personal information and acknowledges that DLL may retain any personal information obtained 
            as a part of the application process whether or not the requested credit is granted; (d) authorizes DLL to conduct a personal investigation of 
            the undersigned, including the investigation of credit records, obtaining consumer credit reports, obtaining any other available reports concerning the
            credit history of the undersigned and contacting any references and any current or former employers of the undersigned; (e) authorizes and instructs any 
            reference and any current or former employer to release information to DLL as requested by DLL; (f) consents to DLL disclosing consumer and other credit 
            information in accordance with DLL’s Privacy Policy to credit reporting agencies, credit bureaus and any other person or entity with whom the undersigned 
            has or have had a financial relationship at any time that any credit granted as a result of this application remains unpaid; and (g) confirms that the 
            information provided to DLL (including electronically in an electronic application for credit, a copy of which has been received by the undersigned) is 
            true and correct and given for the purposes of obtaining credit from DLL.
        </p>
        <h2 style="font-family: 'Arial Rounded MT Bold'">Veuillez imprimer, signer et télécharger la déclaration d'autorisation suivante</h2>
        <p>
            Cueillette, utilisation, et divulgation, de renseignements personnels
            Dans le cadre d'une demande de crédit, DLL compte mener une enquéte personnelle sur le ou les demandeurs et codemendeurs soussignés et/ou la ou les documents
            électroniques du Canda. En signant le présent document, le soussigné: a) reconnaît et comprend que la Politique de confidentialité de DLL peut être consultée
            en ligne aux fins d'examen (document numéro 324G95B) à l'adresse www.seemyterms.com et peut ètre modifiée de temps à autre; b) consent à ce que DLL obtienne,
            recueille, utilise, divulgue, conserve ou communique les renseignements personnels le concernant (au sens donné à ce terme dans la Politique 
            de confidentialité de DLL), et fasse des enquêtes à propos de ces renseignments, aux fins d'évaluation de la solvabilité dans le cadre d'opérations 
            de crédit, de la prise de décision concernant les demandes de crédit, de la surveillance, de l'évaluation, de la prestation de services et de la perception 
            sur les comptes établis à l'aattribution de ce crédit, et de la réponse aux demandes de renseignements sur les demandes de crédit, sur lemsoussigné et sur 
            les comptes et dossiers pertinents; c) consent à ce que DLL établisse et tienne à jour un dossier de renseignments personnels et reconnaît que DLL peut 
            conserver tous les renseignments personnels obtenus dans le cadre du traitement de la demande, que le crédit demandé soit ou non censenti; d) autorise
            DLL à mener une enquête personnelle sur le soussigné, notamment l'enquête sur les dossiers de crédit, l'obtention des rapports de solvabilité, l'obtention
            de tout autre rapport disponible concernant les antécédents de crédit du soussigné et la communication avec les références et les employeurs actuels ou
            antérierurs du soussigné; e) autorise les références et les employeurs actuels ou antérieurs à divulguer les renseignements à DLL, tel que le demande DLL, 
            et leur donne comme directive de divulguer ces renseignements; f) consent à ce que DLL divulgue des renseignements sur le consommateur et d'autres 
            renseignements de crédit conformément à la Politique de confidentialité de DLL aux agences d'évaluation du crédit, aux bureaux de crédit et aux autres 
            personnes ou entités avec lesquelles le soussigné a ou a eu une relation financiére à un moment quelconque où un crédit a été consenti par suite de cette 
            demande et demeure impayé; et g) confirme que las renseignements fournis à DLL (y compris par voie électronique dans une demande de crédit électronique, 
            dont une copie a été reç par le soussigné) sont véridiques et exacts et sont remis aux fins de l'obtention du crédit auprés de DLL.

        </p>
        <p style="margin-bottom:0px">Signature:</p>
            <asp:TextBox class="signature1" ID="signature1" runat="server" Font-Size="Large" Visible="True" style="margin-bottom: 5px" Width="378px" Font-Names="Dancing Script" BackColor="#F6F6F6" OnTextChanged="signature1_TextChanged" Height="87px"></asp:TextBox>
        <p style="margin-bottom:0px">Name/Nom</p>
            <asp:TextBox ID="printedName" runat="server" style="margin-bottom: 5px" BackColor="#F6F6F6" Width="378px"></asp:TextBox>
        <p style="margin-bottom:0px">Title/Titre</p>
            <asp:TextBox ID="printedTitle" runat="server" style="margin-bottom: 5px" BackColor="#F6F6F6" Width="378px"></asp:TextBox><br/>
    </div>
        <table cellpadding="3px" cellspacing="3px">
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnGeneratePDF" runat="server" Text="Generate PDF" OnClick="btnGeneratePDF_Click" style="height: 26px"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    <asp:HyperLink ID="urlPDF" runat="server" Visible="False" Target="_blank">[urlPDF]</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br /><br /><br />
                    <asp:FileUpload ID="fileUpload" runat="server" Visible="False" Width="250px" />                                        
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnEmail" runat="server" Visible="False" Text="Email PDF" OnClick="btnEmail_Click" />
                </td>
            </tr>
        </table>           
    </div>
    </form>
</body>
</html>
