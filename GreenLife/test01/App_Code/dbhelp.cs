using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// dbhelp 的摘要说明
/// </summary>
public class dbhelp
{
    public static string constr = @"server=localhost\;uid=sa;pwd=root;database=sp";
    public dbhelp()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public static DataSet getds(string sql)
    {
        DataSet ds = new DataSet();
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        try
        {
            con.Open();
            da.Fill(ds);
            con.Close();
            con.Dispose();
            cmd.Dispose();
            da.Dispose();
        }
        catch
        {
            con.Close();
            con.Dispose();
            cmd.Dispose();
            da.Dispose();
        }
        return ds;
    }
    public static bool getdt(string sql)
    {
        bool ifsuccess = false;
        DataTable ds = new DataTable();
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        try
        {
            con.Open();
            da.Fill(ds);
            con.Close();
            con.Dispose();
            cmd.Dispose();
            da.Dispose();
        }
        catch
        {
            con.Close();
            con.Dispose();
            cmd.Dispose();
            da.Dispose();
        }
        return ifsuccess;
    }
    public static bool savesql(string sql)
    {
        bool ifsuccess = false;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(sql, con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            con.Dispose();
            cmd.Dispose();
            
        }
        catch
        {
            con.Close();
            con.Dispose();
            cmd.Dispose();
            
        }
        return ifsuccess;
    }
    public static void alert(string mesg)
    {
        HttpContext.Current.Response.Write("<script type=\"text/javascript\">alert('" + mesg + "');</script>");
            
    }
}