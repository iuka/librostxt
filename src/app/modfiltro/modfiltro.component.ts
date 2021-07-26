import { Component, OnInit } from '@angular/core';
import { MDBModalRef } from 'ng-uikit-pro-standard';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-modfiltro',
  templateUrl: './modfiltro.component.html',
  styleUrls: ['./modfiltro.component.css']
})
export class ModfiltroComponent implements OnInit {

  constructor(public modalRef: MDBModalRef) { }
  selectedValue = 0;
  optionsSelect: Array<any>;
  public filtro = {
    palabra: "",
    asignatura: <object>[],
    bloque1: false,
    bloque2: false,
    bloque3: false,
    libro: false,
    video: false,
    interactivo: false,
    audio: false,
    documento: false
  }
  ngOnInit(): void {
    this.filtro.asignatura = [
      { value: '1', label: 'Español' },
      { value: '2', label: 'Matematicas' },
      { value: '3', label: 'Historia' },
      { value: '4', label: 'Ciencias' },
    ];
    
    console.log(this.filtro.asignatura);
  }
  
  buscar(forma: NgForm){
    if(forma.value.bloque1 || forma.value.bloque2 || forma.value.bloque3 || forma.value.video || forma.value.libro || forma.value.interactivo || forma.value.audio || forma.value.documento || forma.value.palabra != "" || forma.value.asignatura){
      console.log(forma.value);
      //https://www.tutorialesprogramacionya.com/angularya/detalleconcepto.php?codigo=9
    }else{
      console.log('no hay nada seleccionado');
    }
  }

}
