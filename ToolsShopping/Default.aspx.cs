using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BL_Default bL_Default = new BL_Default();
        DataListLatestproducts.DataSource= bL_Default.SelectAccessStatus();
        DataListLatestproducts.DataBind();

        DataListLatestpurchases.DataSource = bL_Default.SelectNotAccessStatus();
        DataListLatestpurchases.DataBind();

    }

   












}