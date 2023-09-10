import cosas.* 
import cuentaBancaria.*

object casaDePepeYJulian {
	const  cosas = []
	var property cuentaBancaria
	

	
	method comprar(cosa) {
        cosas.add(cosa)
        cuentaBancaria.extraer(cosa.precio())
    }
    
	method cantidadDeCosasCompradas() = cosas.size()
	
	method tieneComida() =  cosas.any({cosa => cosa.esComida()})
	
	method vieneDeEquiparse() {} // CONSULTAR 
	
	method esDerrochona() = cosas.sum({cosa => cosa.precio()}) >= 90000
	
	method compraMasCara() = cosas.max({cosa => cosa.precio()})	
	
	method electrodomesticosComprados() = cosas.filter({cosa => cosa.esElectrodomestico()})
	
	method malaEpoca() = cosas.all({cosa => cosa.esComida()})
	
	method queFaltaComprar(lista) {} //CONSULTAR
	
	method faltaComida() = cosas.filter({cosa => cosa.esComida()}).size() < 2
	
	method gastar(importe) = cuentaBancaria.extraer(importe)
    
	method dineroDisponible() = cuentaBancaria.saldo()
    
	
	
	
}
