// Como ya sabemos crear objetos y definir algunos métodos simples, 
// algunos los tenemos parcialmente definidos. Completar todo los demás
// para satisfacer lo que pide el enunciado.

object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object milanesa {
	method precio() { return 2600  }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object salsaDeTomate {
	method precio() { return 900 }
	method esComida() { return true }
	method tipoComida() = comidaAderezo
	method esElectrodomestico() { return false }	
}

object microondas {
	method precio() { return 42000   }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cebollas {
	method precio() { return 250    }
	method esComida() { return true }
	method esElectrodomestico() { return false }
	method tipoComida() = comidaAderezo
		
}

object computadora {
	const  precioUSD = 500
	
	method precio() = precioUSD * dolar.precioDeVenta()
	method precioUSD() = precioUSD
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object dolar {
	var property precioBase = 500
	method precioDeVenta() =precioBase * 1.05
	method precioDeCompra() =precioBase * 0.95
}


object comidaAderezo {}

object packDeComida {
	var  plato 
	var  aderezos
	
	method esComida() { return true }
	method precio() { return plato.precio() + aderezos.precio()}
	method esElectrodomestico() { return false }	
	method plato() = plato
	method aderezos() = aderezos 
	
}