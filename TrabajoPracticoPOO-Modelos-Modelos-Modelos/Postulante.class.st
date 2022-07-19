"
Los postulantes se postulan a solicitudes de trabajo para las cuales se evaluan diferentes aspectos.
"
Class {
	#name : #Postulante,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'createdAt',
		'updatedAt'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Modelos'
}

{ #category : #constructor }
Postulante class >> nuevoConNombre: unNombre [
	|postulante|.
	postulante := self new.
	postulante setNombre: unNombre.
	postulante setUpdatedAt .
	postulante setCreatedAt .
	^postulante .
]

{ #category : #getter }
Postulante >> getCreatedAt [
	^createdAt .
]

{ #category : #getter }
Postulante >> getNombre [
	^nombre.
]

{ #category : #getter }
Postulante >> getUpdatedAt [
	^updatedAt .
]

{ #category : #setter }
Postulante >> setCreatedAt [
	createdAt := Date today .
]

{ #category : #setter }
Postulante >> setNombre: unNombre [
	nombre := unNombre .
]

{ #category : #setter }
Postulante >> setUpdatedAt [
	updatedAt := Date today.
]
