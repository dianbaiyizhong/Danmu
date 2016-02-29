using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLibrary;


public partial class background_editUser : System.Web.UI.Page
{


    public User user;
    protected void Page_Load(object sender, EventArgs e)
    {
     //   btn_delete.Attributes.Add("onclick", "javascript:return window.confirm('您确定要删除该项吗?')");

        if (!IsPostBack)
        {



            String id = Request.QueryString["id"];
            UserDao uDao = new UserDao();
            user = uDao.getUserById(id);
            tb_username.Text = user.Username;
            tb_nickname.Text = user.Nickname;
            tb_id.Text = user.Id;


        }
        else
        {
            


        }
       

        



    }

    protected void save_click(object sender, EventArgs e)
    {

        String nickname = tb_nickname.Text.ToString();
        String id = tb_id.Text.ToString();

 


        String sql = "update user set nickname = ('" + nickname + "') where id=" + id;


        System.Diagnostics.Debug.WriteLine(sql);
        UserDao uDao = new UserDao();

        uDao.UpdateUser(sql);


       

    }






       protected void submit_Click(object sender, EventArgs e)
       {
           String password = tb_password.Text.ToString();

           String id = tb_id.Text.ToString();

           String sql = "update user set psw = ('" + password + "') where id=" + id;


         
           UserDao uDao = new UserDao();

           uDao.UpdateUser(sql);
       }
    
       protected void bt_delete_Click(object sender, EventArgs e)
       {
          
           String id = tb_id.Text.ToString();
         
           UserDao uDao = new UserDao();

           uDao.DeleteUserById(id);

           Response.Redirect("index.aspx");

       }
}