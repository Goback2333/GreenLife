using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    /*protected void Button1_Click1(object sender, EventArgs e)
    {
        string username = this.TextBox1.Text;
        string password = this.TextBox2.Text;

        string sql = "select * from yonghu where 用户名='"+username+"'and 密码='"+ password + "' ";
        DataTable d=dbhelp.getds(sql).Tables[0];
        if (d.Rows.Count!=0)
        {
            Response.Redirect("index.aspx");
        }
        else
        {
            Response.Redirect("login.aspx");
        }
        
    }*/
    /*protected void Click(object sender, EventArgs e)
    {
        string username = this.TextBox1.Text;
        string password = this.TextBox2.Text;

        string sql = "select * from yonghu where 用户名='" + username + "'and 密码='" + password + "' ";
        DataTable d = dbhelp.getds(sql).Tables[0];
        if (d.Rows.Count != 0)
        {
            Response.Redirect("index.aspx");
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }*/

    protected void sign_in_Click(object sender, EventArgs e)
    {
        string username = this.TextBox1.Text;
        string password = this.TextBox2.Text;

        string sql = "select * from yonghu where 用户名='" + username + "'and 密码='" + password + "' ";
        DataTable d = dbhelp.getds(sql).Tables[0];
        if (d.Rows.Count != 0)
        {
            Response.Redirect("index.aspx");
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
}
 