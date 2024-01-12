export class Vehicle {
    id:number;
    brand:string;
    color:string;
    transmission:string;
    pathimg:string;
    

    constructor(id:number,brand:string,color:string,transmission:string,pathimg:string)
    {
     this.id=id;
     this.brand=brand;
     this.color=color;
     this.transmission=transmission;
     this.pathimg=pathimg;
    }

}