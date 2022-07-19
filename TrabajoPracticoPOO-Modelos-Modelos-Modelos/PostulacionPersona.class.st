"
clase de postulacion persona
"
Class {
	#name : #PostulacionPersona,
	#superclass : #Object,
	#instVars : [
		'persona'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Modelos'
}

{ #category : #constructor }
PostulacionPersona class >> nuevoConPersona: unaPersona [
	|postulacionPersona|.
	postulacionPersona := self new.
	postulacionPersona setPersona: unaPersona .
	^postulacionPersona .
]

{ #category : #getter }
PostulacionPersona >> getPersona [
	^persona.
]

{ #category : #initialization }
PostulacionPersona >> setPersona: unaPersona [
	persona := unaPersona.
]
