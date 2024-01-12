import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { ServiceService } from 'src/app/Service/service.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Facturas';
  constructor(private router:Router, private service:ServiceService){}

  ListarVehiculo(){
    this.router.navigate(['listarVehiculo']);
  }
  NuevoVehiculo(){
    this.router.navigate(['addVehiculo']);
  }
  Login(){
    this.router.navigate(['login']);
  }
  Filter(){
    this.router.navigate(['filter']);
  }
}
