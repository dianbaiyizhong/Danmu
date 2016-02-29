using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLibrary;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



        String email = Request.Form["email"];
        String password = Request.Form["password"];

        if (email == null && password==null)
        {
            return;

        }


        UserDao uDao = new UserDao();
        User user = new User();
        user.Username = email;
        user.Password=password;

        
            if (uDao.isExist(user))
            {

                Response.Redirect("index.aspx");


            }
            else
            {

                Response.Redirect("background/404.aspx?username=" + user.Username);
                

            }
           
     

       

      
    
      
    }

}