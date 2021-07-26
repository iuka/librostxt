import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'descripcion'
})
export class DescripcionPipe implements PipeTransform {

  transform(value: string){
    return value = value.slice(0,50)+" ...";
  }

}
