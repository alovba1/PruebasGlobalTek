import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ListarComponentSeguimiento } from './Seguimiento/listar/listar.component';
import { LoginComponent } from './login/login.component';
import { FilterComponent } from './filter/filter.component';
import { AddComponentSeguimiento } from './Seguimiento/add/add.component';
import { EditComponentSeguimiento } from './Seguimiento/edit/edit.component';
import { AddComponent } from './Detalles/add/add.component';


const routes: Routes = [

  {path:'listar', component: ListarComponentSeguimiento},
  {path:'add', component: AddComponentSeguimiento},
  {path:'login', component: LoginComponent},
  {path:'filter', component: FilterComponent},
  {path:'edit', component: EditComponentSeguimiento},
  {path:'detal', component: AddComponent},
  { path: '', redirectTo: '/login', pathMatch: 'full' }, // Redirigir al componente de inicio de sesión por defecto.
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
