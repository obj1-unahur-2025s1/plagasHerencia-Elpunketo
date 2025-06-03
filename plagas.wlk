
class Cucarachas inherits Plaga {
    var pesoPromedioBicho 
    method daño(){
        return poblacion / 2 
    }
    override method transmitirEnfermedades(){
        return super() && pesoPromedioBicho >= 10
    }
    override method efectoAtacar(){
        super()
        pesoPromedioBicho += 2
     }
     method pesoPromedioBicho() {return pesoPromedioBicho}
}

class Pulgas inherits Plaga{
    method daño(){
        return poblacion * 2
    }
}

class Garrapatas inherits Pulgas{
    override method efectoAtacar(){
        poblacion += (poblacion * 20 / 100)
    }
}

class Mosquitos inherits Plaga {
    method daño(){
        return poblacion
    }
    override method transmitirEnfermedades(){
        return super() && poblacion >= 10
    }
}

class Plaga {
    var poblacion
    method transmitirEnfermedades(){
        return poblacion >= 10
    }
    method efectoAtacar() {
        poblacion += (poblacion * 10 / 100)
    }
    method atacar(unElemento){
     unElemento.recibirAtaque(self)
     self.efectoAtacar()
    }
}