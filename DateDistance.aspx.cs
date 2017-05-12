using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DateDistance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy"); ;
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TextBox2.Text = Calendar2.SelectedDate.ToString("dd/MM/yyyy"); ;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime dt = Convert.ToDateTime(TextBox1.Text);
        DateTime dt2 = Convert.ToDateTime(TextBox2.Text);
        TimeSpan ts = dt.Subtract(dt2);
        Label1.Text = ts.Days.ToString();
    }
}