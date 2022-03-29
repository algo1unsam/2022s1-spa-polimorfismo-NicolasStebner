import personas.*

object spa{
	var ultimaPersona = null
	method atender(persona){
		if (self.ultimaPersona() == persona){
			persona.recibeMasajes()
		}
		ultimaPersona = persona
		persona.recibeMasajes()
		persona.seDaBanioVapor()
	}
	
	method ultimaPersona(){
		return ultimaPersona
	}
	
	
	
	
	
}