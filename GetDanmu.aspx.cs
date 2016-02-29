using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Runtime.Serialization.Json;
using System.ServiceModel.Web;///记得引用这个命名空间
using DBLibrary;
using System.IO;
using System.Text;
public partial class GetTanmu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String video_id = Request.QueryString["video_id"];

        if (video_id==null)
        {

            return;
         }
        

        MySqlConnection mysql = DBConn.getMySqlCon();

        String sqlSearch = "select * from bulletscreen where video_id = " + video_id;
        MySqlCommand mySqlCommand = DBConn.getSqlCommand(sqlSearch, mysql);
        mysql.Open();
        MySqlDataReader reader = DBConn.getResultset(mySqlCommand);

        
        List<BulletScreen> list = new List<BulletScreen>();
        while (reader.Read())
        {
            if (reader.HasRows)
            {
                BulletScreen bs = new BulletScreen();

   
           
              
                bs.position = reader.GetString("position");
                bs.size = reader.GetString("size");
                bs.text = reader.GetString("text");
                bs.time = reader.GetString("time");
                bs.color = reader.GetString("color");
               
                
                
                list.Add(bs);

           


            }
        }


        String json = "[";

        for (int i = 0; i < list.Count;i++ )
        {
            String json1 = "'"+GetJson(list[i])+"'";
            json = json + json1;
            json = json + ",";

        }

        json = json + "]";
       // String json = GetJson<List<BulletScreen>>(list);




       // String json1 = "['{ \"text\":\"222222\" , \"color\":\"red\" ,\"size\":\"1\",\"position\":\"0\",\"time\":10}','{ \"text\":\"6666\" , \"color\":\"red\" ,\"size\":\"1\",\"position\":\"0\",\"time\":20}','{ \"text\":\"我是大茄子\" , \"color\":\"red\" ,\"size\":\"1\",\"position\":\"0\",\"time\":25}']";


        //String json = "[";
        //json = json
        //        + "'{ \"text\":\"ssssaaaaass\" , \"color\":\"red\" ,\"size\":\"1\",\"position\":\"0\",\"time\":60,\"id\":1}',";

        //json = json
        //        + "'{ \"text\":\"33331\" , \"color\":\"red\" ,\"size\":\"1\",\"position\":\"0\",\"time\":20}',";
        //json = json
        //        + "'{ \"text\":\"dd\" , \"color\":\"red\" ,\"size\":\"1\",\"position\":\"0\",\"time\":25}'";
        //json = json + "]";


        Response.Write(json);
    }





    public static string GetJson<T>(T obj)
    {
        //记住 添加引用 System.ServiceModel.Web 
        /**
         * 如果不添加上面的引用,System.Runtime.Serialization.Json; Json是出不来的哦
         * */
        DataContractJsonSerializer json = new DataContractJsonSerializer(typeof(T));
        using (MemoryStream ms = new MemoryStream())
        {
            json.WriteObject(ms, obj);
            string szJson = Encoding.UTF8.GetString(ms.ToArray());


        


            return szJson;
        }
    }



  









}