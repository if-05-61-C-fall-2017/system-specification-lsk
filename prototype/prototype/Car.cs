using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prototype
{
    public class Car
    {
        private string _name;
        private int _price;
        private int _horsePower;

        public string Name
        {
            get
            {
                return _name;
            }

            set
            {
                _name = value;
            }
        }

        public int Price
        {
            get
            {
                return _price;
            }

            set
            {
                _price = value;
            }
        }

        public int HorsePower
        {
            get
            {
                return _horsePower;
            }

            set
            {
                _horsePower = value;
            }
        }

        public Car(string name, int price, int horsePower)
        {
            this._name = name;
            this._price = price;
            this._horsePower = horsePower;
        }

        public override string ToString()
        {
            return Name + " " + Price.ToString() +" "+ HorsePower.ToString();
        }
    }
}