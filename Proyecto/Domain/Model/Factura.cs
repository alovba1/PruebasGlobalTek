namespace Proyecto.Domain.Model
{
    public class Factura
    {
        private int numeroFactura = 0;
        private string fecha;
        private string tipodePago =null;
        private string documentoCliente=null;
        private string nombreCliente = null;
        private int subtotal = 0;
        private int descuento = 0;
        private int iva = 0;
        private int totalDescuento = 0;
        private int totalImpuesto = 0;
        private int total = 0;
       
    
        public int Id { get; set; }

        public int NumeroFactura { get { return numeroFactura; } set { numeroFactura = value; } }

        public string Fecha { get { return fecha; } set { fecha = value; } }
        public string TipodePago { get { return tipodePago; } set { tipodePago = value; } }
        public string DocumentoCliente { get { return documentoCliente; } set { documentoCliente = value; } }
        public string NombreCliente { get { return nombreCliente; } set { nombreCliente = value; } }
        public int Subtotal { get { return subtotal; } set { subtotal = value; } }
        public int Descuento { get { return descuento; } set { descuento = value; } }
        public int Iva { get { return iva; } set { iva = value; } }

        public int TotalDescuento { get { return totalDescuento; } set { totalDescuento = value; } }
        public int TotalImpuesto { get { return totalImpuesto; } set { totalImpuesto = value; } }
        public int Total { get { return total; } set { total = value; } }

        

    }
}
