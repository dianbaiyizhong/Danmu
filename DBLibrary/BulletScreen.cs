using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DBLibrary
{
   public class BulletScreen
    {


       
        private String _text;

        public String text
        {
            get { return _text; }
            set { _text = value; }
        }
        private String _color;

        public String color
        {
            get { return _color; }
            set { _color = value; }
        }
        private String _size;

        public String size
        {
            get { return _size; }
            set { _size = value; }
        }
        private String _position;

        public String position
        {
            get { return _position; }
            set { _position = value; }
        }
        private String _time;

        public String time
        {
            get { return _time; }
            set { _time = value; }
        }
       
    }
}
