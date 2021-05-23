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
    public partial class ImageGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string categ = Request.QueryString["Category"];
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Insta_Con"].ConnectionString))
                {
                    string inf_ID = Request.QueryString["Influencer_ID"];
                    SqlCommand cmd = new SqlCommand("select * FROM Image_Table img inner join Influencer_Table inf on inf.Influencer_ID = img.Influencer_ID inner join Popularity_Table pop on img.Image_ID = pop.Image_ID WHERE inf.Influencer_category LIKE ('%" + categ + "%') order by pop.View_Count desc", con);
                    con.Open();
                    SqlDataAdapter adp = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    adp.Fill(ds);
                    img_Gallery_Repeater.DataSource = ds;
                    img_Gallery_Repeater.DataBind();
                }
            }        
        }
    }
}