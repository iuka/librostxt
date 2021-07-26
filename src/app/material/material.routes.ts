import { Routes } from '@angular/router';
import { BuscarComponent } from './buscar/buscar.component';
import { GeneralComponent } from './general/general.component';
import { InfoComponent } from './info/info.component';




export const MATERIAL_ROUTES: Routes = [
    { path: 'buscar', component: BuscarComponent },
    { path: 'general', component: GeneralComponent },
    { path: 'info/:id', component: InfoComponent },
    { path: '**', pathMatch: 'full', redirectTo: 'general' }
];
