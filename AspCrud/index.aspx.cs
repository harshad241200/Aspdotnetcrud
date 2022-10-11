using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspCrud
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = null;
            string sql = "select id,firstname, lastname, mobileno from crud order by id desc";
            con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeaters1.DataSource = dt;
            Repeaters1.DataBind();
            con.Close();
        }

        protected void submitdata(object sender, EventArgs e)
        {
            SqlConnection con = null;
            try
            {
                string firstname = Fname.Text;
                string lastname = Lname.Text;
                string mobileno = mobno.Text;
                //Get connection string from web.config file  
                string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                //create new sqlconnection and connection to database by using connection string from web.config file 
                string sql = "insert into crud(firstname, lastname, mobileno) values('" + firstname + "','" + lastname + "','" + mobileno +  "')";

                con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);

                int status = cmd.ExecuteNonQuery();

                if (status > 0)
                {
                    Response.Redirect("index");
                    //Response.Write("<script>alert('Success')</script>");
                }

            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            finally
            {
                con.Close();
            }

            //message.Text = "Success Fully";

        }


    }
}
