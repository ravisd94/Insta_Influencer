using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insta_Influencer
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Insta_Con"].ConnectionString))
                {
                    string inf_ID = Request.QueryString["Influencer_ID"];
                    SqlCommand cmd = new SqlCommand("SELECT [Category_ID], [Category_Name], [Category_Image] FROM [Category_Table]", con);
                    con.Open();
                    SqlDataAdapter adp = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    adp.Fill(ds);
                    Home_Repeater.DataSource = ds;
                    Home_Repeater.DataBind();
                }
            }
        }
    }
}