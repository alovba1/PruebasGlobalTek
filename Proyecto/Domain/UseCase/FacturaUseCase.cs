using Proyecto.DrivenAdapters.SqlServer;
using Proyecto.Domain.Model;


namespace Proyecto.Domain.UseCase
{
    
    public class FacturaUseCase
    {
        FacturaImpl facturaImpl = new FacturaImpl();
        public List<Factura> list()
        {
            var varList = new List<Factura>();
            varList = facturaImpl.list();
            return varList;

        }


        public Factura GetId(int id)
        {
            var varFactura =new Factura(); 
            varFactura = facturaImpl.GetId(id);
            return varFactura;
        }

        public bool Save(Factura factura)
        {
            bool rpta;

            rpta = facturaImpl.Save(factura);

            return rpta;
        }

        public bool SaveDetalle(Detalles detalles)
        {
            bool rpta;

            rpta = facturaImpl.SaveDetalle(detalles);

            return rpta;
        }

        public bool UpDate(Factura factura)
        {
            bool rpta;

            rpta = facturaImpl.UpDate(factura);

            return rpta;
        }

        public bool UpDateCalcular(Factura factura)
        {
            bool rpta;

            rpta = facturaImpl.UpDateCalcular(factura);

            return rpta;
        }
        public bool Delete(int id)
        {
            bool rpta;

            rpta = facturaImpl.Delete(id);

            return rpta;
        }
    }
}
