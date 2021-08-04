using Elib.businesslogic;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Elib.controller
{
    public class DataBaseManager
    {
        private static string connectionStr = System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        /// <summary>Saves the user details.</summary>
        /// <param name="user">The user.</param>
        /// <returns>
        ///   <br />
        /// </returns>
        internal static bool SaveUserDetails(User user)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionStr))
                {
                    using (var sqlCommand = new SqlCommand { Connection = con, CommandType = CommandType.StoredProcedure })
                    {
                        sqlCommand.CommandText = "P_SaveUserDetails";
                        sqlCommand.Parameters.Add("@Id", SqlDbType.BigInt).Value = user.Id;
                        sqlCommand.Parameters.Add("@UserName", SqlDbType.NChar, 8).Value = user.UserName;
                        sqlCommand.Parameters.Add("@FullName", SqlDbType.NChar, 50).Value = user.FullName;
                        sqlCommand.Parameters.Add("@DOB", SqlDbType.Date).Value = user.Dob;
                        sqlCommand.Parameters.Add("@ContactNo", SqlDbType.NChar, 10).Value = user.ContactNo;
                        sqlCommand.Parameters.Add("@Email", SqlDbType.NChar, 50).Value = user.EmailId;
                        sqlCommand.Parameters.Add("@State", SqlDbType.NChar, 50).Value = user.State;
                        sqlCommand.Parameters.Add("@City", SqlDbType.NChar, 50).Value = user.City;
                        sqlCommand.Parameters.Add("@PinCode", SqlDbType.Int).Value = user.PinCode;
                        sqlCommand.Parameters.Add("@FullAddress", SqlDbType.NChar, 50).Value = user.FullAddress;
                        sqlCommand.Parameters.Add("@Password", SqlDbType.NChar, 50).Value = user.Password;
                        sqlCommand.Parameters.Add("@AccountStatus", SqlDbType.Int).Value = (int)user.AccountStatus;
                        con.Open();
                        sqlCommand.ExecuteScalar();
                        return true;
                    }
                }
            }
            catch (Exception)
            {
                return false;
            }
        }

        internal static bool IsUserNameOccupied(long userNameId)
        {
            bool result = false;
            using (SqlConnection con = new SqlConnection(connectionStr))
            {
                using (var sqlCommand = new SqlCommand { Connection = con, CommandType = CommandType.StoredProcedure })
                {
                    sqlCommand.CommandText = "P_IsUserNameOccupied";
                    sqlCommand.Parameters.Add("@UserNameId", SqlDbType.BigInt).Value = userNameId;
                    var returnParameter = sqlCommand.Parameters.Add("@Result", SqlDbType.Bit).Direction = ParameterDirection.Output;
                    con.Open();
                    sqlCommand.ExecuteNonQuery();
                    result = Convert.ToBoolean(sqlCommand.Parameters["@Result"].Value);
                }
            }
            return result;
        }

        internal static bool IsUserExists(long userNameId, string passwordEncryptedTxt)
        {
            bool result = false;
            using (SqlConnection con = new SqlConnection(connectionStr))
            {
                using (var sqlCommand = new SqlCommand { Connection = con, CommandType = CommandType.StoredProcedure })
                {
                    sqlCommand.CommandText = "P_IsUserExists";
                    sqlCommand.Parameters.Add("@UserNameId", SqlDbType.BigInt).Value = userNameId;
                    sqlCommand.Parameters.Add("@Password", SqlDbType.BigInt).Value = passwordEncryptedTxt;
                    var returnParameter = sqlCommand.Parameters.Add("@Result", SqlDbType.Bit).Direction = ParameterDirection.Output;
                    con.Open();
                    sqlCommand.ExecuteNonQuery();
                    result = Convert.ToBoolean(sqlCommand.Parameters["@Result"].Value);
                }
            }
            return result;

        }
    }
}