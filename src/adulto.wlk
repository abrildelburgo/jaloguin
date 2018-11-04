class Adulto{
	var property cantidadChicosMas15	
	
	method tolerancia() = 10 * cantidadChicosMas15
	
	method recibirSusto(ninio){
		if(self.seAsusta(ninio)){
			self.entregarCaramelos(ninio)
		}
		if(ninio.tieneMasDeCaramelos(15)){
			cantidadChicosMas15 += 1
		}
	}
	
	method seAsusta(ninio) = self.tolerancia() < ninio.capSusto()
		
	method entregarCaramelos(ninio){
		ninio.recibirCaramelos(self.cantidadQueEntrega())
	}
	
	method cantidadQueEntrega() = self.tolerancia()/2
}

class Abuelo inherits Adulto{
	override method seAsusta(ninio) = true
	override method cantidadQueEntrega() = super()/2
}

class AdultoNecio inherits Adulto{
	override method seAsusta(ninio) = false
}