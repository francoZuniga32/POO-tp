"
clase de boton accion
"
Class {
	#name : #BotonAccion,
	#superclass : #SimpleButtonMorph,
	#instVars : [
		'bloque',
		'bloqueAccion'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Componentes'
}

{ #category : #accessing }
BotonAccion >> mouseAction: aBlock [
	bloqueAccion := aBlock.
]

{ #category : #accessing }
BotonAccion >> mouseUp: unEvento [
	super mouseUp: unEvento.
	bloqueAccion value.
]
