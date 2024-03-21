using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BL_Default : DataAccess
    {
        public DataTable SelectAccessStatus()
        {
            base.Link();
            string Query = "SELECT ToolName, ToolID, PrePrice, CurPrice, PictureParts FROM Tb_Parts WHERE (AccessStatus = 1)";
            DataTable dataTable = base.SelectDataText(Query);
            base.UnLink();
            return dataTable;
        }

        public DataTable SelectNotAccessStatus()
        {
            base.Link();
            string Query = "SELECT ToolName, ToolID, PrePrice, CurPrice, PictureParts FROM Tb_Parts WHERE (AccessStatus =2)";
            DataTable dataTable = base.SelectDataText(Query);
            base.UnLink();
            return dataTable;
        }
    }
}
