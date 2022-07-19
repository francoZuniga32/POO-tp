Class {
	#name : #CeldOperation,
	#superclass : #Celd,
	#instVars : [
		'botonAccion'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Componentes'
}

{ #category : #accessing }
CeldOperation >> action: aBlock [
	accion := aBlock.
]

{ #category : #accessing }
CeldOperation >> mouseAction: unBloque [
	bloqueAccion := unBloque.
]

{ #category : #accessing }
CeldOperation >> mouseUp: unEvento [
	super mouseUp: unEvento.
	bloqueAccion value.
]

{ #category : #initialization }
CeldOperation >> setDependant: unObjet [
	unObjet addDependent: botonAccion .
]
