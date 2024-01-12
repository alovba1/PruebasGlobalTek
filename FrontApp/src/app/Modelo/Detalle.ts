export class Detalle {
    id:number;
    idFactura:number;
    idProducto:number;
    cantidad:number;
    precioUnitario:number;
    
    constructor(id:number,idFactura:number,idProducto:number,cantidad:number,precioUnitario:number)
{
 this.id=id;
 this.idFactura=idFactura;
 this.idProducto=idProducto;
 this.cantidad=cantidad;
 this.precioUnitario=precioUnitario;

}
}