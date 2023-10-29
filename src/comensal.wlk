import excepciones.*

class Comensal{
	const elementosCercanos = new List()
	var criterioParaPasar
	var property posicion
	const comidasRegistradas = new List()
	var criterioDeAlimentacion
	const criterioDeBienestar
	
	/* Punto 1 */
	method mePasasUnElemento(unElemento, otroComensal){
		otroComensal.pasarElementoA(unElemento, self)
	}
	
	method pasarElementoA(unElemento, unComensal){
		self.validarQueSeaElementoCercano(unElemento)
		criterioParaPasar.pasar(unElemento, unComensal)
	}
	
	method validarQueSeaElementoCercano(unElemento){
		if(not self.tieneElementoCerca(unElemento)) throw noTieneElElementoCerca
	}
	
	method tieneElementoCerca(unElemento){
		elementosCercanos.contains(unElemento)
	}
	
	method efectuarPasajeDeElemento(unElemento, otroComensal){
		otroComensal.agregarElementoCercano(unElemento)
		self.quitarElementoCercano(unElemento)
	}
	
	method agregarElementoCercano(unElemento){
		elementosCercanos.add(unElemento)
	}
	
	method quitarElementoCercano(unElemento){
		elementosCercanos.remove(unElemento)
	}
	
	method primerElementoCercano() = elementosCercanos.head()
	
	method efectuarPasajeDeTodosLosElementosCercanos(unComensal){
		elementosCercanos.forEach{unElemento => self.efectuarPasajeDeElemento(unElemento, unComensal)}
	}
	
	method intercambiarPosicionCon(otroComensal){
		const posicionActual = posicion
		self.posicion(otroComensal.posicion())
		otroComensal.posicion(posicionActual)
	}
	
	/* Punto 2 */
	method aComer(unaComida){
		if(criterioDeAlimentacion.puedeComer(unaComida)){
			self.registrarComida(unaComida)
		}
	}
	
	method registrarComida(unaComida){
		comidasRegistradas.add(unaComida)
	}
	
	/* Punto 3 */
	method estaPipon() = comidasRegistradas.any{unaComida => unaComida.esPesada()}
	
	/* Punto 4 */
	method laEstaPasandoDePerlangas(){
		return self.comioAlgo() and criterioDeBienestar.laPasoBien(self)
	}
	
	method comioAlgo(){
		return comidasRegistradas.size() > 0
	}
	
	method comioCarne(){
		return comidasRegistradas.any{unaComida => unaComida.esCarne()}
	}
	
	method cantidadElementosCercas() = elementosCercanos.size()
}
