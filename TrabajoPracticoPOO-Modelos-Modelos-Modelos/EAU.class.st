"
Empresa de Actividad Uniforme
"
Class {
	#name : #EAU,
	#superclass : #Empresa,
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Modelos'
}

{ #category : #converting }
EAU >> asOrderedCollection [ 
	|collection|.
	collection := super asOrderedCollection .
	collection add: 'EAU'.
	^collection .
]
