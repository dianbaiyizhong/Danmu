using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBLibrary;
public partial class background_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_resister_Click(object sender, EventArgs e)
    {

        String username = tb_username.Text.ToString();
        String password = tb_pwd.Text.ToString();

        UserDao udao = new UserDao();


        String sql = "insert into user (username,psw) values ('" + username + "','" + password + "')";



        udao.AddUser(sql);


        Response.Redirect("index.aspx");




    }
}