import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Factura } from 'src/app/Modelo/Factura';
import { ServiceService } from 'src/app/Service/service.service';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'app-edit',
  templateUrl: './edit.component.html',
  styleUrls: ['./edit.component.css']
})
export class EditComponentSeguimiento implements OnInit {

  id : number = 0;
  numeroFactura : number = 0;
  fecha: string = '';
  tipodePago = "";
  documentoCliente="";
  nombreCliente="";
  subtotal: number = 0;
  descuento: number = 0;
  iva: number = 0;
  totalDescuento: number = 0;
  totalImpuesto: number = 0;
  total: number = 0;





  dataFactura!: Factura;

  brand: string = '';

  color = "";
  transmission = "";
  pathimg="C:\\img";
  vehicl:Factura[];
  channelForm: FormGroup; 

  constructor(private route:Router, private service:ServiceService, public fb:FormBuilder) {
    this.vehicl=[]
   this.channelForm=this.fb.group({
    id : '',
    
    name: ['',Validators.compose([
      Validators.required,
      Validators.minLength(3)
    ])]
    })
  
  }
  
 

updateName() {
  const factura = new Factura(this.id, this.numeroFactura, this.fecha, 
    this.tipodePago, this.documentoCliente,this.nombreCliente,
    this.subtotal,this.iva,this.descuento,this.totalDescuento,this.totalImpuesto,this.total
    );


    alert("valor id"+this.id);

    this.service.updateName(factura).subscribe(
      data => {
     this.id = data.id;
     this.numeroFactura = data.numeroFactura;
     this.fecha = data.fecha;
     this.tipodePago = data.tipodePago;
     this.documentoCliente = data.documentoCliente;
     this.nombreCliente = data.nombreCliente;
     this.subtotal = data.subtotal;
     this.descuento = data.descuento;
     this.iva = data.iva;
     this.totalDescuento = data.totalDescuento;
     this.totalImpuesto = data.totalImpuesto;
     this.total = data.total;
      
        alert("Se Actualizo con éxito el registro");
        
      },
      error => {
        console.error('Error al actualizar la información:', error);
        alert("Error al actualizar  la información");
      }
    );
  
  }


  ngOnInit()  {
    this.service.get()
   .subscribe(data=>{
     this.vehicl=data;
    })
    
}

editar() {
  this.service.updateName(this.dataFactura).subscribe(
    (dataActualizada: Factura) => {
      this.dataFactura = dataActualizada;
      console.log('Registro actualizado:', dataActualizada.numeroFactura);
      alert("Registro Actualizado");
      this.route.navigate(["listar"]);
    },
    (error) => {
      console.error('Error al actualizar el registro:', error);
      // Manejar el error según sea necesario
    }
  );
}


calcular() {
  this.service.updateCalculo(this.dataFactura).subscribe(
    (dataActualizada: Factura) => {
      this.dataFactura = dataActualizada;
      console.log('Registro Calculado:', dataActualizada.numeroFactura);
      alert("Registro Actualizado");
      this.route.navigate(["listar"]);
    },
    (error) => {
      console.error('Error al actualizar el registro:', error);
      // Manejar el error según sea necesario
    }
  );
}


buscar() {

  this.service.getId(this.id).subscribe(
    (factura: Factura) => {
      this.dataFactura = factura;
    },
    (error) => {
      console.error('Error al buscar id:', error);
      // Manejar el error según sea necesario
    }
  );
}

}