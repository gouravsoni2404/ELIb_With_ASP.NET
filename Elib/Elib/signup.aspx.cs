using Elib.businesslogic;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elib
{
    public partial class signup : System.Web.UI.Page
    {
        string connectionStr = System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        /// <summary>Handles the Load event of the Page control.</summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="EventArgs" /> instance containing the event data.</param>
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signupBtn_Click(object sender, EventArgs e)
        {
            try
            {
                DateTime userDob = Convert.ToDateTime(txtDob.Value);
                int userPinCode = Convert.ToInt32(txtPinCode.Value);
                string stateValue = string.Empty;
                if (cmbState.SelectedIndex != 0)
                {
                    stateValue = cmbState.Items[cmbState.SelectedIndex].Value;
                }
                User user = new User(txtFullName.Value, userDob, txtContactNo.Value, txtEmailId.Value, stateValue, txtCity.Value, userPinCode, txtFullAdd.Value, txtUserId.Value, txtUserPassword.Value);
                controller.ElibManager.Instance.SaveUserDetails(user);
            }
            catch (Exception)
            {

            }
        }
    }
}