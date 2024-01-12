import { Component, OnInit } from '@angular/core';
import { Factura } from 'src/app/Modelo/Factura';
import { Router } from '@angular/router';
import { ServiceService } from 'src/app/Service/service.service';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { UserValidator } from 'src/app/Validaciones';

@Component({
  selector: 'app-add',

  templateUrl: './add.component.html',
  styleUrls: ['./add.component.css']
})

export class AddComponentSeguimiento implements OnInit {

  selectedFile: File | null = null;

  id : number = 0;
  numeroFactura : number = 0;
  fecha = "";
  tipodePago = "";
  documentoCliente="";
  nombreCliente="";
  subtotal: number = 0;
  descuento: number = 0;
  iva: number = 0;
  totalDescuento: number = 0;
  totalImpuesto: number = 0;
  total: number = 0;




dataFormServer = {};
registered = false;
errorRegistered=false;
channelForm: FormGroup; 

  constructor(private router:Router, private service:ServiceService, public fb:FormBuilder) 
  { 
    this.channelForm=this.fb.group({
      id : '',
      name: ['',Validators.compose([
        Validators.required,
        Validators.minLength(3),
        UserValidator.verificarDatos
      ])]
      })
  }

  onFileSelected(event: any) {
    this.selectedFile = event.target.files[0];
  }

  
  ngOnInit(): void {
  }

Guardar() {

  const factura = new Factura(this.id, this.numeroFactura, this.fecha, 
    this.tipodePago, this.documentoCliente,this.nombreCliente,
    this.subtotal,this.iva,this.descuento,this.totalDescuento,this.totalImpuesto,this.total
    );
  

  
      const fechaSeleccionada = new Date(this.fecha);
      const fechaActual = new Date();
  
      if (fechaSeleccionada < fechaActual) {
        alert("La fecha no puede ser menor que la fecha actual. ");
        console.log('La fecha no puede ser menor que la fecha actual.');
      } else {
        alert("Fecha válida.");
        console.log('Fecha válida.');
        this.service.guardar(factura).subscribe(
          data => {
             
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
              
             console.log('Imagen subida con éxito.');
            
            alert("Se agregó con éxito el registro");
            this.router.navigate(["listar"]);
          },
          error => {
            console.error('Error al guardar  la información:', error);
            alert("Error al guardar  la información");
          }
        );
      
      }
  

}

}
