import mensajeros.*
import destinos.*
import paquetes.*
import vehiculos.*

object mensajeria{
    const mensajeros = []

    method contratarUnMensajero(unMensajero){
        mensajeros.add(unMensajero)
    }

    method despedirUnMensajero(unMensajero){
        mensajeros.remove(unMensajero)
    }

    method despedirATodos() {
        mensajeros.clear()
    
    }

    method esGrande(){
        return  mensajeros.size() > 2
    }

    method primerEmpleado(){
        return mensajeros.first()
    }

    method elPrimerEmpleadoPuedeEntregar(unPaquete){
        return unPaquete.puedeEntregarse(self.primerEmpleado())
    }

    method pesoUltimoMensajero() {
        return self.ultimoMensajero().pesoTotal()
    
    }

    method ultimoMensajero(){
        return mensajeros.last()
    }

    method pesoTotalDeTodosLosMensajeros(){
        return mensajeros.sum({m => m.pesoTotal()})
        //por cada elemento m de la lista le pido que me diga su peso total.
    }

    method alMenosUnMensajeroPuedeEntregar(unPaquete){
        return mensajeros.any({m => unPaquete.puedeEntregarse(m)})
    }

    method losQuePuedenLlevar(unPaquete){
        return mensajeros.filter({m => unPaquete.puedeEntregarse(m)})
    }


//for Each no devuelve nada en la coleccion. Solo le da una indicacion a cada elemento de la coleccion.
//sum(transformer) 
//sum, suma una lista con numeros

}