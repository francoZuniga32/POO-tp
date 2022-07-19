Class {
	#name : #Trabajo,
	#superclass : #Solicitud,
	#instVars : [
		'fechaRealizacion'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Modelos'
}

{ #category : #accessing }
Trabajo >> fechaRealizacion [

	^ fechaRealizacion
]

{ #category : #accessing }
Trabajo >> fechaRealizacion: anObject [

	fechaRealizacion := anObject
]

{ #category : #initialization }
Trabajo >> setTitulo: unTitulo descripcion: unaDescripcion monto: unMonto fechaVencimiento: unaFechaDeVencimiento valido: esValido fechaRealizacion: unaFechaDeRealizacion [
	super setTitulo: unTitulo descripcion: unaDescripcion monto: unMonto fechaVencimiento: unaFechaDeVencimiento valido: esValido .
	self fechaRealizacion: unaFechaDeVencimiento .
]
