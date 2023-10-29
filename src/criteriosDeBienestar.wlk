object noPoneObjeciones {
	method laPasoBien(_unComensal) = true
	
}

object seSentroEnLaPrimerPosicion{
	method laPasoBien(unComensal) = unComensal.posicion() == 1 /* Límite donde delegarlo en comensal no aportaría nada al resto de comensales */
}

object carnivor{
	method laPasoBien(unComensal) = unComensal.comioCarne()
}

object noMasDe3ElementosCerca{
	method laPasoBien(unComensal) = unComensal.cantidadElementosCerca() < 3
}