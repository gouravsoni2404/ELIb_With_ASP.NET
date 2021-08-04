using Elib.businesslogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Elib.utility;

namespace Elib.controller
{
    public class ElibManager
    {
        private static ElibManager _instance = null;
        public static ElibManager Instance
        {
            get {
                if (_instance == null)
                    _instance = new ElibManager();
                return _instance;
            }
        }
        public bool SaveUserDetails(User user)
        {
            bool result = false;
            user.Id = NumberConversion.Radix64toint(user.UserName);
            if (!DataBaseManager.IsUserNameOccupied(user.Id))
            {
                user.Password = AsymmetricCryptography.EncryptText(user.Password);
                result = DataBaseManager.SaveUserDetails(user);
            }
            return result;
        }

        public bool IsUserExists(string userName, string password)
        {
            long userNameId = NumberConversion.Radix64toint(userName);
            string passwordEncryptedTxt = AsymmetricCryptography.DecryptText(password);
            if (DataBaseManager.IsUserExists(userNameId, passwordEncryptedTxt))
                return true;
            return false;
        }
    }
}