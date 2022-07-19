Class {
	#name : #EC,
	#superclass : #Empresa,
	#instVars : [
		'producto'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Modelos'
}

{ #category : #converting }
EC >> asOrderedCollection [ 
	|collection|.
	collection := super asOrderedCollection .
	collection add: 'EC'.
	^collection .
]

{ #category : #getter }
EC >> getProducto [
	^producto
]

{ #category : #setter }
EC >> setCUIT: unCUIT nombre: unNombre descripcion: unaDescripcion rubro: unRubro incumbencias: unasIncumbencias producto: unProducto [
	super setCUIT: unCUIT nombre: unNombre descripcion: unaDescripcion rubro: unRubro incumbencias: unasIncumbencias .
	producto := unProducto.
]

{ #category : #setter }
EC >> setProducto: unProducto [
	producto := unProducto .	
]
