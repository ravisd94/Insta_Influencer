using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insta_Influencer.Sites
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Insta_Con"].ConnectionString))
                {

                    string inf_ID = Request.QueryString["Influencer_ID"];
                    SqlCommand cmd = new SqlCommand("select * from Influencer_Table inf inner join Image_Table img on inf.Influencer_ID = img.Influencer_ID where inf.Influencer_ID = " + inf_ID, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        img_inf.ImageUrl = (string)rdr["Image_path"];
                        HyperLink1.Text = (string)rdr["Influencer_Name"];
                        HyperLink1.NavigateUrl = (string)rdr["Insta_Link"];
                    }


                    //if (rdr.HasRows)
                    //{
                    //    while (rdr.Read())
                    //    {
                    //        Response.ContentType = rdr["Image_path"].ToString();
                    //        img_inf.ImageUrl = (string)rdr["Image_path"];
                    //        Response.Buffer = true;
                    //        Response.Charset = "";
                    //        Response.Cache.SetCacheability(HttpCacheability.NoCache);

                    //    }
                    //}

                    con.Close();
                    con.Open();
                    SqlDataAdapter adp = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    adp.Fill(ds);
                    Repeater_Profile.DataSource = ds;
                    Repeater_Profile.DataBind();
                }
            }
        }
    }
}