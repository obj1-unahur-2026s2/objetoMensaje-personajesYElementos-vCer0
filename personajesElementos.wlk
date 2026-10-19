object luisa{
    var personajeActivo = mario
    method personajeActivo() = personajeActivo

    method cambiarJugador(personaje){
        personajeActivo = personaje
    }
    method aparece(elemento){
        personajeActivo.encontrar(elemento)
    }
}
object floki{
    var arma = ballesta
    method arma() = arma
    method encontrar(elemento){
        if (arma.estaCargada()){
            elemento.recibirAtaque(arma.potencia())
            arma.registrarUso()
        }
    }
    method cambiarDeArma(nuevaArma){
        arma = nuevaArma
    }
}
object mario{
    var valorRecolectado = 0
    var ultimoElementoEncontrado = aurora

    method encontrar(elemento){
        elemento.recibirTrabajo()
        valorRecolectado = valorRecolectado + elemento.valorQueOtorga()
        ultimoElementoEncontrado = elemento
    }
    method valorRecolectado() = valorRecolectado
    method estaFeliz(){
        return valorRecolectado > 49 or ultimoElementoEncontrado.altura()>9
    }
}
object ballesta{
    var flechas = 10
    const potencia = 4
    method flechas() = flechas
    method potencia() = potencia
    method estaCargada(){
        return flechas > 0
    }
    method registrarUso(){
        if (self.estaCargada()){
            flechas = flechas -1
        }
    }
}
object jabalina{
    var estaCargada = true
    const potencia = 30
    method potencia() = potencia
    method estaCargada(){
        return estaCargada
    }
    method registrarUso(){
        estaCargada = false
    }
}
object castillo{
    const altura = 20
    var nivelDeDefesa = 150
    method altura() = altura
    method nivelDeDefesa() = nivelDeDefesa
    method recibirAtaque(potencia){
        nivelDeDefesa = 0.max(nivelDeDefesa - potencia)
    }
    method valorQueOtorga(){
        return nivelDeDefesa / 5
    }
    method recibirTrabajo(){
        nivelDeDefesa = 200.min(nivelDeDefesa + 20)
    }
}
object aurora{
    const altura = 1
    var estaViva = true

    method estaViva(){
        return estaViva
    }
    method altura(){
        return altura
    }
    method recibirAtaque(potencia){
        if (potencia >= 10) estaViva = false
    }
    method valorQueOtorga(){
        return 15
    }
    method recibirTrabajo(){
    }
}
object tipa{
    var altura = 8
    method altura() = altura
    method recibirAtaque(potencia){
    }
    method valorQueOtorga(){
        return altura * 2
    }
    method recibirTrabajo(){
        altura = altura + 1
    }
}


/* 
METODOS:
cambiarJugador
aparece
encontrar
cambiarDeArma
estaFeliz
nivelDeDefesa
recibirTrabajo
altura
recibirAtaque
estaViva
*/