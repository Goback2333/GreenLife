using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class shop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bindds();
        }
    }
    private void bindds()
    {
        string sql = "select * from shop";
        DataSet ds = dbhelp.getds(sql);
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();
    }


    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

        string sql = "update yonghu set yonghu.积分 =  yonghu.积分-convert(int,'" + GridView1.Rows[e.NewSelectedIndex].Cells[3].Text + "') from yonghu inner join shop on yonghu.id = shop.id";
        bool k = dbhelp.savesql(sql);

              TYQ.JsHelper.AlertAndRedirect("兑换成功", "shop.aspx");
        

        
    }
}