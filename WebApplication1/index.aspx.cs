using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication1
{
    public partial class index : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Test1ConnectionString1"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            if (!IsPostBack)
            {

                SqlDataAdapter da = new SqlDataAdapter("select * from People", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "userID";
                DataBind();
                

            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlCommand cmd = new SqlCommand("insert into People values('" + TextBox4.Text+"','"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"')",con) ;
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "Your Data stored successfully!";
            TextBox4.Text = "";
            TextBox3.Text = "";
            TextBox2.Text = "";
            TextBox1.Text = "";

            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;

            SqlDataAdapter da = new SqlDataAdapter("select * from People ", con);
            DataTable dt = new DataTable();
            DataBind();
            con.Close();
            Label4.Visible = true;
            Label4.Text = "Your Data successfully refreshed!";


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update People set Fname='" +TextBox1.Text + "',Lname='" + TextBox2.Text + "',Age='" + TextBox3.Text + "'where UserID='" + DropDownList1.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label2.Visible = true;
            Label2.Text = "Your Data updated successfully!";
            TextBox4.Text = "";
            TextBox3.Text = "";
            TextBox2.Text = "";
            TextBox1.Text = "";

            Label1.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;

            SqlDataAdapter da = new SqlDataAdapter("select * from People ", con);
            DataTable dt = new DataTable();
            DataBind();
            con.Close();
            Label4.Visible = true;
            Label4.Text = "Your Data successfully refreshed!";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label4.Visible = false;
            Label2.Visible = false;
            Label1.Visible = false;
            Label3.Visible = false;
            SqlDataAdapter da = new SqlDataAdapter("select * from People where UserID='" + DropDownList1.Text+"'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            TextBox4.Text = dt.Rows[0][0].ToString();
            TextBox1.Text = dt.Rows[0][1].ToString();
            TextBox2.Text = dt.Rows[0][2].ToString();
            TextBox3.Text = dt.Rows[0][3].ToString();

            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Delete from People where UserID='" + DropDownList1.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label3.Visible = true;
            Label3.Text = "Your Data Deleted successfully!";
            TextBox4.Text = "";
            TextBox3.Text = "";
            TextBox2.Text = "";
            TextBox1.Text = "";

            Label2.Visible = false;
            Label1.Visible = false;
            Label4.Visible = false;

            SqlDataAdapter da = new SqlDataAdapter("select * from People ", con);
            DataTable dt = new DataTable();
            DataBind();
            con.Close();
            Label4.Visible = true;
            Label4.Text = "Your Data successfully refreshed!";

        }
    }
}