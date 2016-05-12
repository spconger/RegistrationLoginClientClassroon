using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        Login();
    }

    protected void Login()
    {
        RegisterServiceReference.LoginServiceClient rs =
            new RegisterServiceReference.LoginServiceClient();
        int key = rs.ReviewerLogin(userTextBox.Text, passwordTextBox.Text);
        if(key != 0)
        {
            ErrorLabel.Text = "Welcome";
            Session["Userkey"] = key;
        }
        else
        {
            ErrorLabel.Text = "Invalid Login";
        }

    }

}