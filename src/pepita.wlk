object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}
	
	method energia(){
		return energia
	}

	method vola(kms) {
		energia -= 10 + kms
	}
	
	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
		}
		
	method estaFeliz(){
		return energia.between(500,1000)	
	}
	
	method cuantoQuiereVolar(){
		energia = energia / 5
		
		if(energia.between(300,400)){
			return energia + 10
		}
		if(energia % 20 == 0){
			return energia + 15
		}
		return energia
	}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras(){
		if(self.estaCansada()){
			self.come(alpiste)
		}
		if(self.estaFeliz()){
			self.vola(8)
		}
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var energia = 0
	
	method mojarse(){
		energia = 15
	}
	
	method secarse(){
		energia = 20
	}
	method energiaQueOtorga(){
		return energia
	}
}

object canelones{
	var energia = 20
	var tieneSalsa = false
	var tieneQueso = false
	
	method ponerSalsa(){
		if(not tieneSalsa){
			energia += 5
			tieneSalsa = true
		}
	}
	
	method ponerQueso(){
		if(not tieneQueso){
			energia += 7
			tieneQueso = true
		}
	}	
	
	method sacarSalsa(){
		if(tieneSalsa){
			energia -= 5
			tieneSalsa = false
		}
	}
	
	method sacarQueso(){
		if(tieneQueso){
			energia -= 7
			tieneQueso = false
		}
	}
	
	method energiaQueOtorga(){
		return energia
	}
	
}

object roque {
	method entrenar(){
		pepita.vola(10)
		pepita.come(alpiste)
		pepita.vola(5)
		pepita.haceLoQueQuieras()
	}
}
