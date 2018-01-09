using System;
using System.Web.Configuration;
using System.Net.Mail;
using System.Net;


namespace FillPdf
{
    public partial class _cleanTechApp : System.Web.UI.Page
    {
 

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGeneratePDF_Click(object sender, EventArgs e)
        {
            String strResponse = FillPdf.cleanTechApp_Code.FillPDF.CreatePDF(name.Text, streetNumber.Text, streetName.Text, city.Text, province.Text, postal.Text, country.Text,
                yearsAddress.Text, yearsBusiness.Text, phone.Text, website.Text, supplierName.Text, description.Text, cost.Text, term.Text, TextBox1.Text, TextBox2.Text);
            if (strResponse.Contains(".pdf"))
            {
                urlPDF.Visible = true;
                urlPDF.Text = "Download Form";
                urlPDF.NavigateUrl = WebConfigurationManager.AppSettings["PdfUrlLocation"] + "/" + strResponse;

                fileUpload.Visible = true;
                btnEmail.Visible = true;

            }
            else
            {
                lblMessage.Text = FillPdf.cleanTechApp_Code.FillPDF.CreatePDF(name.Text, streetNumber.Text, streetName.Text, city.Text, province.Text, postal.Text, country.Text,
                yearsAddress.Text, yearsBusiness.Text, phone.Text, website.Text, supplierName.Text, description.Text, cost.Text, term.Text, TextBox1.Text, TextBox2.Text);
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }

        }

        protected void btnEmail_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress(WebConfigurationManager.AppSettings["FromEmail"]);
                msg.To.Add(WebConfigurationManager.AppSettings["ToEmail"]);
                msg.Subject = "Application Upload";
                msg.Body = "<p>An application has been submitted.<br/><br/><b>~ Matt's Super Awesome Portal</b></p>";
                msg.IsBodyHtml = true;

                if (fileUpload.HasFile)
                {
                    msg.Attachments.Add(new Attachment(fileUpload.PostedFile.InputStream, fileUpload.FileName));
                }

                SmtpClient smt = new SmtpClient();
                smt.Host = "smtpout.secureserver.net";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "jared@knisley.info"; //Your Email ID  
                ntwd.Password = "KniPass@2017"; // Your Password  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 25;
                smt.EnableSsl = false;
                smt.Send(msg);
                lblMessage.Text = "Email Sent Successfully";
                lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }

        }

        protected void cost_TextChanged(object sender, EventArgs e)
        {

        }

        protected void term_TextChanged(object sender, EventArgs e)
        {

        }

        protected void signature2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void lastName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}