using Microsoft.EntityFrameworkCore;
using Proyecto.Domain.Model;

namespace Proyecto.DrivenAdapters.EntityFramework
{
    public class FacturaDbContext : DbContext
    {
        public FacturaDbContext(DbContextOptions options) : base(options)
        {
        }
        public DbSet<Detalles> Detalles { get; set; }
    }
}
