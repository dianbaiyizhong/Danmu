using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Serialization.Json;
public partial class player : System.Web.UI.Page
{
    protected string video_id = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    
        video_id = Request.QueryString["video_id"];






        

    }



   
}