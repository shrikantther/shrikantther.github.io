using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DBConnector
/// </summary>
public class DBConnector
{
    SqlConnection connection;


    public DBConnector()
    {
        //
        // TODO: Add constructor logic here
        //
        connection = new SqlConnection("server=DESKTOP-QHPMDU5\\SQLEXPRESS;uid=sa;pwd=Shri@123;database=Compony");
    }

    public SqlConnection getDBConnection()
    {
        return (connection);
    }
}
