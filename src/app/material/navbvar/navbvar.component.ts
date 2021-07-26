import { Component, OnInit } from '@angular/core';
import { ActivatedRoute} from '@angular/router';
import { MDBModalRef, MDBModalService } from 'ng-uikit-pro-standard';
import { ModfiltroComponent } from '../../modfiltro/modfiltro.component';
import { MaterialService } from '../../services/material.service';


@Component({
  selector: 'app-navbvar',
  templateUrl: './navbvar.component.html',
  styleUrls: ['./navbvar.component.css']
})
export class NavbvarComponent implements OnInit {
  perfil : any;
  public Grads: {};

  constructor(private router: ActivatedRoute, private modalService: MDBModalService, private materialesService: MaterialService) { 
    this.materialesService.getMaterialGrados().subscribe(
      res => {
        this.Grads = res;
        //console.log(res);
      }
    );
  }

  modalRef: MDBModalRef;
  ngOnInit(): void {
    this.router.params.subscribe(
      parametros => {
        //console.log("ruta padre");
        //console.log(parametros.id);
        this.perfil = parametros.id;
      }
    );
  }
  modalOptions = {
    backdrop: true,
    keyboard: true,
    focus: true,
    show: false,
    ignoreBackdropClick: false,
    class: 'modal-full-height modal-right',
    containerClass: 'right',
    animated: true

  }
  
  openModal() {
    this.modalRef = this.modalService.show(ModfiltroComponent, this.modalOptions);
  }

 
}
