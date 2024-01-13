namespace Proyecto.Domain.Model
{
    public class Factura
    {
        private int numeroFactura = 0;
        private string fecha;
        private string tipodePago =null;
        private string documentoCliente=null;
        private string nombreCliente = null;
        private decimal subtotal = 0;
        private decimal descuento = 0;
        private decimal iva = 0;
        private decimal totalDescuento = 0;
        private decimal totalImpuesto = 0;
        private decimal total = 0;
       
    
        public int Id { get; set; }

        public int NumeroFactura { get { return numeroFactura; } set { numeroFactura = value; } }

        public string Fecha { get { return fecha; } set { fecha = value; } }
        public string TipodePago { get { return tipodePago; } set { tipodePago = value; } }
        public string DocumentoCliente { get { return documentoCliente; } set { documentoCliente = value; } }
        public string NombreCliente { get { return nombreCliente; } set { nombreCliente = value; } }
        public decimal Subtotal { get { return subtotal; } set { subtotal = value; } }
        public decimal Descuento { get { return descuento; } set { descuento = value; } }
        public decimal Iva { get { return iva; } set { iva = value; } }

        public decimal TotalDescuento { get { return totalDescuento; } set { totalDescuento = value; } }
        public decimal TotalImpuesto { get { return totalImpuesto; } set { totalImpuesto = value; } }
        public decimal Total { get { return total; } set { total = value; } }

        

    }
}
