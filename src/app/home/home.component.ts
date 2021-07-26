import { Component, OnInit } from '@angular/core';
import { MaterialService } from '../services/material.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  public Grads: {};
  constructor( private materialesService: MaterialService) { 
    this.materialesService.getMaterialGrados().subscribe(
      res => {
        this.Grads = res;
        console.log(res);
      }
    );
  }
  

  ngOnInit(): void {
  }

}
