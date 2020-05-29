using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TYQ;
public partial class shop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private static int clickCount = 0;
    private static int b = 0;
    private static int c = 0;
    private static int d = 0;
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        clickCount++;
        if (clickCount <= 2)
        {
            string sqla = "update yonghu set 积分=积分+50 where id=1";
            bool k = dbhelp.savesql(sqla);
            TYQ.JsHelper.AlertAndRedirect("积分加50", "take.aspx");
        }
        else
        {
            TYQ.JsHelper.AlertAndRedirect("今日已达上限", "take.aspx");
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        b++;
        if (b <= 2) {
            string sqla = "update yonghu set 积分=积分+30 where id=1";
            bool k = dbhelp.savesql(sqla);
            TYQ.JsHelper.AlertAndRedirect("积分加30", "take.aspx");
        }
        else
        {
            TYQ.JsHelper.AlertAndRedirect("今日已达上限", "take.aspx");
        }
            
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        c++;
        if (c <= 2)
        {
            string sqla = "update yonghu set 积分=积分+40 where id=1";
            bool k = dbhelp.savesql(sqla);
            TYQ.JsHelper.AlertAndRedirect("积分加40", "take.aspx");
        }
        else
        {
            TYQ.JsHelper.AlertAndRedirect("今日已达上限", "take.aspx");
        }
           
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        d++;
        if (d <= 2)
        {
            string sqla = "update yonghu set 积分=积分+20 where id=1";
            bool k = dbhelp.savesql(sqla);
            TYQ.JsHelper.AlertAndRedirect("积分加20", "take.aspx");
        }
        else
        {
            TYQ.JsHelper.AlertAndRedirect("今日已达上限", "take.aspx");
        }
            
    }
}