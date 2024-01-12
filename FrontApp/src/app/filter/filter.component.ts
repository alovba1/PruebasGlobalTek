import { Component, OnInit } from '@angular/core';
import { Vehicle } from '../Modelo/Vehicle';
import { ServiceService } from 'src/app/Service/service.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-filter',
  templateUrl: './filter.component.html',
  styleUrls: ['./filter.component.css']
})
export class FilterComponent implements OnInit {
  vehicle:Vehicle[];
  id : number = 0;
  brand = "";
  color = "";
  transmission = "";
  pathimg="";

  items = [
    { id: 1, name: 'Item 1' },
    { id: 2, name: 'Item 2' },
    { id: 3, name: 'Item 3' },
    { id: 4, name: 'Another Item' },
    // Add more items as needed
  ];
  filteredItems: any[];
  searchTerm: string = '';

  constructor(private service:ServiceService, private router:Router) { 
    this.filteredItems = this.items;
    this.vehicle=[];
    this.filteredItems = this.vehicle;
   
  }

  Listar(){
    this.router.navigate(['listar']);
  }

  Nuevo(){
    this.router.navigate(['add']);
  }

  Buscar(){
    this.router.navigate(['edit']);
  }

  Detalle(){
    this.router.navigate(['detal']);
  }

  ngOnInit() {
   
  }
}


 


