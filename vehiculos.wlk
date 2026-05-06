import mensajeros.*
import destinos.*

object  bicicleta {
    method peso() {
        return 5
    } 

}

object  camion {

    var peso = 400 
    var cantidadAcoplados = 1

    method cantidadAcopladosQueTiene(unValor){
        cantidadAcoplados = unValor
        return cantidadAcoplados
    
    }

    method sumarUnAcoplado(unValor){
        cantidadAcoplados = cantidadAcoplados + unValor
        return cantidadAcoplados

    }
    method peso() {
        return peso
    
    }
}




