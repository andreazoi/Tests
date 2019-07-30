using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.Web;


namespace studentlist
{
    public partial class Login : System.Web.UI.Page
    {
        public object ConfigurationManager { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null)
            {
                UserName.Text = Request.Cookies["UNAME"].Value;
                Password.Attributes["value"] = Request.Cookies["PWD"].Value;
                // CheckBox1.Checked = true;
                Response.Cache.SetExpires(DateTime.Now.AddSeconds(6000));
                Response.Cache.VaryByParams["None"] = true;
                Response.Cache.SetCacheability(HttpCacheability.ServerAndPrivate);

            }
        }
        //code for sgin in
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string encryptedPassword = GetSwcSH1(Password.Text.ToString().Trim());
                // string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(Password.Text, "SHA1");
                SqlParameter parameter0 = new SqlParameter();
                parameter0.ParameterName = "@aname";
                parameter0.Value = UserName.Text.ToString().Trim();
                SqlParameter parameter1 = new SqlParameter();
                parameter1.ParameterName = "@apass";
                parameter1.Value = Password.Text.ToString().Trim();
                DataSet dt = commancode.GetData("spAuthenticateUserhadi", parameter0, parameter1);
               
                    if (dt.Tables[0].Rows.Count != 0)
                    {
                        //code for checking cookies data
                        if (CheckBox1.Checked)
                        {
                            Response.Cookies["UNAME"].Value = UserName.Text;
                            Response.Cookies["PWD"].Value = Password.Text;

                            Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                            Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);
                        }
                        else
                        {
                            Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                            Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                        }
                    // string Utype;
                    //Utype = dt.Tables[0].Rows[0][2].ToString().Trim();
                    //string Userid;
                    //Userid = dt.Tables[0].Rows[0][0].ToString();
                    //code for checking user type
                    Session["USERNAME"] = dt.Tables[0].Rows[0]["aname"];
                     
                        
                    string Id=dt.Tables[0].Rows[0]["id"].ToString().Trim();
                    Session["id"] = Id;
                    Response.Redirect("StudentsList.aspx");
                     }
                    else
                    {

                        Labelmassage.Enabled = true;
                        Labelmassage.Text = "Invalid Username or Password !";
                    }
                
            }
        }
        public static string GetSwcSH1(string Password)
        {


            System.Security.Cryptography.SHA1 algorithm = SHA1.Create();
            byte[] data = algorithm.ComputeHash(Encoding.UTF8.GetBytes(Password));
            string sh1 = "";
            for (int i = 0; i < data.Length; i++)
            {
                sh1 += data[i].ToString("x2").ToUpperInvariant();
            }
            return sh1;
        }
    }
}

