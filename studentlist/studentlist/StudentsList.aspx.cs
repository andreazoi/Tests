using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentlist
{
    public partial class StudentsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                int pagesize = Convert.ToInt32(ddlPageSize.SelectedValue);
                //int pageIndex = int.Parse((sender as LinkButton).CommandArgument);
                //int Aid = Convert.ToInt32(Session["id"].ToString().Trim());
                int totalRows = 0;
                GridViewStudents.DataSource =
                    commancode.GetStudents(1, pagesize, "surname ",
                                "ASC", "allrep",  out totalRows);

                GridViewStudents.DataBind();

                DatabindRepeater(1, pagesize, totalRows);


            }

        }




        private void gridbind()
        {



            int pagesize = Convert.ToInt32(ddlPageSize.SelectedValue);
            //int pageIndex = int.Parse((sender as LinkButton).CommandArgument);
           // int Aid = Convert.ToInt32(Session["id"].ToString().Trim());

            int totalRows = 0;
            GridViewStudents.DataSource =
                commancode.GetStudents(1, pagesize, "surname ",
                            "ASC", "allrep",  out totalRows);

            GridViewStudents.DataBind();

            DatabindRepeater(1, pagesize, totalRows);




        }



        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
           // int Aid = Convert.ToInt32(Session["id"].ToString().Trim());

            int pagesize = Convert.ToInt32(ddlPageSize.SelectedValue);
            //int pageIndex = int.Parse((sender as LinkButton).CommandArgument);

            int totalRows = 0;
            //Response.Write("Sort Expression = " + e.SortExpression);
            //Response.Write("<br/>");
            //Response.Write("Sort Direction = " + e.SortDirection.ToString());

            SortDirection sortDirection = SortDirection.Ascending;
            string sortField = string.Empty;

            SortGridview((GridView)sender, e, out sortDirection, out sortField);
            string strSortDirection = sortDirection == SortDirection.Ascending ? "ASC" : "DESC";


            GridViewStudents.DataSource = commancode.GetStudents(1, pagesize, e.SortExpression,
                                strSortDirection, "allrep",  out totalRows);

            GridViewStudents.DataBind();

            DatabindRepeater(1, pagesize, totalRows);


        }

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (GridViewStudents.Attributes["CurrentSortField"] != null && GridViewStudents.Attributes["CurrentSortDirection"] != null)
            {
                if (e.Row.RowType == DataControlRowType.Header)
                {
                    foreach (TableCell tableCell in e.Row.Cells)
                    {
                        if (tableCell.HasControls())
                        {
                            LinkButton sortLinkButton = null;
                            if (tableCell.Controls[0] is LinkButton)
                            {
                                sortLinkButton = (LinkButton)tableCell.Controls[0];
                            }

                            if (sortLinkButton != null && GridViewStudents.Attributes["CurrentSortField"] == sortLinkButton.CommandArgument)
                            {
                                Image image = new Image();
                                if (GridViewStudents.Attributes["CurrentSortDirection"] == "ASC")
                                {
                                    image.ImageUrl = "~/Images/down_arrow.png";
                                }
                                else
                                {
                                    image.ImageUrl = "~/Images/up_arrow.png";
                                }
                                tableCell.Controls.Add(new LiteralControl("&nbsp;"));
                                tableCell.Controls.Add(image);
                            }
                        }
                    }
                }
            }
        }

        private void SortGridview(GridView gridView, GridViewSortEventArgs e, out SortDirection sortDirection, out string sortField)
        {
            sortField = e.SortExpression;
            sortDirection = e.SortDirection;

            if (gridView.Attributes["CurrentSortField"] != null && gridView.Attributes["CurrentSortDirection"] != null)
            {
                if (sortField == gridView.Attributes["CurrentSortField"])
                {
                    if (gridView.Attributes["CurrentSortDirection"] == "ASC")
                    {
                        sortDirection = SortDirection.Descending;
                    }
                    else
                    {
                        sortDirection = SortDirection.Ascending;
                    }
                }

                gridView.Attributes["CurrentSortField"] = sortField;
                gridView.Attributes["CurrentSortDirection"] = (sortDirection == SortDirection.Ascending ? "ASC" : "DESC");
            }
        }

        private void DatabindRepeater(int pageIndex, int pageSize, int totalRows)
        {

            double dblPageCount = (double)((decimal)totalRows / decimal.Parse(ddlPageSize.SelectedValue));
            int pageCount = (int)Math.Ceiling(dblPageCount);
            LabelpageCurrent.Text = Convert.ToString(pageIndex).Trim();
            Labeltptalrows.Text = Convert.ToString(totalRows).Trim();
            Pagetotal.Text = Convert.ToString(pageCount).Trim();
            List<ListItem> pages = new List<ListItem>();
            if (pageCount > 0)
            {
                pages.Add(new ListItem("First", "1", pageIndex > 1));
                for (int i = 1; i <= pageCount; i++)
                {
                    pages.Add(new ListItem(i.ToString(), i.ToString(), i != pageIndex));
                }
                pages.Add(new ListItem("Last", pageCount.ToString(), pageIndex < pageCount));
            }

            rptPager.DataSource = pages;
            rptPager.DataBind();
            UpdatePanelgridview.Update();
        }


        protected void PageSize_Changed(object sender, EventArgs e)
        {
            //int Aid = Convert.ToInt32(Session["id"].ToString().Trim());

            int pagesize = Convert.ToInt32(ddlPageSize.SelectedValue);
            //int pageIndex = int.Parse((sender as LinkButton).CommandArgument);

            int totalRows = 0;
            GridViewStudents.DataSource =
                commancode.GetStudents(1, pagesize, "surname ",
                            "ASC", "allrep",  out totalRows);

            GridViewStudents.DataBind();

            DatabindRepeater(1, pagesize, totalRows);

            //this.GetStudentssPageWise(pageIndex);
            UpdatePanelgridview.Update();
        }


        protected void Page_Changed(object sender, EventArgs e)
        {
            //int Aid = Convert.ToInt32(Session["id"].ToString().Trim());

            int pagesize = Convert.ToInt32(ddlPageSize.SelectedValue);
            int pageIndex = int.Parse((sender as LinkButton).CommandArgument);

            int totalRows = 0;
            GridViewStudents.DataSource =
                commancode.GetStudents(pageIndex, pagesize, "surname ",
                            "ASC", "allrep",  out totalRows);

            GridViewStudents.DataBind();

            DatabindRepeater(pageIndex, pagesize, totalRows);

            //this.GetStudentssPageWise(pageIndex);
            UpdatePanelgridview.Update();
        }

        private void PopulatePager(int recordCount, int currentPage)
        {
            double dblPageCount = (double)((decimal)recordCount / decimal.Parse(ddlPageSize.SelectedValue));
            int pageCount = (int)Math.Ceiling(dblPageCount);
            LabelpageCurrent.Text = Convert.ToString(currentPage).Trim();
            Labeltptalrows.Text = Convert.ToString(recordCount).Trim();
            Pagetotal.Text = Convert.ToString(pageCount).Trim();
            List<ListItem> pages = new List<ListItem>();
            if (pageCount > 0)
            {
                pages.Add(new ListItem("First", "1", currentPage > 1));
                for (int i = 1; i <= pageCount; i++)
                {
                    pages.Add(new ListItem(i.ToString(), i.ToString(), i != currentPage));
                }
                pages.Add(new ListItem("Last", pageCount.ToString(), currentPage < pageCount));
            }


            rptPager.DataSource = pages;
            rptPager.DataBind();
            UpdatePanelgridview.Update();
        }

        public void BindGridcourior()
        {

            SqlParameter parameter = new SqlParameter();
            parameter.ParameterName = "@Action";
            parameter.Value = "allrep";
            GridViewStudents.DataSource = commancode.GetData("Sp_GetCatagories", parameter);
            GridViewStudents.DataBind();

        }
        //code for GridViewStudents_RowCommand
        protected void GridViewStudents_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteRow")
            {
                int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
                int InvoiceId = Convert.ToInt32(e.CommandArgument);



                SqlParameter parameter = new SqlParameter();
                parameter.ParameterName = "@Action";
                parameter.Value = "Delete";
                SqlParameter parameter1 = new SqlParameter();
                parameter1.ParameterName = "@id";
                parameter1.Value = InvoiceId;
                commancode.GetData("Sp_GetStudents", parameter, parameter1);
                gridbind();
                UpdatePanelgridview.Update();



            }


            else if (e.CommandName == "edit")
            {
                int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
                string Id = ((Label)GridViewStudents.Rows[rowIndex].FindControl("LabelstudentCode")).Text.ToString();
              // int Id = Convert.ToInt32(e.CommandArgument);

                string name = ((Label)GridViewStudents.Rows[rowIndex].FindControl("Labelname")).Text.ToString();
                string surname = ((Label)GridViewStudents.Rows[rowIndex].FindControl("Labelsurname")).Text.ToString();
                string email = ((Label)GridViewStudents.Rows[rowIndex].FindControl("Labelemail")).Text.ToString();
                string phone_number = ((Label)GridViewStudents.Rows[rowIndex].FindControl("Labelphone_number")).Text.ToString();
                string registrationYear = ((Label)GridViewStudents.Rows[rowIndex].FindControl("LabelregistrationYear")).Text.ToString();
                string specialty = ((Label)GridViewStudents.Rows[rowIndex].FindControl("Labelspecialty")).Text.ToString();

                
                Response.Redirect("editStudent.aspx?Id=" + Id + "&name=" + name + "&surname=" + surname + "&email=" + email + "&phone_number=" + phone_number + "&registrationYear=" + registrationYear + "&specialty=" + specialty);

            }
           
            

        }
        protected void GridViewStudents_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            GridViewStudents.PageIndex = e.NewPageIndex;

            //rebind your gridview - GetSource(),Datasource of your GirdView
            BindGridcourior();

        }

        protected void TextBoxsearch_TextChanged(object sender, EventArgs e)
        {
           // int Aid = Convert.ToInt32(Session["id"].ToString().Trim());

            int pagesize = Convert.ToInt32(ddlPageSize.SelectedValue);
            //int pageIndex = int.Parse((sender as LinkButton).CommandArgument);
            string search = TextBoxsearch.Text.ToString().Trim();
            int totalRows = 0;
            GridViewStudents.DataSource =
                commancode.GetStudents(1, pagesize, "surname ",
                            "ASC", "allrep",  out totalRows, search);

            GridViewStudents.DataBind();

            DatabindRepeater(1, pagesize, totalRows);
        }
    }
}