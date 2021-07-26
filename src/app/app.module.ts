import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { NgModule, NO_ERRORS_SCHEMA } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { AppComponent } from './app.component';
import { AppRoutingModule } from './app-routing.module';



import { MDBSpinningPreloader, MDBBootstrapModulesPro, ToastModule } from 'ng-uikit-pro-standard';
import { MdbCalendarModule } from 'mdb-calendar';
import { MdbColorPickerModule } from 'mdb-color-picker';
import { MdbDraggableModule } from 'mdb-draggable';
import { MdbFileUploadModule } from 'mdb-file-upload';
import { MdbSortableModule } from 'mdb-sortable';
import { MdbTableEditorModule } from 'mdb-table-editor';
import { MdbWysiwygModule } from 'mdb-wysiwyg';
import { HomeComponent } from './home/home.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { NgxUsefulSwiperModule } from 'ngx-useful-swiper';
import { LibcarComponent } from './libcar/libcar.component';
import { MaterialComponent } from './material/material.component';
import { GeneralComponent } from './material/general/general.component';
import { ModinfoComponent } from './modinfo/modinfo.component';
import { ModfiltroComponent } from './modfiltro/modfiltro.component';
import { DescripcionPipe } from './pipes/descripcion.pipe';
import { SafePipe } from './pipes/safe.pipe';
import { TituloPipe } from './pipes/titulo.pipe';
import { NavbvarComponent } from './material/navbvar/navbvar.component';
import { BuscarComponent } from './material/buscar/buscar.component';
import { InfoComponent } from './material/info/info.component';



@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    HeaderComponent,
    FooterComponent,
    LibcarComponent,
    MaterialComponent,
    GeneralComponent,
    ModinfoComponent,
    ModfiltroComponent,
    DescripcionPipe,
    SafePipe,
    TituloPipe,
    NavbvarComponent,
    BuscarComponent,
    InfoComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    FormsModule,
    HttpClientModule,
    ToastModule.forRoot(),
    MDBBootstrapModulesPro.forRoot(),
    MdbCalendarModule,
    MdbColorPickerModule,
    MdbDraggableModule,
    MdbFileUploadModule,
    MdbSortableModule,
    MdbTableEditorModule,
    MdbWysiwygModule,
    NgxUsefulSwiperModule,
  ],
  providers: [MDBSpinningPreloader],
  bootstrap: [AppComponent],
  schemas:      [ NO_ERRORS_SCHEMA ]
})
export class AppModule { }
