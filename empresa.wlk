import mensajeros.*
import destinos.*
import paquetes.*
import vehiculos.*

object mensajeria{

    const property mensajeros = []

    const paquetesPendientes = []

    const paquetesEntregados =[]

    const paquetesParaEnviar = #{}

    var property paquete1 = paquete
    

    //creo un method obtenerMensajeros() para poder hacer los test, y que conla constante no se puede.
    method obtenerMensajeros() = mensajeros

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
        if (mensajeros.isEmpty()) {
        return null // O lanzar un error personalizado con un mensaje claro
    }
        return mensajeros.first()
    }

    method elPrimerEmpleadoPuedeEntregar(unPaquete){
        const empleado = self.primerEmpleado()
        if(empleado ==  null){

            return false
        }
        else{
            return empleado.puedeEntregar(unPaquete)
        }
        
    }

    method pesoUltimoMensajero() {
        return self.ultimoMensajero().peso()
    
    }

    method ultimoMensajero(){
        return mensajeros.last()
    }

    method pesoTotalDeTodosLosMensajeros(){
        return mensajeros.sum({m => m.peso()})
        //por cada elemento m de la lista le pido que me diga su peso total.
    }
 //Se necesita: 
 //tengo que hacer los test de estos ultimos requerimientos y entregar el trabajo.

    method alMenosUnMensajeroPuedeEntregar(unPaquete){
    return mensajeros.any({ m => m.puedeEntregar(unPaquete)})
    }

    method losQuePuedenLlevar(unPaquete){
        return mensajeros.filter({m => m.puedeEntregar(unPaquete)})//devuelve una lista
    }

    method tieneSobrePeso(){
        return self.pesoTotalDeTodosLosMensajeros() / self.cantidadDeMensajeros() > 500

    }

    method cantidadDeMensajeros(){
        return mensajeros.size()
    }

    method enviar_(unPaquete){
        if(self.alMenosUnMensajeroPuedeEntregar(unPaquete)){
            paquetesEntregados.add(unPaquete)
            return true
        }
        else{
            paquetesPendientes.add(unPaquete)
            return false
        }
    }

    method facturacionDeLaEmpresa(){
        return self.totalGanado() 
    }

    method totalGanado(){
        return paquetesEntregados.sum({p=> p.precio()})
    }

    method paqueteEnviado(unPaquete){
        return paquetesEntregados.add(unPaquete)
    }
    
    method enviarTodosLosPaquetes(){
        paquetesParaEnviar.forEach({p => self.enviar_(p)})//
        paquetesParaEnviar.clear()

    }

    method paquetePendienteMasCaro(){
       return  paquetesPendientes.max({p=> p.precio()}) //me devuelve un objeto PAQUETE
    
    }

    method enviarPaqueteMascaro(){
        const masCaro = self.paquetePendienteMasCaro()

        self.enviar_(masCaro)
        return paquetesPendientes.remove(masCaro)
        }

    method conjuntoDePaquetesEntregados(){
        return []
    }
    
    }


