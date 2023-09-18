import cosas.* 
import cuentaBancaria.*

object casaDePepeYJulian {
	const  cosas = []
    var  cosasCompradas = cosas.map({cosa => cosa.comprar()}) 
    var cosasFaltantes = cosas.filter({cosa => not cosasCompradas.contains(cosa.comprar())})
    
	method comprar(cosa) {
        cosas.add(cosa)
        cuentaBancaria.extraer(cosa.precio())
    }
    
	method cantidadDeCosasCompradas() = cosas.size()
	
	method tieneComida() =  cosas.any({cosa => cosa.esComida()})
	
	 method vieneDeEquiparse() {
        if (cosas.isEmpty()) {
            return false
        }
        var ultimaCosaComprada = cosas.last()
        return ultimaCosaComprada.esElectrodomestico() || ultimaCosaComprada.precio() > 50000
    }
	
	method esDerrochona() = cosas.sum({cosa => cosa.precio()}) >= 90000
	
	method compraMasCara() = cosas.max({cosa => cosa.precio()})	
	
	method electrodomesticosComprados() = cosas.filter({cosa => cosa.esElectrodomestico()})
	
	method malaEpoca() = cosas.all({cosa => cosa.esComida()})

	method queFaltaComprar(lista) = lista.filter({ cosa => not cosasCompradas.contains(cosa.comprar())})
	
	method faltaComida() = cosas.filter({cosa => cosa.esComida()}).size() < 2
	
	method gastar(unImporte) { cuentaBancaria.extraer(unImporte)}
    
	method dineroDisponible() = cuentaBancaria.saldo()
	
    
	
	
	
}
