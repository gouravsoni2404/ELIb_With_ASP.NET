using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Elib.businesslogic
{
    public class User
    {
        #region Variables
        /// <summary>The full name</summary>
        private long _id = int.MinValue;
        private string _fullName = string.Empty;
        private DateTime _dob = DateTime.MinValue;
        private string _contactNo = string.Empty;
        private string _emailId = string.Empty;
        private string _state = string.Empty;
        private string _city = string.Empty;
        private int _pinCode = int.MinValue;
        private string _fullAddress = string.Empty;
        private string _userName = string.Empty;
        private string _password = string.Empty;
        private AccountStatus _accountStatus;
        #endregion

        #region Properties
        public long Id { get => _id; set => _id = value; }
        public string FullName { get => _fullName; set => _fullName = value; }
        public DateTime Dob { get => _dob; set => _dob = value; }
        public string ContactNo { get => _contactNo; set => _contactNo = value; }
        public string EmailId { get => _emailId; set => _emailId = value; }
        public string State { get => _state; set => _state = value; }
        public string City { get => _city; set => _city = value; }
        public int PinCode { get => _pinCode; set => _pinCode = value; }
        public string FullAddress { get => _fullAddress; set => _fullAddress = value; }
        public string UserName { get => _userName; set => _userName = value; }
        public string Password { get => _password; set => _password = value; }
        public AccountStatus AccountStatus { get => _accountStatus; set => _accountStatus = value; }

        #endregion

        #region Constructor
        public User(string fullName, DateTime dob, string contactNo, string emailId, string state, string city, int pinCode, string fullAddress, string userName, string pssword)
        {
            _fullName = fullName;
            _dob = dob;
            _contactNo = contactNo;
            _emailId = emailId;
            _state = state;
            _city = city;
            _pinCode = pinCode;
            _fullAddress = fullAddress;
            _userName = userName;
            _password = pssword;
            _accountStatus = AccountStatus.Pending;
        }

        /// <summary>Fill the details from data row.</summary>
        /// <param name="dRow">The d row.</param>
        public User(DataRow dRow)
        {
            _fullName = dRow[Constraints.FULLNAME_COLNAME].ToString();
            _dob = Convert.ToDateTime(dRow[Constraints.DOB_COLNAME]);
            _contactNo = dRow[Constraints.CONTACTNO_COLNAME].ToString();
            _emailId = dRow[Constraints.EMAILID_COLNAME].ToString();
            _state = dRow[Constraints.STATE_COLNAME].ToString();
            _pinCode = Convert.ToInt32(dRow[Constraints.PINCODE_COLNAME].ToString());
            _fullAddress = dRow[Constraints.FULLADDRESS_COLNAME].ToString();
            _userName = dRow[Constraints.USERNAME_COLNAME].ToString();
            _password = dRow[Constraints.PASSWORD_COLNAME].ToString();
            _accountStatus = (AccountStatus)Enum.ToObject(typeof(AccountStatus), Convert.ToInt32(dRow[Constraints.ACCOUNTSTATUS_COLNAME].ToString()));
        }

        #endregion
    }
}