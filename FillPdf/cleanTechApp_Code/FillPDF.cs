using iTextSharp.text.pdf;
using System;
using System.IO;
using System.Web.Configuration;

namespace FillPdf.cleanTechApp_Code
{
    public class FillPDF
    {
        public static string CreatePDF(string text1, string text2, string text3, string text4, string text5, string text6, string text7, string text8, string text9,
            string text10, string text11, string text12, string text13, string text14, string text15, string text16, string text17)
        {
            
            string PdfTemplates = "";
            string PdfTarget = "";
            string newFileName = string.Format(@"{0}.pdf", DateTime.Now.Ticks);

            try
            {
                PdfTemplates = WebConfigurationManager.AppSettings["PdfTemplates"];
                PdfTarget = WebConfigurationManager.AppSettings["PdfTarget"];

                // Run clean-up to delete old PDFs
                DirectoryInfo d = new DirectoryInfo(PdfTarget);
                foreach (FileInfo f in d.GetFiles())
                {
                    if (f.CreationTime.AddHours(1) < DateTime.Now)
                        File.Delete(f.FullName);
                }

                // https://sourceforge.net/projects/itextsharp/
                
                PdfReader pdfReader = new PdfReader(PdfTemplates + "template2.pdf");
                PdfStamper pdfStamper = new PdfStamper(pdfReader, new FileStream(PdfTarget + newFileName, FileMode.Create));
                AcroFields pdfFormFields = pdfStamper.AcroFields;

                pdfFormFields.SetField("text1", text1);
                pdfFormFields.SetField("text2", text2);
                pdfFormFields.SetField("text3", text3);
                pdfFormFields.SetField("text4", text4);
                pdfFormFields.SetField("text5", text5);
                pdfFormFields.SetField("text6", text6);
                pdfFormFields.SetField("text7", text7);
                pdfFormFields.SetField("text8", text8);
                pdfFormFields.SetField("text9", text9);
                pdfFormFields.SetField("text10", text10);
                pdfFormFields.SetField("text11", text11);
                pdfFormFields.SetField("text12", text12);
                pdfFormFields.SetField("text13", text13);
                pdfFormFields.SetField("text14", text14);
                pdfFormFields.SetField("text15", text15);
                pdfFormFields.SetField("text16", text16);
                pdfFormFields.SetField("text17", text17);

                pdfStamper.FormFlattening = true;

                // close the pdf
                pdfStamper.Close();

                return newFileName;

            } catch (Exception ex)
            {
                return ex.Message;
            }
            
        }

        internal static string CreatePDF(object text1, object text2, object text3, object text4, object text5, object text6, object text7, object text8, object text9, object text10, object text11, object text12, object text13, object text14, object text15, object text16, object text17)
        {
            throw new NotImplementedException();
        }
    }
}