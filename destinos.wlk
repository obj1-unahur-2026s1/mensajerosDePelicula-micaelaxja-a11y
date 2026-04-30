import paquetes.*
import mensajeros.*

//Puente de Brooklyn: deja pasar a todo lo que pese hasta una tonelada.
object puenteDeBrooklyn{
        method dejaPasar(unMensajero){
            return unMensajero.peso() <= 1000
        }
}
//La Matrix: deja entrar a quien pueda hacer una llamada
object  matrix {

    method dejaPasar(unMensajero) {
        if(unMensajero.puedeLlamar()){
            return "puede pasar"
        }
        else{
            return "no puede pasar"
        }
    }
}