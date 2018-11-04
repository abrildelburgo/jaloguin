import asustador.*

class Ninio inherits Asustador{
	var property elementosDeSusto
	var property actitud
	var property estadoDeSalud = sano
	
	method actitud() = actitud * estadoDeSalud.multiplicador()
	
	override method capAsustar() = self.sustoDeSusElementos() * self.actitud()
	
	method sustoDeSusElementos() = elementosDeSusto.sum({elem => elem.capSusto()})

	override method recibirCaramelos(cantidad){
		caramelos += cantidad
	}

	method comerCaramelos(cantidad){
		if(cantidad > caramelos){
			self.error("No tenes esa cant de caramelos")
		}
		estadoDeSalud.comerCaramelos(cantidad,self)
		caramelos -= cantidad
	}
}