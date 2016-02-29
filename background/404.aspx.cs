using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class background_404 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        String username = Request.QueryString["username"];

        lal_user.Text = username;

    }
}