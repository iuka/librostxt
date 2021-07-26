import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'titulo'
})
export class TituloPipe implements PipeTransform {

  transform(value: string){
    return value = value.slice(0,50);
  }

}
