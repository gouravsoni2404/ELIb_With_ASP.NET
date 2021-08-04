using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Elib.controller
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    namespace Prana.BusinessObjects
    {
        [Serializable]
        class BasicOrderInfo
        {
            private string _symbol = string.Empty;
            public string Symbol
            {
                get { return _symbol; }
                set { _symbol = value; }
            }
            private int _auecID;
            public int AUECID
            {
                get { return _auecID; }
                set { _auecID = value; }
            }

            private int _level1ID;
            public int Level1ID
            {
                get { return _level1ID; }
                set { _level1ID = value; }
            }

            private double _avgPrice = 0;
            public double AvgPrice
            {
                get { return _avgPrice; }
                set { _avgPrice = value; }
            }


            private double _quantity = 0;
            public virtual double Quantity
            {
                get { return _quantity; }
                set { _quantity = value; }
            }

            private double _contractMultiplier = 0.0;

            protected double ContractMultiplier
            {
                get { return _contractMultiplier; }
                set { _contractMultiplier = value; }
            }


            private double _secFee;

            public BasicOrderInfo(string symbol, int auecID, int level1ID, double avgPrice, double quantity, double contractMultiplier)
            {
                _symbol = symbol;
                _auecID = auecID;
                _level1ID = level1ID;
                _avgPrice = avgPrice;
                _quantity = quantity;
                _contractMultiplier = contractMultiplier;
                _secFee = 0.0;
            }

            public double SecFee
            {
                get { return _secFee; }
                set { _secFee = value; }
            }
        }
    }

}