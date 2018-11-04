import asustador.*

class Legion inherits Asustador{
	var property miembros
	
	constructor(unosMiembros){
		if(!unosMiembros.size()>=2){
			self.error("Una legion debe tener minimo 2 ninios")
		}
		miembros = unosMiembros
	}
	
	override method capAsustar() = miembros.sum({miembro => miembro.capSusto()})
	
	override method caramelos() = miembros.sum({miembro => miembro.caramelos()})
	
	method lider() = miembros.max({miembro => miembro.capAsustar()})
	
	override method recibirCaramelos(cantidad){
		self.lider().recibirCaramelos(cantidad)
	}
	
	override method elementosDeSusto() = miembros.flatMap({miembro => miembro.elementosDeSusto()})
}