import { AbstractControl } from "@angular/forms";

export class UserValidator {

    static verificarDatos(c:AbstractControl){
      if(c.value==null)return null;
      if(c.value.indexOf(' ')>=0) {
        return {sinespacios:true}

      }
      return null;
    }
}