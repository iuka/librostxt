import { Component, OnInit } from '@angular/core';
import { SwiperOptions } from 'swiper';
import { LibrosService } from '../services/libros.service';

@Component({
  selector: 'app-libcar',
  templateUrl: './libcar.component.html',
  styleUrls: ['./libcar.component.css']
})
export class LibcarComponent implements OnInit {
  public Images: {};
  public Grados: any[];
  id:number;
  constructor( private ltgService: LibrosService) { 
    this.ltgService.getLibrosGrados().subscribe(
      (data: any[]) => {
        this.Grados = data;
        //console.log(this.Grados[0].id);
        this.libro(this.Grados[0].id);
      }
    );
  }
  
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

  ngOnInit(): void {}

  libro(i:number){
  //console.log(id);
  this.dat(i);
  this.id = i; 
  }

  dat(g:any){
    this.ltgService.postLibrosCont(g).subscribe(
      res => {
        //console.log(res);
        this.Images = res;
      }
    );
    return this.Images;


  }

}
