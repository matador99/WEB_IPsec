using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Form1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(@"Data Source=SashaPC\SQLExpress;Initial Catalog=IPsec;User ID=IPUser;Password=matador99");

            try
            {
                con.Open();
            }
            catch
            {
             }
            
            string sqlEnter = "EXECUTE [dbo].[GetUser] @LoginName='Sasha' ,@Password='matador99'";
            
            System.Data.SqlClient.SqlCommand cmdEnter = new System.Data.SqlClient.SqlCommand(sqlEnter, con);
            
            System.Data.SqlClient.SqlDataReader drEnter = cmdEnter.ExecuteReader();
            
            if (drEnter.Read())
            {
            Login.Text = drEnter[1].ToString();
            }
            
            else
            {
            Login.Text = "False";
            }
        }

        
    }
}