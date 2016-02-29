using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Serialization.Json;
using System.ServiceModel.Web;///记得引用这个命名空间
using DBLibrary;
using System.IO;
using System.Text;
using MySql.Data.MySqlClient;
public partial class SetDanmu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String danmu = Request.Form["danmu"];
        String video_id = Request.QueryString["video_id"];
        BulletScreen bs = ParseFormJson<BulletScreen>(danmu);

        MySqlConnection mysql = DBConn.getMySqlCon();
        String values = "(" + "'" + video_id + "','" + bs.color + "','" + bs.position + "','" + bs.size + "','"
              + bs.text + "','" + bs.time + "')";
        
        String sql = "insert into bulletscreen (video_id,color,position,size,text,time) values " + values;
        MySqlCommand mySqlCommand = DBConn.getSqlCommand(sql, mysql);
        mysql.Open();

        DBConn.getUpdate(mySqlCommand);

        mysql.Close();

       


    }


    public static T ParseFormJson<T>(string szJson)
    {
        T obj = Activator.CreateInstance<T>();
        using (MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(szJson)))
        {
            DataContractJsonSerializer dcj = new DataContractJsonSerializer(typeof(T));
            return (T)dcj.ReadObject(ms);
        }
    }
}