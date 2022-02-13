using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bai18
{
    public class User
    {
        private string username;
        private string password;

        public User()
        {
        }

        public User(string username, string password)
        {
            this.username = username;
            this.password = password;
        }

        public string UserName
        {
            get
            {
                return this.username;
            }
            set
            {
                this.username = value;
            }
        }

        public string Password
        {
            get
            {
                return this.password;
            }
            set
            {
                this.password = value;
            }
        }
    }
}