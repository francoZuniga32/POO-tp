Class {
	#name : #Servicio,
	#superclass : #Solicitud,
	#instVars : [
		'producto'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Modelos'
}

{ #category : #getter }
Servicio >> producto [

	^ producto
]

{ #category : #setter }
Servicio >> producto: anObject [

	producto := anObject
]

{ #category : #setter }
Servicio >> setTitulo: unTitulo descripcion: unaDescripcion monto: unMonto fechaVencimiento: unaFechaDeVencimiento valido: esValido producto: unProducto [
	super setTitulo: unTitulo descripcion: unaDescripcion monto: unMonto fechaVencimiento: unaFechaDeVencimiento valido: esValido .
	self producto: unProducto .
]
