import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class MaterialService {
  private url = 'http://tsiete.com.mx/librosdetexto/php-sql/';
  constructor( private http: HttpClient ) { }

  getMaterialGrados(){
    return this.http.get(
      `${this.url}material_grados.php`
    );
  }

  postMaterialCont(grd:any){
    const dato = {
      "grado": grd,
    }
    return this.http.post(
      `${this.url}material_cont.php`, dato
    );
  }

  postMaterialVid(id:number, grd: number){
    const dato = {
      "id": id,
      "grd": grd
    }
    return this.http.post(
      `${this.url}material_video.php`, dato
    );
  }

}
