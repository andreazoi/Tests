using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Runtime.InteropServices;

namespace studentlist
{
    internal class commancode
    {
        public static DataSet GetData(string SPName, SqlParameter SPParameter, params object[] restOfTheNumbers)
        {

            {
                string CS = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
                SqlConnection con = new SqlConnection(CS);
                SqlDataAdapter da = new SqlDataAdapter(SPName, con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;


                if (SPParameter != null)
                {
                    da.SelectCommand.Parameters.Add(SPParameter);

                    if (restOfTheNumbers != null)
                    {
                        foreach (SqlParameter i in restOfTheNumbers)
                        {
                            da.SelectCommand.Parameters.Add(i);
                        }

                    }


                }

                DataSet DS = new DataSet();
                da.Fill(DS);
                da.SelectCommand.Parameters.Clear();
                return DS;

            }
        }

    
         public static DataTable GetCustomers2(int pageIndex, int pageSize, string sortExpression, string sortDirection, string Action, out int totalRows)
        {

            string CS = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Sp_GetCustomer", con);
                cmd.CommandType = CommandType.StoredProcedure;


                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Action", Action);

                cmd.Parameters.AddWithValue("@SortExpression", sortExpression);
                cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
                cmd.Parameters.AddWithValue("@PageSize", pageSize);
                cmd.Parameters.AddWithValue("@SortDirection", sortDirection);


                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                DataSet dataset = new DataSet();
                dataAdapter.Fill(dataset);


                DataTable tb = new DataTable();
                tb = dataset.Tables[1];
                //  totalRows = (int)cmd.Parameters["@TotalRows"].Value;

                totalRows = Convert.ToInt16(dataset.Tables[0].Rows[0][0].ToString());
                ////  this.PopulatePager(recordCount, pageIndex);
                return tb;

            }



        }
        
        public static DataTable GetCustomer(int pageIndex, int pageSize, string sortExpression, string sortDirection, string Action, int Aid, out int totalRows)
        {

            string CS = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("[Sp_GetCatagories]", con);
                cmd.CommandType = CommandType.StoredProcedure;


                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Action", Action);

                cmd.Parameters.AddWithValue("@SortExpression", sortExpression);
                cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
                cmd.Parameters.AddWithValue("@PageSize", pageSize);
                cmd.Parameters.AddWithValue("@SortDirection", sortDirection);
                cmd.Parameters.AddWithValue("@Aid", Aid);

                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                DataSet dataset = new DataSet();
                dataAdapter.Fill(dataset);


                DataTable tb = new DataTable();
                tb = dataset.Tables[1];
                //  totalRows = (int)cmd.Parameters["@TotalRows"].Value;

                totalRows = Convert.ToInt16(dataset.Tables[0].Rows[0][0].ToString());
                ////  this.PopulatePager(recordCount, pageIndex);
                return tb;

            }



        }


        public static DataTable Getproducts(int pageIndex, int pageSize, string sortExpression, string sortDirection, string Action,int Aid, out int totalRows, [Optional] string search )
        {

            string CS = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Sp_GetProducts", con);
                cmd.CommandType = CommandType.StoredProcedure;


                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Action", Action);

                cmd.Parameters.AddWithValue("@SortExpression", sortExpression);
                cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
                cmd.Parameters.AddWithValue("@PageSize", pageSize);
                cmd.Parameters.AddWithValue("@SortDirection", sortDirection);
                cmd.Parameters.AddWithValue("@search", search);
                cmd.Parameters.AddWithValue("@Aid", Aid);

                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                DataSet dataset = new DataSet();
                dataAdapter.Fill(dataset);


                DataTable tb = new DataTable();
                tb = dataset.Tables[1];
                //  totalRows = (int)cmd.Parameters["@TotalRows"].Value;

                totalRows = Convert.ToInt16(dataset.Tables[0].Rows[0][0].ToString());
                ////  this.PopulatePager(recordCount, pageIndex);
                return tb;

            }



        }



        public static DataTable Gettable(string storeprocedure,int pageIndex, int pageSize, string sortExpression, string sortDirection, string Action, int Aid, out int totalRows, [Optional] string search)
        {

            string CS = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(storeprocedure, con);
                cmd.CommandType = CommandType.StoredProcedure;


                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Action", Action);

                cmd.Parameters.AddWithValue("@SortExpression", sortExpression);
                cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
                cmd.Parameters.AddWithValue("@PageSize", pageSize);
                cmd.Parameters.AddWithValue("@SortDirection", sortDirection);
                cmd.Parameters.AddWithValue("@search", search);
                cmd.Parameters.AddWithValue("@Aid", Aid);

                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                DataSet dataset = new DataSet();
                dataAdapter.Fill(dataset);


                DataTable tb = new DataTable();
                tb = dataset.Tables[1];
                //  totalRows = (int)cmd.Parameters["@TotalRows"].Value;

                totalRows = Convert.ToInt16(dataset.Tables[0].Rows[0][0].ToString());
                ////  this.PopulatePager(recordCount, pageIndex);
                return tb;

            }



        }




        
       

    }


}