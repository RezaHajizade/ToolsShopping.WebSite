using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BL_MasterPageMain:DataAccess
    {
        public DataTable SelectClass()
        {
            base.Link();
            string Query = "SELECT [ClassID], [ClassName] FROM [Tb_Class]";
            DataTable dataTable =base.SelectDataText(Query);
            base.UnLink();

            return dataTable;
        }

        public DataTable SelectBrand()
        {
            base.Link();
            string Query = "SELECT [BrandID], [BrandName] FROM [Tb_Brand]";
            DataTable dataTable = base.SelectDataText(Query);
            base.UnLink();

            return dataTable;
        }
    }
}
