﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myfirstwebpage
{
    public partial class Banner : System.Web.UI.UserControl
    {
        public Direction DisplayDirection { get; set; }
        public string NavigateUrl
        {
            get
            {
                object _navigateUrl = ViewState["NavigateUrl"];
                if (_navigateUrl != null)
                {
                    return (string)_navigateUrl;
                }
                else
                {
                    return "https://nguyennhuthinh.home.blog/";
                }
            }
            set
            {
                ViewState["NavigateUrl"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            switch (DisplayDirection)
            {
                case Direction.Horizontal:
                    HorizontalPanel.Visible = true;
                    VerticalPanel.Visible = false;
                    HorizontalLink.HRef = NavigateUrl;
                    break;
                case Direction.Vertical:
                    VerticalPanel.Visible = true;
                    HorizontalPanel.Visible = false;
                    VerticalLink.HRef = NavigateUrl;
                    break;
            }
        }
    }
}