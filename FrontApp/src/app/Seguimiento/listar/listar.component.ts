import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ServiceService } from 'src/app/Service/service.service';
import { Factura } from 'src/app/Modelo/Factura';

@Component({
  selector: 'app-listar',
  templateUrl: './listar.component.html',
  styleUrls: ['./listar.component.css']
})
export class ListarComponentSeguimiento implements OnInit {


  factura:Factura[];
  constructor(private service:ServiceService, private router:Router) {  this.factura=[]}

  ngOnInit()  {
  this.service.get()
 .subscribe(data=>{
   this.factura=data;
  })
  }

  Delete(factura:Factura){
    this.service.delete(factura)
    .subscribe(data=>{
      this.factura=this.factura.filter(p=>p!==factura);
      alert("Registro Eliminado");
    })
    
    }

}
