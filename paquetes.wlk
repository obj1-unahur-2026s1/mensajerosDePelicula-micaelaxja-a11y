import destinos.*
import mensajeros.*


object paquete {

    var property destino = matrix
    var property estaPago = true
    

    method puedeEntregarsePor(unMensajero){
        return  destino.dejaPasar(unMensajero) && estaPago
    }

    method registrarPago(){
        estaPago = true
    }

    method rechazarPago(){
        estaPago = false
    }

    method precio(){
        return 50
    }


}
object paquetito {
        var property destino = puenteDeBrooklyn

    method puedeEntregarsePor(unMensajero){
        return  destino.dejaPasar(unMensajero) && self.estaPago()
    }

    method precio(){
        return 0
    }
    method estaPago() {
        return true
    }

}

object paqueton{
    const destinos = #{matrix, puenteDeBrooklyn} //conjunto:no hay orden y no hay repetidos
    var valorPagado =  0

    method obtenerDestinos() = destinos

    method cantidadDeDestinos(){
        return destinos.size()
    }

    method puedeEntregarsePor(unMensajero){
        return  destinos.dejaPasar(unMensajero) && self.estaPago()
    }


    method precio(){
        return destinos.size() * 100
    }

    method registrarPago(unValor){
    
        valorPagado = (valorPagado +  unValor).min(self.precio())

    }

    method estaPago() {
        
        valorPagado == self.precio()
        return true
    
    }
}

object paqueteExpress {

    var property destino = matrix
    var peso = 10

    method puedeEntregarsePor(unMensajero){
        return  destino.dejaPasar(unMensajero) && self.estaPago()
    }

    method precio(){
        return 100
    }
    method estaPago() {
        return true
    }

    method peso(nuevoPeso) {
        peso = nuevoPeso
        return peso
    }
        
    }

