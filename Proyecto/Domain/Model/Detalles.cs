namespace Proyecto.Domain.Model
{
    public class Detalles
    {
        private int idFactura = 0;
        private int idProducto = 0;
        private int cantidad = 0;
        private int precioUnitario = 0;
        public int Id { get; set; }
        public int IdFactura { get { return idFactura; } set { idFactura = value; } }
        public int IdProducto { get { return idProducto; } set { idProducto = value; } }
        public int Cantidad { get { return cantidad; } set { cantidad = value; } }
        public int PrecioUnitario { get { return precioUnitario; } set { precioUnitario = value; } }
    }
}
