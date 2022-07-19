Class {
	#name : #PostulacionPersonaServicio,
	#superclass : #PostulacionPersona,
	#instVars : [
		'servicio'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Modelos'
}

{ #category : #constructor }
PostulacionPersonaServicio class >> nuevoConPersona: unaPersona servicio: unServicio [
	|postulacionPersonaServicio|.
	postulacionPersonaServicio := self new.
	postulacionPersonaServicio setPersona: unaPersona servicio: unServicio .
	^postulacionPersonaServicio . 
]

{ #category : #initialization }
PostulacionPersonaServicio >> getServicio [ 
	^servicio .
]

{ #category : #initialization }
PostulacionPersonaServicio >> setPersona: unaPersona servicio: unServicio [
	persona:= unaPersona.
	servicio := unServicio .
]

{ #category : #initialization }
PostulacionPersonaServicio >> setServicio: unServicio [
	servicio := unServicio .
]
