using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentlist
{
    public partial class editStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                TextBoxstudentCode.Text = Request.QueryString["Id"];
                TextBoxStudent.Text = Request.QueryString["name"];
                TextBoxsurname.Text = Request.QueryString["surname"];
                TextBoxuemail.Text = Request.QueryString["email"];
                TextBoxphone.Text = Request.QueryString["phone_number"];
                TextBoxregistrationYear.Text = Request.QueryString["registrationYear"];
                TextBoxUserspecialty.Text = Request.QueryString["specialty"];
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
            
                SqlParameter parameter = new SqlParameter();
                parameter.ParameterName = "@Action";
                parameter.Value = "Update";
                SqlParameter parameter5 = new SqlParameter();
                parameter5.ParameterName = "@studentCode";
                parameter5.Value = TextBoxstudentCode.Text.ToString();
                SqlParameter parameter7 = new SqlParameter();
                parameter7.ParameterName = "@surname";
                parameter7.Value = TextBoxsurname.Text.ToString();
                SqlParameter parameter12 = new SqlParameter();
                parameter12.ParameterName = "@name";
                parameter12.Value = TextBoxStudent.Text.ToString();
                SqlParameter parameter8 = new SqlParameter();
                parameter8.ParameterName = "@email";
                parameter8.Value = TextBoxuemail.Text.ToString();
                SqlParameter parameter9 = new SqlParameter();
                parameter9.ParameterName = "@phone_number";
                parameter9.Value = TextBoxphone.Text.ToString();
                SqlParameter parameter10 = new SqlParameter();
                parameter10.ParameterName = "@registrationYear";
                parameter10.Value = TextBoxregistrationYear.Text.ToString();
                SqlParameter parameter11 = new SqlParameter();
                parameter11.ParameterName = "@specialty";
                parameter11.Value = TextBoxUserspecialty.Text.ToString();

                commancode.GetData("Sp_Getstudents", parameter, parameter5, parameter7, parameter12, parameter8, parameter9, parameter10, parameter11);
                Labelmassage.Text = "Successfully update";
            }
            catch (Exception)
            {

                Labelmassage.Text = "Not Update try again";
            }












        }
    }
}