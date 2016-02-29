using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MySql.Data.MySqlClient;
namespace DBLibrary
{
    public class DB_Dao
    {
        public MySqlDataReader getReader(String sql)
        {

             MySqlConnection mysql = DBConn.getMySqlCon();


             MySqlCommand mySqlCommand = DBConn.getSqlCommand(sql, mysql);
             mysql.Open();
             MySqlDataReader reader = DBConn.getResultset(mySqlCommand);

             return reader;


        }


       



    }
}
