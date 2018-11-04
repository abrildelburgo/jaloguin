class Asustador{
	var property caramelos
	
	
	method asustar(adulto){
		adulto.recibirSusto(self)
	}
	
	method tieneMasDeCaramelos(cantidad) = self.caramelos() > cantidad
	
	method capAsustar()
	method caramelos()
	method elementosDeSusto()
	method recibirCaramelos(cantidad)
}
