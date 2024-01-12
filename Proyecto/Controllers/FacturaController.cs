using Microsoft.AspNetCore.Mvc;
using Proyecto.Domain.Model;
using Proyecto.Domain.UseCase;
using Proyecto.DrivenAdapters.EntityFramework;

namespace Proyecto.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class FacturaController : Controller
    {
        //private readonly FacturaDbContext _facturaDbContext;
        FacturaUseCase facturaUseCase = new FacturaUseCase();

        /*
        public FacturaController(FacturaDbContext faturaDbContext)
        {
            _facturaDbContext = faturaDbContext;
        }
        */

        [HttpGet]
        public IActionResult GetAll()
        {
            var varList = facturaUseCase.list();
            return Ok(varList);
        }

        [HttpGet]
        [Route("{id:int}")]
        public IActionResult GetId(int id)
        {
            var var = facturaUseCase.GetId(id);
            return Ok(var);

        }



        [HttpPost]
        public IActionResult Add(Factura factura)
        {
            var vehicleResponse = facturaUseCase.Save(factura);
            return Ok(factura);
        }


        [HttpPost]
        [Route("{id:int}")]
        public IActionResult AddDetalle(Detalles detalle)
        {
            var vehicleResponse = facturaUseCase.SaveDetalle(detalle);
            return Ok(detalle);
        }

        /*
        [HttpPost]
        public async Task<IActionResult> Add([FromBody] Detalles detalleRequest)
        {
            detalleRequest.Id = 0;

            await _facturaDbContext.Detalles.AddAsync(detalleRequest);
            await _facturaDbContext.SaveChangesAsync();

            return Ok(detalleRequest);
        }

        */

        [HttpPut]
        public IActionResult UpDate(Factura factura)
        {
            var vehicleResponse = facturaUseCase.UpDate(factura);
            return Ok(factura);
        }

        [HttpPut]
        [Route("{id:int}")]
        public IActionResult UpDateCalcular(Factura factura)
        {
            var vehicleResponse = facturaUseCase.UpDateCalcular(factura);
            return Ok(factura);
        }

        [HttpDelete]
        [Route("{id:int}")]
        public IActionResult Delete(int id)
        {
            var vehicleResponse = facturaUseCase.Delete(id);
            return Ok(vehicleResponse);
        }
    }
}
