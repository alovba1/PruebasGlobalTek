namespace Proyecto.Domain.Model
{
    public class Productos
    {
        private string producto;
        public int Id { get; set; }
        public string Producto { get { return producto; } set { producto = value; } }
    }
}
