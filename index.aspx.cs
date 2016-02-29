using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using MySql.Data.MySqlClient;
using DBLibrary;
using System.Collections.Generic;

public partial class index : System.Web.UI.Page
{
    public List<Video> list = new List<Video>();
    protected void Page_Load(object sender, EventArgs e)
    {



        DB_Dao dbDao = new DB_Dao();
        String sqlSearch = "select * from video";
        MySqlDataReader reader = dbDao.getReader(sqlSearch);


      


        while (reader.Read())
        {
            if (reader.HasRows)
            {
                Video bs = new Video();

                bs.Id = reader.GetString("id");
                bs.Intro = reader.GetString("intro");
                bs.Name = reader.GetString("name");
                bs.Path = reader.GetString("path");
                list.Add(bs);




            }
        }



        
       
        
       

    }
}
