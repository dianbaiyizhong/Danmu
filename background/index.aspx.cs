using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLibrary;

public partial class background_index : System.Web.UI.Page
{


    public List<User> list ;
    protected void Page_Load(object sender, EventArgs e)
    {
        UserDao uDao = new UserDao();


        list = uDao.getAllUsers();
    }
}