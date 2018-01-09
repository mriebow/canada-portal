using iTextSharp.text.pdf;
using System;
using System.IO;
using System.Web.Configuration;

namespace FillPdf.App_Code
{
    public class FillPDF
    {
        public static string CreatePDF(string txt1, string txt2, string txt3, string txt4, string txt5, string txt6, string txt7, string txt8, string txt9,
            string txt10, string txt11, string txt12, string txt13, string txt14, string txt15, string txt16, string txt17, string txt18, string txt19,
            string txt20, string txt21, string txt22, string txt23, string txt24, string txt25, string date1_af_date, string date2_af_date, string txt28, string dropDown1,
            string txt29, string txt30)
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
                
                PdfReader pdfReader = new PdfReader(PdfTemplates + "template.pdf");
                PdfStamper pdfStamper = new PdfStamper(pdfReader, new FileStream(PdfTarget + newFileName, FileMode.Create));
                AcroFields pdfFormFields = pdfStamper.AcroFields;

                pdfFormFields.SetField("text1", txt1);
                pdfFormFields.SetField("text2", txt2);
                pdfFormFields.SetField("text3", txt3);
                pdfFormFields.SetField("text4", txt4);
                pdfFormFields.SetField("text5", txt5);
                pdfFormFields.SetField("text6", txt6);
                pdfFormFields.SetField("text7", txt7);
                pdfFormFields.SetField("text8", txt8);
                pdfFormFields.SetField("text9", txt9);
                pdfFormFields.SetField("text10", txt10);
                pdfFormFields.SetField("text11", txt11);
                pdfFormFields.SetField("text12", txt12);
                pdfFormFields.SetField("text13", txt13);
                pdfFormFields.SetField("text14", txt14);
                pdfFormFields.SetField("text15", txt15);
                pdfFormFields.SetField("text16", txt16);
                pdfFormFields.SetField("text17", txt17);
                pdfFormFields.SetField("text18", txt18);
                pdfFormFields.SetField("text19", txt19);
                pdfFormFields.SetField("text20", txt20);
                pdfFormFields.SetField("text21", txt21);
                pdfFormFields.SetField("text22", txt22);
                pdfFormFields.SetField("text23", txt23);
                pdfFormFields.SetField("text24", txt24);
                pdfFormFields.SetField("text25", txt25);
                pdfFormFields.SetField("date1_af_date", date1_af_date);
                pdfFormFields.SetField("date2_af_date", date2_af_date);
                pdfFormFields.SetField("text28", txt28);
                pdfFormFields.SetField("dropdown1", dropDown1);
                pdfFormFields.SetField("text29", txt29);
                pdfFormFields.SetField("text30", txt30);

                pdfStamper.FormFlattening = true;

                // close the pdf
                pdfStamper.Close();

                return newFileName;

            } catch (Exception ex)
            {
                return ex.Message;
            }
            
        }
                
    }
}