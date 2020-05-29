using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class zhanghu : System.Web.UI.Page
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
        string sql = "select * from yonghu";
        DataSet ds = dbhelp.getds(sql);
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // string sql = "insert into yonghu(用户名,密码,积分) values('" + this.TextBox1.Text + "','" + this.TextBox2.Text + "')";
        if (this.HiddenField1.Value != "")
        {
            string sql = "update yonghu set 用户名='" + this.TextBox1.Text + "',密码='" + this.TextBox2.Text + "'where id='" + this.HiddenField1.Value + "'";

            bool k = dbhelp.savesql(sql);
            if (k)
            {
                dbhelp.alert("操作成功");
            }
            else
            {
                dbhelp.alert("操作失败");
            }

            Response.Redirect("zhanghu.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("zhanghu.aspx");
    }


    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        this.Button1.Text = "修改";
        this.HiddenField1.Value= GridView1.Rows[e.NewSelectedIndex].Cells[1].Text;
        this.TextBox1.Text = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
        this.TextBox2.Text = GridView1.Rows[e.NewSelectedIndex].Cells[3].Text;


    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sql = "delete from yonghu where ID='" + GridView1.Rows[e.RowIndex].Cells[2].Text + "'";
        bool k = dbhelp.savesql(sql);
        if (k)
        {
            dbhelp.alert("操作成功");
        }
        else
        {
            dbhelp.alert("操作失败");
        }

        Response.Redirect("zhanghu.aspx");
    }

}