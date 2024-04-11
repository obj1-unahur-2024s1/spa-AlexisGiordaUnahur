import spa.*

object olivia{
	var gradoDeConcentracion = 6
	
	method recibirMasasjes(){
		gradoDeConcentracion += 3
	}
	
	method discutir(){
		gradoDeConcentracion -= 1
	}
	
	method gradoDeConcentracion() = gradoDeConcentracion
	
	method tomarBanoDeVapor(){
		
	}
}

object bruno{
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() = esFeliz
	method tieneSed() = tieneSed
	method peso() = peso
	
	method recibirMasajes(){
		esFeliz = true
	}
	
	method tomarBanoDeVapor(){
		peso -= 500
		tieneSed = true
	}
	
	method tomarAgua(){
		tieneSed = false
	}
	
	method comerFideos(){
		peso += 250
		tieneSed = true
	}
	
	method correr(){
		peso -= 300
	}
	
	method verNoticiero(){
		esFeliz = false
	}
	
	method estaPerfecto(){
		var estaPerfecto = false
		
		if (self.esFeliz() and 
			not self.tieneSed() and 
			self.peso().between(50000,70000)){
			estaPerfecto = true
		}
		
		return estaPerfecto
	}
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro{
	var nivelDeContractura = 0 //no sirve el max
	var tienePielGrasosa = true
	
	method nivelDeContractura() = nivelDeContractura
	method tienePielGrasosa() = tienePielGrasosa
	
	method recibirMasajes(){
		nivelDeContractura = (nivelDeContractura - 2).max(0)
	}
	
	method tomarBanoDeVapor(){
		tienePielGrasosa = false
	}
	
	method comerBigMac(){
		tienePielGrasosa = true
	}
	
	method bajarAFosa(){
		tienePielGrasosa = true
		nivelDeContractura += 1
	}
	
	method jugarPaddle(){
		nivelDeContractura += 3
	}
	
	method diaDeTrabajo(){
		self.bajarAFosa()
		self.comerBigMac()
		self.bajarAFosa()
	}
}




























