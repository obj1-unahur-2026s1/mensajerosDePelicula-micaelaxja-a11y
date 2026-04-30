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

    method puedeEntregarEn(unDestino) {
        return unDestino.dejaPasar(self) && paquete.estaPago()
    }

    method puedeLlamar(){ //no puede llamar a nadie
        return false

    }
}

object chuckNorris { //polimorfismo ->puedeLlamar() && pesoTotal()


    var property peso = 80  //atributo propio de chuck

    method peso(){  //
        return 80

    }
    method puedeLlamar() {
        return true
    
    }
    method puedeEntregarEn(unDestino) {
        return unDestino.dejaPasar(self) && paquete.estaPago()
    }

}

object neo{  //polimorfismo ->puedeLlamar() && pesoTotal()


    method peso(){
        return 0

    }        
    method puedeLlamar(){
        return celular.tieneCreditoActualmente()
}



    method puedeEntregarEn(unDestino) {
        return unDestino.dejaPasar(self) && paquete.estaPago()
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