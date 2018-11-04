object sano{
	var property mutiplicador = 1
	
	method comerCaramelos(cantidad,ninio){
		if(cantidad > 10){ ninio.estadoDeSalud(empachado) }
	}
}

object empachado{
	var property mutiplicador = 0.5
	
	method comerCaramelos(cantidad,ninio){
		if(cantidad > 10){ ninio.estadoDeSalud(enCama) }
	}
}

object enCama{
	var property mutiplicador = 0
	
	method comerCaramelos(cantidad,ninio){
		self.error("No puede comer mas caramelos")
	}
}