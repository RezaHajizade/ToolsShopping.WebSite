using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DataAccess
    {
        SqlConnection _connection;
        SqlDataAdapter _adapter;
        SqlCommand _sqlCommand;
        DataTable _dataTable;


        public DataAccess()
        {
            _connection = new SqlConnection();
            _adapter = new SqlDataAdapter();
            _sqlCommand = new SqlCommand();
            _sqlCommand.Connection = _connection;
            _adapter.SelectCommand = _sqlCommand;
        }

        public void Link()
        {
            //TrustServerCertificate = True;
            _connection.ConnectionString = "Data Source=DESKTOP-PF2I7GV;Initial Catalog=ShopingFaradars;Integrated Security=True;";
            _connection.Open();
        }
        public void UnLink()
        {
            _connection.Close();
        }
        public DataTable SelectDataText(string Strsql)
        {
            _sqlCommand.CommandText = Strsql;
            _dataTable = new DataTable();
            _adapter.Fill(_dataTable);
            return _dataTable;
        }

        public void commanddatatext(string Strsql)
        {
            _sqlCommand.CommandText = Strsql;
            _sqlCommand.ExecuteNonQuery();
        }
    }
}
