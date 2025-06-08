using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStore
{
    public partial class _Default : Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["BookStoreConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadReviews();
            }
        }

        private void LoadReviews()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "SELECT TOP 10 ReviewerName, ReviewText FROM Reviews ORDER BY ReviewDate DESC";
                SqlCommand cmd = new SqlCommand(sql, conn);
                conn.Open();
                rptReviews.DataSource = cmd.ExecuteReader();
                rptReviews.DataBind();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string review = txtReview.Text.Trim();

            if (!string.IsNullOrEmpty(name) && !string.IsNullOrEmpty(review))
            {
                string connStr = ConfigurationManager.ConnectionStrings["BookStoreConnection"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    string sql = "INSERT INTO Reviews (ReviewerName, ReviewText, ReviewDate) VALUES (@name, @review, GETDATE())";
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("@review", review);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }

                txtName.Text = "";
                txtReview.Text = "";
                LoadReviews(); // reload รีวิวทั้งหมด
            }
        }
    }
}