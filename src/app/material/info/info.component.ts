import { Component, Input, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { MaterialService } from '../../services/material.service';

@Component({
  selector: 'app-info',
  templateUrl: './info.component.html',
  styleUrls: ['./info.component.css']
})
export class InfoComponent implements OnInit {
  public grado: number;
  public informa: any;
  @Input() id: number;

  constructor( private router: ActivatedRoute, private materialService: MaterialService ) {
    this.router.parent?.params.subscribe(
      parametros => {
        //datos de la ruta padre
        //console.log(parametros.grd);
        this.grado = parametros.grd;
      }
    );
    this.router.params.subscribe(
      parametros => {
        //identidicador del video
        //console.log(parametros.id);
        this.id = parametros.id;
      }
    );

    

  }
    
  ngOnInit(): void {
    this.materialService.postMaterialVid(this.id, this.grado).subscribe(
      res => {
        this.informa = res;
        console.log(res);
      }
    );
  }

  ver(url: string){
    window.open( "https://www.youtube.com/watch?v="+url, "_blank" );
  }
  descarga(url: string){
    window.open( url, "_blank" );
  }

}
