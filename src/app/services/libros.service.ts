import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';


@Injectable({
  providedIn: 'root'
})
export class LibrosService {
  //private url = 'http://tsiete.com.mx/librosdetexto/php-sql/';
  private url = '13-LTG_php-sql/';
  
  constructor( private http: HttpClient ) { }

  getLibrosGrados(){
    return this.http.get(
      `${this.url}Ltg_grados.php`
    );
  }

  postLibrosCont(grd:any){
    const dato = {
      "grado": grd,
    }
    return this.http.post(
      `${this.url}Ltg_cont.php`, dato
    );
  }
}
