import { Component, OnInit } from '@angular/core';
import { MDBModalRef } from 'ng-uikit-pro-standard';

@Component({
  selector: 'app-modinfo',
  templateUrl: './modinfo.component.html',
  styleUrls: ['./modinfo.component.css']
})
export class ModinfoComponent implements OnInit {
  content: any;
  grado: number;
  
  constructor(public modalRef: MDBModalRef) {
  }
  
  ngOnInit(): void {

   }

   download(rut:any){
    //console.log(rut);
    window.open( rut, "_blank" );
  }

}
