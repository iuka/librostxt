import { Component, OnInit } from '@angular/core';
import { MDBModalRef, MDBModalService } from 'ng-uikit-pro-standard';
import { SwiperOptions } from 'swiper';
import { ModinfoComponent } from '../../modinfo/modinfo.component';

@Component({
  selector: 'app-buscar',
  templateUrl: './buscar.component.html',
  styleUrls: ['./buscar.component.css']
})
export class BuscarComponent implements OnInit {

  Images: Array<any> = [
    {
      src: 'https://mdbootstrap.com/img/Photos/Lightbox/Thumbnail/img%20(147).jpg',
      alt: 'Image 1',
    }, {
      src: 'https://loremflickr.com/cache/resized/3247_2772038048_9e0f39f0df_z_600_400_nofilter.jpg',
      alt: 'Image 2'
    }     
  ]

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
  constructor(private modalService: MDBModalService) { }

  ngOnInit(): void {
  }

  modalOptions2 = {
    backdrop: true,
    keyboard: true,
    focus: true,
    show: false,
    ignoreBackdropClick: false,
    class: 'modal-lg animated bounceInUp',
    containerClass: '',
    animated: true

  }


  openModalinfo() {
    this.modalRef = this.modalService.show(ModinfoComponent, this.modalOptions2);
  }

}
