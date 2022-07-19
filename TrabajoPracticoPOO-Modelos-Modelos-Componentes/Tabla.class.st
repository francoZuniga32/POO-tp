"
tabla que contiene las diferentes rows.
"
Class {
	#name : #Tabla,
	#superclass : #Morph,
	#instVars : [
		'head',
		'body',
		'data',
		'rows',
		'positionTop',
		'bloqueUpdate'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Componentes'
}

{ #category : #'instance creation' }
Tabla class >> newWithWidth: aWidth heigth: aHeigth [
	|tabla|.
	tabla := self new.
	tabla setWidth: aWidth heigth: aHeigth .
	tabla setPositionTop: 0.
	^tabla.
]

{ #category : #initialization }
Tabla >> setBloqueUpdate: unBloque [
	bloqueUpdate := unBloque.
]

{ #category : #initialization }
Tabla >> setLabel: aLabel [
	head contents: (aLabel asString).
]

{ #category : #initialization }
Tabla >> setPositionTop: aPosition [
	positionTop := aPosition .
]

{ #category : #initialization }
Tabla >> setRowWithData: aData [
	body addRow: aData.
	self width: body width.
]

{ #category : #initialization }
Tabla >> setWidth: aWidth heigth: aHeigth [
	self extent: aWidth@aHeigth .
	self color: Color white.
	
	head := TextMorph new.
	head extent: aWidth@30.
	head color: Color white.
	head top: self top.
	head left: self left.
	self addMorph: head. 
	
	body := TablaBody new.
	body setWidth: (self width )heigth: (self height -30).
	body top: self top + 30.
	body left: self left.
	
	self addMorph: body.
	
	positionTop := body top.
]

{ #category : #initialization }
Tabla >> update: unObjeto [
	bloqueUpdate value:unObjeto value: self.
]

{ #category : #'as yet unclassified' }
Tabla >> vaciar [
	data := OrderedCollection .
	body vaciar .
]
