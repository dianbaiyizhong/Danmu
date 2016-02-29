using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3dplayer : System.Web.UI.Page
{

    public String video_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        video_id = Request.QueryString["video_id"];
    }
}