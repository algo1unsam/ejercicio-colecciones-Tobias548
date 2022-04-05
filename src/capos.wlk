object rolando {
	var mochila = #{}
	var historial = []
	method encontrarObjeto(objeto){
		historial.add(objeto)
		if (mochila.size()<2){
			mochila.add(objeto)
		} 
	}
	method objetosEncima(){
		return mochila
	}
	method vaciarMochila(){
		mochila.clear()
	}
	method objetosTotales(){
		return self.objetosEncima() + castillo.almacenado()
	}
	method historial(){
		return historial
	}
	method cantidadObjetosEncima(){
		return mochila.size()
	}
}
object castillo{
	var almacenado = #{}
	method almacenar(persona){
		almacenado.addAll(persona.objetosEncima())
		persona.vaciarMochila()
	}
	method almacenado(){
		return almacenado
	}
		method cantidadObjetosEncima(){
		return almacenado.size()
	}
}
object espada{}
object libro{}
object collar{}
object armadura{}
