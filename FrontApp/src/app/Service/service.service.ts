import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Factura } from 'src/app/Modelo/Factura';
import { Detalle } from 'src/app/Modelo/Detalle';
import { environment } from 'src/environments/environment';


@Injectable({
  providedIn: 'root'
})
export class ServiceService {
  baseApiUrl: string = environment.baseApiUrl;
  constructor(private http:HttpClient) { }

  
  get()
  {
    return this.http.get<Factura[]>(this.baseApiUrl+'/api/Factura');
  }

  guardarDetalle(detalle:Detalle)
  {
     return this.http.post<Detalle>(this.baseApiUrl+'/api/Factura/'+detalle.id,detalle);
  }

  guardar(factura:Factura)
  {
     return this.http.post<Factura>(this.baseApiUrl+'/api/Factura/',factura);
  }
  getId(id:number) {
    return this.http.get<Factura>(this.baseApiUrl+"/api/Factura/"+id);
  }

  updateName(factura:Factura) {
    return this.http.put<Factura>(this.baseApiUrl+"/api/Factura/",factura);
  }

  updateCalculo(factura:Factura) {
    return this.http.put<Factura>(this.baseApiUrl+"/api/Factura/"+factura.id,factura);
  }


  delete(factura:Factura)
  {
    return this.http.delete<Factura>(this.baseApiUrl+"/api/Factura/"+factura.id);
  }
}
