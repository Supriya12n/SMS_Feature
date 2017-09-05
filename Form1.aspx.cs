using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPSnippets.SmsAPI;

public partial class Form1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        SMS.APIType = SMSGateway.Site2SMS;
        SMS.MashapeKey = "4nG7F3xVVjmshZiBmoeOjgEzWFDwp1ZiclMjsniBSIWOEF8ebe";
        SMS.Username = "9920467480";
        SMS.Password = "120809";
        if (txtRecepientNumber.Text.Trim().IndexOf(",") == -1)
        {
            //Single SMS
            SMS.SendSms(txtRecepientNumber.Text.Trim(), txtMessage.Text.Trim());
            txtRecepientNumber.Text = "";
            //txtPassword.Text = "";
            //txtNumber.Text = "";
            txtMessage.Text = "";
        }
        else
        {
            //Multiple SMS
            List<string> numbers = txtRecepientNumber.Text.Trim().Split(',').ToList();
            SMS.SendSms(numbers, txtMessage.Text.Trim());
            Response.Write(lblsend.Text = "SMS Sent Successfully!");
            txtRecepientNumber.Text = "";
            //txtPassword.Text = "";
            //txtNumber.Text = "";
            txtMessage.Text = "";
        }
    }
}