﻿using Myfirstwebpage.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myfirstwebpage.AboutUS
{
    public partial class AboutUS : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Banner2.DisplayDirection = Direction.Vertical;
            }
        }
    }
}