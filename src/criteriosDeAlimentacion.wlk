object vegetariano {
	method puedeComer(unaComida) = not unaComida.esCarne()
	
}

object aceptaSiempre{
	method puedeComer(_unaComida) = true
}

object rechazaSiempre{
	method puedeComer(_unaComida) = false
}

object dietetico{
	method puedeComer(unaComida){
		return unaComida.calorias() <= organizacionMundialDeLaSalud.caloriasRecomendadas()//Preguntar
	}
}

class Alternado{//Preguntar
	var property criterioActual = aceptaSiempre
	method puedeComer(unaComida){
		const loCome = criterioActual.puedeComer(unaComida)
		if(loCome) self.criterioActual(rechazaSiempre)
		else self.criterioActual(aceptaSiempre)
		return loCome
	}
}

class Combinacion{
	const criterios
	method puedeComer(unaComida){
		return criterios.all{unCriterio => unCriterio.puedeComer(unaComida)}
	}
}


object organizacionMundialDeLaSalud{
	method caloriasRecomendadas(){
		return 500
	}
}