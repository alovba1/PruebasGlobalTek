using System.Data.SqlClient;
namespace Vehiculos.DrivenAdapters.SqlServer
{
    public class Connection
    {
        private string cadenaSQL = string.Empty;

        public Connection() 
        {
            var builder = new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json").Build();
            cadenaSQL = builder.GetSection("ConnectionStrings:VehicleConnectionString").Value;
        }

        public string getCadenaSql() 
        {
            return cadenaSQL;
        }
    }
}
