object knightRider {
    method peso() = 500
    method nivelDePeligrosidad() = 10
}

object bumblebee {
    var transformadoEn = auto

    method peso() = 800
    method nivelDePeligrosidad() = transformadoEn.nivelDePeligrosidad()
    method cambiarDeTransformacion(unaTransformacion) {
        transformadoEn = unaTransformacion
    }
}

object paqueteDeLadrillos {
    var cantidadDeLadrillos = 1

    method peso() = cantidadDeLadrillos * 2
    method nivelDePeligrosidad() = 2
    method añadirLadrillo() {
        cantidadDeLadrillos += 1
    }
}

object arenaAGranel {
    var peso = 1

    method peso() = peso
    method nivelDePeligrosidad() = 1
    method cambiarPeso(unPeso) {
        peso = unPeso
    }
}

object bateriaAntiaerea {
    var tieneMisiles = true
    var peso = 300

    method tieneMisiles() = tieneMisiles
    method peso1() = peso
    method peso() { }
    method ponerMisiles() {
        tieneMisiles = true
    }
    method sacarMisiles() {
        tieneMisiles = false
    }
}

object contenedorPortuario {
    const cosas = []

    method peso() {
        return 100 + self.pesoDeLasCosas().sum()
    }
    method pesoDeLasCosas() {
        return cosas.map({c => c.peso()})
    }
    method nivelDePeligrosidad() {
        return if (not cosas.isEmpty()) {
        self.listaDePeligrosidades().max()
    } else {
        0
    }
}
    method listaDePeligrosidades() {
        return cosas.map({c => c.nivelDePeligrosidad()})
    }
}

object residuosRadiactivos {
    var peso = 1

    method peso() = peso
    method nivelDePeligrosidad() = 200
    method cambiarPeso(unPeso) {
        peso = unPeso
    }
}

object embalajeDeSeguridad {
    var envuelveA = knightRider

    method peso() = envuelveA.peso()
    method nivelDePeligrosidad() = envuelveA.nivelDePeligrosidad() / 2
    method cambiarCosa(unaCosa) {
        envuelveA = unaCosa
    }
}