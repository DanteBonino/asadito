object sordo {
	method pasar(_unElemento, unComensal, pasador){
		pasador.efectuarPasajeDeElemento(pasador.primerElementoCercano(), unComensal)
	}
	
}

object asiMeDejasComerTranquilo{
	method pasar(_unElemento, unComensal, pasador){
		pasador.efectuarPasajeDeTodosLosElementosCercanos(unComensal)
	}
}

object asiDePasoCharlo{
	method pasar(_unElemento, unComensal, pasador){
		pasador.intercambiarPosicionCon(unComensal)
	}
}

object estandar{
	method pasar(unElemento, unComensal, pasador){
		pasador.efectuarPasajeDeElemento(unElemento, unComensal)
	}
}

/* Preguntar: */
/*
 * Haría falta herencia?
 * Podrían ser clases que conozcan a qué comensal "pertenecen" así no mando el pasador en cada vez?
 * 
 */