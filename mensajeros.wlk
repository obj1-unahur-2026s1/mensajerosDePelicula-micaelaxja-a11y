import paquetes.*
import destinos.*
import vehiculos.*


object roberto { //polimorfismo ->puedeLlamar() && pesoTotal()

    var property vehiculo = bicicleta //Roberto: Roberto viaja en bicicleta o camión
    var peso = 90

    method pesoTotal(){ //Si viaja en bicicleta, el peso que cuenta es el suyo propio más 5,
        return vehiculo.peso() + peso

    }
    method cambiarPeso(nuevoPeso){ //el peso de roberto puede variar
            peso = nuevoPeso
    }

    method peso() {
        return peso
    }

    method puedePasarPorTodosLosDestinos(unDestino){
        return unDestino.dejaPasar(self)
    }

    method puedeEntregar(unPaquete){
        return paquete.estaPago() && self.peso() < 100
    }

    method puedeLlamar(){ //no puede llamar a nadie
        return false

    }
}

object chuckNorris { //polimorfismo ->puedeLlamar() && pesoTotal()

    var property vehiculo = bicicleta
    var property peso = 80  //atributo propio de chuck

    method peso(){  //
        return 80

    }
    method puedeLlamar() {
        return true
    
    }
    method puedePasarPorTodosLosDestinos(unDestino){
        return unDestino.dejaPasar(self)
    }
    method puedeEntregar(unPaquete){
        return paquete.estaPago() && self.peso() == 100
    }


}

object neo{  //polimorfismo ->puedeLlamar() && pesoTotal()

    var property vehiculo = bicicleta

    method peso(){
        return 0

    }        
    method puedeLlamar(){
        return celular.tieneCreditoActualmente()
}



    method puedePasarPorTodosLosDestinos(destino){
        return destino.dejaPasar(self)
    }

    method puedeEntregar(unPaquete){
        return paquete.estaPago() && self.peso() < 100
    }

}

object micaela{
    var peso = 70

    var property destino = matrix

    var property vehiculo = bicicleta

    method peso(){
        return peso

    }        
    method puedeLlamar(){
        return not celular.tieneCreditoActualmente() // no puede llamar
    }

    method puedePasarPorTodosLosDestinos(unDestino){
        return destino.dejaPasar(self) && vehiculo.peso() > 200
    }

    method puedeEntregar(unPaquete){
        return paquete.estaPago() && self.peso() < 100
    }

}

object celular{


    var property  tieneCredito = true
    var property creditoDisponible = 10

    method tieneCreditoActualmente(){
            creditoDisponible > 1

            return true
    
        }
}
