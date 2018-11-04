class Barrio{
	var property ninios
	
	method niniosOrdenadosPorCaramelos() = ninios.sort({ninio => ninio.caramelos()})
	
	method tresConMasCaramelos() = self.niniosOrdenadosPorCaramelos().take(3)

	method niniosConMasDe10Caramelos() = ninios.filter({ninio => ninio.tieneMasDeCaramelos(10)})
	
	method elementosDeNiniosSinRepetidos() = self.niniosConMasDe10Caramelos().flatMap({ninio=>ninio.elementosDeSusto()})


}