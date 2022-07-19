"
Empresa de Actividad Particular
"
Class {
	#name : #EAP,
	#superclass : #Empresa,
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Modelos'
}

{ #category : #converting }
EAP >> asOrderedCollection [ 
	|collection|.
	collection := super asOrderedCollection .
	collection add: 'EAP'.
	^collection .
]
