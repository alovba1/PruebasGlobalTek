 
 export class Factura {
    id:number;
    numeroFactura:number;
    fecha:string;
    tipodePago:string;
    documentoCliente:string;
    nombreCliente:string;
    subtotal:number;
    descuento:number;
    iva:number;
    totalDescuento:number;
    totalImpuesto:number;
    total:number;
    constructor(id:number,numeroFactura:number,fecha:string,tipodePago:string,documentoCliente:string,
    
    nombreCliente:string,
    subtotal:number,
    descuento:number,
    iva:number,
    totalDescuento:number,
    totalImpuesto:number,
    total:number      )
{
 this.id=id;
 this.numeroFactura=numeroFactura;
 this.fecha=fecha;
 this.fecha=fecha;
 this.tipodePago=tipodePago;
 this.documentoCliente=documentoCliente;
 this.nombreCliente=nombreCliente;
 this.subtotal=subtotal;
 this.descuento=descuento;
 this.iva=iva;
 this.totalDescuento=totalDescuento;
 this.totalImpuesto=totalImpuesto;
 this.total=total;
}
}