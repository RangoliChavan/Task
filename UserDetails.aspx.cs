using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MODEL;
using BAL;

namespace OtobitTask1
{
    public partial class UserDetails : System.Web.UI.Page
    {
        Model model = new Model();
        Bal bal = new Bal();
       
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt = bal.BindUserIDName();
                //Buisness layer Code
                drpUserId.Items.Clear();
                drpUserId.DataSource = dt;
                drpUserId.DataTextField = "UserId";
                drpUserId.DataValueField = "UserName";
                drpUserId.DataBind();
                drpUserId.Items.Insert(0, "Select");
                drpUserId.SelectedIndex = 0;
            }

        }
        

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            //this is business logic code
            model.UserName = txtUserName.Text;
            model.EMail = txtEMail.Text;
            model.Password = txtPassword.Text;



            int res = bal.SubmitUser(model);
            if (res > 0)
            {
                Response.Write("<script> alert ('Record Save Successfully....')</script>");
            }
            else
            {
                Response.Write("<script> alert ('Error Occured While Performing The Action')</script>");
            }
        }

     
        //Update EMailId
        protected void btnUpdateEmail_Click(object sender, EventArgs e)
        {
            model.UserId = Convert.ToInt32(drpUserId.SelectedIndex);
            model.EMail = txtEMail.Text;


            //Dal layer code
            int res = bal.Update_Data(model);
            if (res > 0)
            {
                Response.Write("<script> alert ('Record Updated Successfully....')</script>");
            }
            else
            {
                Response.Write("<script> alert ('Error Occured While Performing The Action')</script>");
            }
        }
    }
}
