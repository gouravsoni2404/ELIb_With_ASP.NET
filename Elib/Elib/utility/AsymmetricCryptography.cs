using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace Elib.utility
{
    public static class AsymmetricCryptography
    {
        private static string _publicKey = string.Empty;
        private static string _privateKey = string.Empty;
        static AsymmetricCryptography()
        {
            using (RSACryptoServiceProvider rsa = new RSACryptoServiceProvider())
            {
                _publicKey = rsa.ToXmlString(false); // false to get the public key   
                _privateKey = rsa.ToXmlString(true); // true to get the private key   
            }
        }
        public static string EncryptText(string text)
        {
            byte[] dataToEncrypt = Encoding.ASCII.GetBytes(text);
            byte[] encryptedData;

            using (RSACryptoServiceProvider rsa = new RSACryptoServiceProvider())
            {
                rsa.FromXmlString(_publicKey);  
                encryptedData = rsa.Encrypt(dataToEncrypt, false);
            }

            return Encoding.ASCII.GetString(encryptedData);
        }

        public static string DecryptText(string text)
        {
            
            byte[] dataToDecrypt = Encoding.ASCII.GetBytes(text);  
            byte[] decryptedData;

            using (RSACryptoServiceProvider rsa = new RSACryptoServiceProvider())
            {  
                rsa.FromXmlString(_privateKey);
                decryptedData = rsa.Decrypt(dataToDecrypt, false);
            }   
            return Encoding.ASCII.GetString(decryptedData);
        }
    }
}