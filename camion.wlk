object camion {
    const cosas = []

    method tara() = 1000
    method cargarCosa(unaCosa) {
        cosas.add(unaCosa)
    }
    method descargarCosa(unaCosa) {
        cosas.remove(unaCosa)
    }
    method pesoTotal() {
        return self.tara() + self.pesoDeLasCosas().sum()
    }
    method pesoDeLasCosas() {
        return cosas.map({c => c.peso()})
    }
    method sonPares() {
        return cosas.all({c => c.peso().even()})
    }
    method hayCosaDePeso(unPeso) {
        return cosas.any({c => c.peso() == unPeso})
    }
    method tieneNivelDePeligrosidad(unNivel) {
        return cosas.find({c => c.nivelDePeligrosidad() == unNivel})
    }
    method superanNivelDePeligrosidad(unNivel) {
        return cosas.filter({c => c.nivelDePeligrosidad() > unNivel})
    }
    method superanElNivelDePeligrosidadDeLaCosa(unaCosa) {
        return cosas.filter({c => c.nivelDePeligrosidad() > unaCosa.nivelDePeligrosidad()})
    }
    method excedeElPesoMaximo() {
        return self.pesoTotal() > 2500
    }
    method puedeCircular(unNivel) {
        return not self.excedeElPesoMaximo() and self.superanNivelDePeligrosidad(unNivel).isEmpty()
    }
}