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
        return self.tara() + self.pesoDeLasCosas()
    }
    method pesoDeLasCosas() {
        return cosas.map({c => c.peso()})
    }
    method sonPares() {
        return self.pesoDeLasCosas().all({c => c.even()})
    }
    method hayCosaDePeso(unPeso) {
        return self.pesoDeLasCosas().any({c => c == unPeso})
    }
    method tieneNivelDePeligrosidad(unNivel) {
        return cosas.find({c => c.nivelDePeligrosidad() == unNivel})
    }
    method superanNivelDePeligrosidad(unNivel) {
        return cosas.filter({c => c.nivelDePeligrosidad() > unNivel})
    }
    method superanElNivelD
}