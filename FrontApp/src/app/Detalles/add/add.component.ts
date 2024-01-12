import { Component, OnInit } from '@angular/core';


import { Router } from '@angular/router';
import { ServiceService } from 'src/app/Service/service.service';
import { FormBuilder, FormGroup, Validators,FormControl } from '@angular/forms';
import { UserValidator } from 'src/app/Validaciones';
import { Detalle } from 'src/app/Modelo/Detalle';

@Component({
  selector: 'app-add',
  templateUrl: './add.component.html',
  styleUrls: ['./add.component.css']
})
export class AddComponent implements OnInit {
  id : number = 0;
  idFactura : number = 0;
  idProducto : number = 0;
  cantidad : number = 0;
  precioUnitario : number = 0;
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

  ngOnInit(): void {
  }



  Guardar() {

    const detalle = new Detalle(this.id, this.idFactura, this.idProducto, 
      this.cantidad, this.precioUnitario
      );

     
        if (detalle.cantidad <= 0) {
          alert("la cantidad de productos Debe Ser Mayor a 0 ");
       
      }
      else if(detalle.precioUnitario < 0) {
        alert("el Precio Unitario no Debe Ser negativo");
      }
      else {
          this.service.guardarDetalle(detalle).subscribe(
            data => {
               
                this.idFactura = data.idFactura;
                this.idProducto = data.idProducto;
                this.cantidad = data.cantidad;
                this.precioUnitario = data.precioUnitario;
            
              alert("Se agregó con éxito el registro");
              //this.router.navigate(["listar"]);
            },
            error => {
              console.error('Error al guardar  la información:', error);
              alert("Error al guardar  la información");
            }
          );
        }

      
}
}
