using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection scon;
    SqlCommand scmd;
    SqlDataAdapter sda;
    DataSet ds;
    DBConnector dbc = new DBConnector();
    string pname, Categ, Desc;
    int Qnty, Pri;

    public void find()
    {
        scon = dbc.getDBConnection();
        string query = "Select * from Product";
        sda = new SqlDataAdapter(query, scon);
        ds = new DataSet();
        sda.Fill(ds, "Rep");
        GridView2.DataSource = ds;
        GridView2.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        find();
    }
    public void reset()
    {
        productname.Text = "";
        Category.Text = "";
        Quantity.Text = "";
        Price.Text = "";
        Description.Text = "";
        productname.Focus();
    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        reset();
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
       
        try
        {

            pname = productname.Text;
            Categ= Category.SelectedItem.Text;
            Qnty = Convert.ToInt32(Quantity.Text);
            Pri = Convert.ToInt32(Price.Text);
            Desc = Description.Text;
           scon = dbc.getDBConnection();
            if (productname.Text.Trim() == "" && Category.Text.Trim() == "" && Quantity.Text.Trim() == "" && Price.Text.Trim() == "" && Description.Text.Trim() == "")
            {
                Label1.Text = "Fill all Fields";
            }
            else
            { 
            scmd = new SqlCommand("insert into Product values(@pname,@categ,@Qnty,@Pri,@Desc);", scon);
            scmd.Parameters.AddWithValue("pname", pname);
            scmd.Parameters.AddWithValue("categ", Categ);
            scmd.Parameters.AddWithValue("Qnty", Qnty);
            scmd.Parameters.AddWithValue("Pri", Pri);
            scmd.Parameters.AddWithValue("Desc", Desc);
            sda = new SqlDataAdapter(scmd);
            ds = new DataSet();
            sda.Fill(ds);
            Label1.Text = "Product Added Successfully";
            reset();
                find();
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.Message);
        }

    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView2.SelectedRow;
        TextBox1.Text = row.Cells[1].Text;
        DropDownList1.Text = row.Cells[2].Text;
        TextBox2.Text = row.Cells[3].Text;
        TextBox3.Text = row.Cells[4].Text;
        TextBox4.Text = row.Cells[5].Text;
    }

    protected void update_Click(object sender, EventArgs e)
    {

        pname = TextBox1.Text;
        Categ = DropDownList1.SelectedItem.Text;
        Qnty = Convert.ToInt32(TextBox2.Text);
        Pri = Convert.ToInt32(TextBox3.Text);
        Desc = TextBox4.Text;
        scon = dbc.getDBConnection();

       scmd = new SqlCommand("update Product set ProductCategory = @Categ,Quantity=@Qnty,Price=@Pri,ProductDescription=@Desc where ProductName =@pname;", scon);
        scmd.Parameters.AddWithValue("pname", pname);
        scmd.Parameters.AddWithValue("Categ", Categ);
        scmd.Parameters.AddWithValue("Qnty", Qnty);
        scmd.Parameters.AddWithValue("Pri", Pri);
        scmd.Parameters.AddWithValue("Desc", Desc);
        sda = new SqlDataAdapter(scmd);
        ds = new DataSet();
        sda.Fill(ds);
        Label2.Text = "Data Update";
        find();
    }

    protected void delete_Click(object sender, EventArgs e)
    {
        pname = TextBox1.Text;

        scmd = new SqlCommand("delete from Product  where ProductName =@pname;", scon);
        scmd.Parameters.AddWithValue("pname", pname);
       
        sda = new SqlDataAdapter(scmd);
        ds = new DataSet();
        sda.Fill(ds);
        Label2.Text = "Data Delete";
        find();
    }
}