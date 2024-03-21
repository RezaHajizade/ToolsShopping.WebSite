using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageMain : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BL_MasterPageMain bL_MasterPage = new BL_MasterPageMain();
        DataListClass.DataSource = bL_MasterPage.SelectClass();
        DataListClass.DataBind();


        DataListBrand.DataSource = bL_MasterPage.SelectBrand();
        DataListBrand.DataBind();
    }
}
