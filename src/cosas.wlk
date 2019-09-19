object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object unKiloDeMilanesasRebozadas {
	var precio = 260
	method precio() { return precio }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}
object saltaTomate{
	var precio = 90
	method precio() { return precio }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}
object microondas{
	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }
}
object kiloCebollas {
	method precio() { return 25 }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}
object computadora {
	var precio = 500 * dolar.cotizacion()
	method precio() { return precio }
	method esComida() { return false }
	method esElectrodomestico() { return true }
}
object packComida{
	var plato
	var aderezo 
	var precio = plato.precio() + aderezo.precio()
	method elegirPlato(unaComida){ plato = unaComida}
	method elegirAderezo(unAderezo){aderezo = unAderezo}
	method precio(){return precio}
	method esComida() { return true}
	method esElectrodomestico() { return false}  
}

object packRegalo{
	var componentes= []
	method precio() { return componentes.sum({unComponente => unComponente.precio()}) * 0.2 }
	method esComida() { return componentes.all({unComponente => unComponente.esComida()}) }
	method esElectrodomestico() { return componentes.any({unComponente => unComponente.esElectrodomestico()}) }
}
object dolar{
	method cotizacion(){
		return 59.61
	}
}