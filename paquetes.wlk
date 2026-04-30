import destinos.*
import mensajeros.*


object paquete {

    var property destino = puenteDeBrooklyn
    var property estaPago = false
    

    method puedeEntregarsePor(unMensajero){
        return  unMensajero.puedeEntregarEn(destino)
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
            return  destino.dejaPasar(unMensajero)
    }

    method precio(){
        return 0
    }
    method estaPago() {
        return true
    }

}

object paqueton{
    const destinos= #{}
    var valorPagado =  0

    method precio(){
        return destinos.size() * 100
    }

    method registrarPago(unValor){
        valorPagado = (valorPagado +  unValor).min(self.precio())

    }
    method estaPago() {
        valorPagado == self.precio()
    
    }
    method puedeEntregarsePor(unMensajero){
            return  destinos.dejaPasar(unMensajero)
    }
}

