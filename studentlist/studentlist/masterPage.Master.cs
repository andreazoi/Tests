using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentlist
{
    public partial class masterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] == null && Session["id"] == null)
            {
               // Response.Redirect("~/login.aspx");

            }
            else
            {

                Response.Cache.SetExpires(DateTime.Now.AddDays(6));
                Response.Cache.VaryByParams["None"] = true;
                Response.Cache.SetCacheability(HttpCacheability.ServerAndPrivate);

                LabelName.Text = Session["USERNAME"].ToString();

            }
        }
        //code for sgin out 
        protected void btnSignOut_Click(object sender, EventArgs e)
        {

            Session["USERNAME"] = null;
            Session["type"] = null;

            Session["Id"] = null;
            Response.Redirect("~/login.aspx");
        }

        protected void SiteMapPath1_ItemCreated(object sender, SiteMapNodeItemEventArgs e)
        {
            if (e.Item.ItemType == SiteMapNodeItemType.Root ||
              (e.Item.ItemType == SiteMapNodeItemType.PathSeparator && e.Item.ItemIndex == 1))
            {
                e.Item.Visible = false;
            }

        }
    }
}