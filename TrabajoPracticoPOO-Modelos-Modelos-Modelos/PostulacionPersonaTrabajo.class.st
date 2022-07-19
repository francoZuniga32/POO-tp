Class {
	#name : #PostulacionPersonaTrabajo,
	#superclass : #PostulacionPersona,
	#instVars : [
		'trabajo'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Modelos'
}

{ #category : #initialization }
PostulacionPersonaTrabajo >> getTrabajo [
	^trabajo .
]

{ #category : #initialization }
PostulacionPersonaTrabajo >> setPersona: unaPersona trabajo: unTrabajo [
	persona := unaPersona .
	trabajo := unTrabajo .
]

{ #category : #initialization }
PostulacionPersonaTrabajo >> setTrabajo: unTrabajo [
	trabajo := unTrabajo.
]
