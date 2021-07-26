import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { MaterialComponent } from './material/material.component';
import { MATERIAL_ROUTES } from './material/material.routes';


const routes: Routes = [

  { path: '', redirectTo: 'inicio', pathMatch: 'full' },
  { path: 'inicio', component: HomeComponent },
  { path: 'material/:grd', component: MaterialComponent, children: MATERIAL_ROUTES },
  { path: '**', component: HomeComponent }
  

];



@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    RouterModule.forRoot(routes)
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
