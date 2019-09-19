import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa){
		cosas.add(cosa)
	}
	method cantidadDeCosasCompradas(){
		return cosas.size()
	}
	method tieneComida(){
		return cosas.any({unaCosa => unaCosa.esComida()})
	}
	method vieneDeEquiparse(){
		return 	cosas.last().precio() > 5000 or 
			   	cosas.last().esElectrodomestico() 
	}
	method esDerrochona(){
		return cosas.sum({unaCosa => unaCosa.precio()})
	}
	method compraMasCara(){
		return cosas.max({unaCosa => unaCosa.precio()})
	}
	method electrodomesticosComprados(){		
		return cosas.filter({unaCosa => unaCosa.esComida()})
	}
	method malaEpoca(){
		return cosas.all({unaCosa => unaCosa.esComida()})
	}
	method queFaltaComprar(lista){
		var cosasCompradas = cosas.asSet()
		return cosasCompradas.difference(lista)
	}
	method faltaComida(){
		return cosas.count({unaCosa => unaCosa.esComida()}) < 3
	}
	method gastoEnComida(){
		var listaDeComidas = []
		listaDeComidas = cosas.filter({cosa => cosa.esComida()})
		return listaDeComidas.sum({comida => comida.precio()})
	}
	method hayElectrodomesticosBaratos(){
		return cosas.any({
			cosa => cosa.esElectrodomestico() and cosa.precio() < 3000
		})
	}
	method preciosdeElectrodomesticos(){
		
	}
}
