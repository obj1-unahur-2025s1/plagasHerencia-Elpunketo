class Hogar {
    var mugre
    const confort
    method esBueno() {return confort >= mugre / 2}
    method recibirAtaque(unaPlaga){
        mugre += unaPlaga.daño()
    }
    method mugre() {return mugre}
}

class Huerta {
    var produccion
    method esBueno() {return produccion > nivelMinimoProduccion.valor()}
    method recibirAtaque(unaPlaga){
        if(unaPlaga.transmitirEnfermedades()){
           produccion -= (unaPlaga.daño() * 10 / 100) + 10
        }
        else{
            produccion -= (unaPlaga.daño() * 10 / 100)
        }
    }
}

object nivelMinimoProduccion {
    var property valor = 100
}

class Mascota {
    var salud
    method esBueno() {return salud > 100}
    method recibirAtaque(unaPlaga){
        if(unaPlaga.transmitirEnfermedades()){
            salud -= unaPlaga.daño()
        }
    }
}

class Barrio{
    const elementos = []
    method esBueno(unElemento){
        return unElemento.esBueno()
    }
    method esCopado(){
        return self.cantidadElementosBuenos() > self.cantidadElementosMalos()
    }
    method cantidadElementosBuenos(){
        return elementos.count({c=>c.esBueno()})
    }
    method cantidadElementosMalos(){
        return elementos.size() - self.cantidadElementosBuenos()
    }
}