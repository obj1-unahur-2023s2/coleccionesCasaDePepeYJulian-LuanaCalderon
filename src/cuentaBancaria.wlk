import casa.*
import cosas.*


object cuentaBancaria {
	 var saldo = 0
	

    method depositar(unImporte) {saldo += unImporte - 200}
    
	method saldo() = saldo
    
	 method extraer(unImporte) { 
	 	var comision = unImporte * 0.02
	 	if (unImporte <= 10000) { saldo -= unImporte + 200 } 
	 	else { saldo -= unImporte + comision }
	}
   
  
}



object cuentaCombinada {
    var cuentaPrimaria 
    var cuentaSecundaria 

    method depositar(importe) {
        cuentaPrimaria.depositar(importe)
    }

    method extraer(importe) {
        if (cuentaPrimaria.saldo() >= importe) {
            cuentaPrimaria.extraer(importe)
        } else {
            cuentaSecundaria.extraer(importe)
        }
    }

    method obtenerSaldo() {
        return cuentaPrimaria.saldo() + cuentaSecundaria.saldo()
    }
    
    method obtenerCuentaPrimaria() = cuentaPrimaria
    method obtenerCuentaSecundaria() = cuentaSecundaria
}
