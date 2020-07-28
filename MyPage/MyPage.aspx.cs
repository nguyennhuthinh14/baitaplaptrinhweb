using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myfirstwebpage.MyPage
{
    public partial class MyPage : System.Web.UI.Page
    {
        private const string V = "<br />";

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "QT ban chon: " + ddlQT.SelectedValue + V;
            //form1.Style.Add("mau", "blue");//
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            Response.End();
        }

    }
}