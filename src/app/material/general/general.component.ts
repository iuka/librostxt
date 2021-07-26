import { Component, OnInit } from '@angular/core';
import { MDBModalRef, MDBModalService } from 'ng-uikit-pro-standard';
import { SwiperOptions } from 'swiper';
import { ModinfoComponent } from '../../modinfo/modinfo.component';
import { ActivatedRoute } from '@angular/router';
import { MaterialService } from '../../services/material.service';



@Component({
  selector: 'app-general',
  templateUrl: './general.component.html',
  styleUrls: ['./general.component.css']
})
export class GeneralComponent implements OnInit {
  
  grado: number;

  public Images: {};

  config: SwiperOptions = {
    slidesPerView: 5,
    spaceBetween: 20,
    slidesPerGroup: 5,
    loop: false,
    loopFillGroupWithBlank: false,
    breakpoints: {
      1368: {
        slidesPerView: 5,
        slidesPerGroup: 5,
      },
      1023: {
        slidesPerView: 5,
        slidesPerGroup: 5,
      },
      768: {
        slidesPerView: 3,
        slidesPerGroup: 3,
      },
      320: {
        slidesPerView: 2,
        slidesPerGroup: 2,
        
      },
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
    
  };  
  
  modalRef: MDBModalRef;
  
  constructor(private modalService: MDBModalService, private router: ActivatedRoute , private materialService: MaterialService) { 

    this.router.parent?.params.subscribe(
      parametros => {
        //console.log("ruta hija");
        //console.log(parametros.id);
        this.grado = parametros.grd;
        this.dat(this.grado)
      }
    );
  }
  
  ngOnInit(): void {}
  
  dat(g:any){
   
    this.materialService.postMaterialCont(g).subscribe(
      res => {
        this.Images = res;
        console.log(res);
        //console.log(this.Images);
      }
    );

  }
  rutaredirect(rut:any){
    //console.log(rut);
    window.open( rut.url, "_blank" );
  }
 
  openModalinfo(dat: any,gd:number) {

    //console.log(dat);
    
    this.modalRef = this.modalService.show(
      ModinfoComponent, 
      {
        backdrop: true,
        keyboard: true,
        focus: true,
        show: false,
        ignoreBackdropClick: false,
        class: 'modal-lg animated bounceInUp',
        containerClass: '',
        animated: true,
        data: {
          grado:gd,
          content: dat 
        }
      }  
    );
  }

}
