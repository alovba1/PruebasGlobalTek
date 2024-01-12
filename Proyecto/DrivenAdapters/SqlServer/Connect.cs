using System.Data.SqlClient;

namespace Proyecto.DrivenAdapters.SqlServer
{
    public class Connect
    {
        private string cadenaSQL = string.Empty;

        public Connect()
        {
            var builder = new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json").Build();
            cadenaSQL = builder.GetSection("ConnectionStrings:ConnectionString").Value;
        }

        public string getCadenaSql()
        {
            return cadenaSQL;
        }
    }
}
