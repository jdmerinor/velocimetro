//: Playground - noun: a place where people can play

import UIKit


//Definición de la enumeración VelocidadesCarro
enum VelocidadesCarro : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50 ,VelocidadAlta = 120
    
    init (velocidadInicial : VelocidadesCarro){
        self = velocidadInicial
    }
}




//Definición de la clase Auto
class Auto{
    //Atributos
    var velocidad : VelocidadesCarro
    //Inicializadores
    init(){
        self.velocidad = VelocidadesCarro (velocidadInicial: .Apagado)
    }
    //Métodos
    func cambioDeVelocidad () -> ( actual : Int, velocidadEnCadena: String){
        let cadena :String
        switch self.velocidad{
        case .Apagado:
            velocidad = .VelocidadBaja
            cadena = "Velocidad Baja"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            cadena = "Velocidad Media"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            cadena = "Velocidad Alta"
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            cadena = "Velocidad Media"
        }
        
        return (actual: velocidad.rawValue,cadena)
    }
}




//Creación de una instancia de vehículo
let miVehiculo = Auto()

//Se prueba el método de cambio de velocidad 20 veces
for i in 1...20{
    let nuevaVelocidad = miVehiculo.cambioDeVelocidad()
    print("Iteración \(i). \(nuevaVelocidad)")
}


/*Es de notar que en la especificación se indica que el método cambioDeVelocidad() debe devolver la velocidad actual en la que
queda el vehículo y que cuando esté en la velocidad alta se devuelva a la velocidad media, sin embargo en la salida que dan de muestra
*/
