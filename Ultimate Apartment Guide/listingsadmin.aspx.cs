using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ultimate_Apartment_Guide
{
    public partial class addlisting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                loadListings();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection testConn = new SqlConnection("Data Source=ApartmentGuide.db.7876827.hostedresource.com;Database=ApartmentGuide;User Id=ApartmentGuide;Password=Apartment!@34");

                testConn.Open();

                string sqlAddListing = @"INSERT INTO Community (CommunityTypeID, SourceID, Name, Address, Address2, City, State, ZipCode, YearBuilt, Description, Description2)
                                        VALUES (@TypeID, @SourceID, @Name, @Address, @Address2, @City, @State, @ZipCode, @YearBuilt, @Description, @Description2)";

                SqlCommand cmdAddListing = new SqlCommand(sqlAddListing, testConn);

                cmdAddListing.Parameters.AddWithValue("@TypeID", DBNull.Value);
                cmdAddListing.Parameters.AddWithValue("@SourceID", DBNull.Value);
                cmdAddListing.Parameters.AddWithValue("@Name", txtCommunityName.Text);
                cmdAddListing.Parameters.AddWithValue("@Address", txtAddressOne.Text);
                cmdAddListing.Parameters.AddWithValue("@Address2", txtAddressTwo.Text);
                cmdAddListing.Parameters.AddWithValue("@City", txtCity.Text);
                cmdAddListing.Parameters.AddWithValue("@State", txtState.Text);
                cmdAddListing.Parameters.AddWithValue("@ZipCode", txtZipCode.Text);
                cmdAddListing.Parameters.AddWithValue("@YearBuilt", txtYearBuilt.Text);
                cmdAddListing.Parameters.AddWithValue("@Description", txtDescription.Text);
                cmdAddListing.Parameters.AddWithValue("@Description2", DBNull.Value);

                int rowsAdded = cmdAddListing.ExecuteNonQuery();

                //We have to refresh the listings again here because the command runs AFTER postback.
                loadListings();
            }
            catch (Exception)
            {

            }
        }

        private void loadListings()
        {
            SqlConnection testConn = new SqlConnection("Data Source=ApartmentGuide.db.7876827.hostedresource.com;Database=ApartmentGuide;User Id=ApartmentGuide;Password=Apartment!@34");

            testConn.Open();

            string sqlGetListingsCount = @"SELECT COUNT(*) FROM Community";

            SqlCommand cmdGetListingsCount = new SqlCommand(sqlGetListingsCount, testConn);

            object tempNumListings = cmdGetListingsCount.ExecuteScalar();

            int numListings = Int32.Parse((tempNumListings ?? "0").ToString());

            lblCurrentNumberOfListings.Text = numListings.ToString();

            //Now load the datatable
            string sqlGetListings = @"SELECT * FROM Community";

            SqlCommand cmdGetListings = new SqlCommand(sqlGetListings, testConn);

            SqlDataAdapter da = new SqlDataAdapter(cmdGetListings);
            DataTable dtListings = new DataTable();

            da.Fill(dtListings);

            dgvListings.DataSource = dtListings;
            dgvListings.DataBind();

            testConn.Close();
        }
    }
}