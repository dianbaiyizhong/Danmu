using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DBLibrary
{
     


    public class User
    {
        private String id;

        private String nickname;

        public String Nickname
        {
            get { return nickname; }
            set { nickname = value; }
        }
        public String Id
        {
            get { return id; }
            set { id = value; }
        }
        private String username;

        public String Username
        {
            get { return username; }
            set { username = value; }
        }
        private String password;

        public String Password
        {
            get { return password; }
            set { password = value; }
        }
    }
}
