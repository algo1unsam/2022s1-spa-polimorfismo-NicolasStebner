import spa.*

object olivia {
	var concentracion = 6
	
	method recibeMasajes(){
		concentracion += 3
	}
	method seDaBanioVapor(){
		
	}
	method discute(){
		concentracion -= 1
	}
	
	method gradoDeConcentracion(){
		return concentracion
	}
}

object bruno{
	var feliz = true
	var sed = false
	var peso = 55000 //55000 gramos
	method feliz(){
		return feliz
	}
	
	/*method feliz(_feliz){
		feliz = _feliz
	}*/
	method sed(){
		return sed
	}
	
	method peso(){
		return peso
	}
	
	method pesoIdeal(){
		//return self.peso()>50000 && self.peso() < 70000
		return self.peso().between(50000,70000)
	}

	method recibeMasajes(){
		feliz = true
	}
	
	method seDaBanioVapor(){
		peso -= 500
		sed = true
	}
	
	method tomaAgua(){
		sed = false
	}
	
	method comeFideos(){
		peso += 250
		sed = true
	}
	
	method corre(){
		peso -= 300
	}
	
	method veElNoticiero(){
		feliz = false
	}
	
	method estaPerfecto(){
		return self.feliz() && !self.sed() && self.pesoIdeal()
	}
	
	method mediodiaEnCasa(){
		
		self.comeFideos()
		self.tomaAgua()
		self.veElNoticiero()
		
	}
}

object ramiro{
	var contracturado = 5
	var pielGrasosa = true 
		
	method nivelDeContracturado(){
		return contracturado
	}
	
	method nivelDeContracturado(_contracturado){
		contracturado = _contracturado
	}
	method pielGrasosa(){
		return pielGrasosa
	} 
	
	method pielGrasosa(_pielGrasosa){
		pielGrasosa = _pielGrasosa
	}
	
	method recibeMasajes(){
		/*if (contracturado-2 < 0){
		   contracturado = 0
		}
		else{
			contracturado -= 2	
		} Es lo mismo que esta abajo basicamente
		* */ 
		
		contracturado -= 2 //-2
		contracturado = contracturado.max(0)
		/*  Lo que hace es que si contracturado es menor a cero
		lo reeemplaza por cero*/
	}
	
	method seDaBanioVapor(){
		pielGrasosa = false
	}
	
	method comeUnBigMac(){
		pielGrasosa = true
	}
	
	method bajaALaFosa(){
		pielGrasosa = true
		contracturado += 1
	}
	
	method juegaAlPaddle(){
		contracturado += 3
	}
	
	method diaDeTrabajo(){
		self.bajaALaFosa()
		self.comeUnBigMac()
		self.bajaALaFosa()
	}
	
}