using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MySql.Data.MySqlClient;
using DBLibrary;
namespace DBLibrary
{
    public class UserDao
    {

        public Boolean isExist(User user)
        {


            DB_Dao dbDao = new DB_Dao();
            String sqlSearch = "select * from user where username = '" + user.Username +"' and psw = '"+user.Password+"'";

          

            MySqlDataReader reader = dbDao.getReader(sqlSearch);


            while (reader.Read())
            {
                return true;

            }

            return false;


        }


        public List<User> getAllUsers()
        {
             List<User> list = new List<User>();
            DB_Dao dbDao = new DB_Dao();

            String sql = "select * from user";

            MySqlDataReader reader = dbDao.getReader(sql);


            while (reader.Read())
            {
                User user = new User();

                user.Id = reader.GetString("id");
                user.Username = reader.GetString("username");
                user.Password = reader.GetString("psw");
                user.Nickname = reader.GetString("nickname");
                list.Add(user);

            }


            return list;

        }


        public User getUserById(String id)
        {
            DB_Dao dbDao = new DB_Dao();

            String sql = "select * from user where id="+id;

            MySqlDataReader reader = dbDao.getReader(sql);

             User user = new User();
            while (reader.Read())
            {
               

               user.Id = reader.GetString("id");
                user.Username = reader.GetString("username");

                user.Password = reader.GetString("psw");
                user.Nickname = reader.GetString("nickname");

            }

            return user;



        }

        public Boolean UpdateUser(String sql)
        {



            MySqlConnection mysql = DBConn.getMySqlCon();
            MySqlCommand mySqlCommand = DBConn.getSqlCommand(sql, mysql);
            mysql.Open();


            DBConn.getUpdate(mySqlCommand);
            mysql.Close();


            return true;
            


        }





        public Boolean AddUser(String sql)
        {



            MySqlConnection mysql = DBConn.getMySqlCon();
            MySqlCommand mySqlCommand = DBConn.getSqlCommand(sql, mysql);
            mysql.Open();


            DBConn.getInsert(mySqlCommand);
            mysql.Close();


            return true;



        }











        public Boolean DeleteUserById(String id)
        {
            MySqlConnection mysql = DBConn.getMySqlCon();
            String sql = "delete from user where id =" + id;

            System.Diagnostics.Debug.WriteLine(sql);
            MySqlCommand mySqlCommand = DBConn.getSqlCommand(sql, mysql);
            mysql.Open();


            DBConn.getUpdate(mySqlCommand);
            mysql.Close();
            return true;
            
        }


    }
}
