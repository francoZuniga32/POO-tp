Class {
	#name : #TablaBody,
	#superclass : #ScrollPane,
	#instVars : [
		'body',
		'positionTop',
		'width'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Componentes'
}

{ #category : #constructor }
TablaBody class >> nuevoConWidth: aWidth heigth: aHeigth [
	|tablaBody|.
	tablaBody := self new.
	tablaBody setWidth: aWidth heigth: aHeigth .
	^tablaBody.
]

{ #category : #adding }
TablaBody >> addRow: aData [
	|tmpRow condicion|.
	
	tmpRow := Row new.
	tmpRow setHeigth: 30 data: aData.
	tmpRow top: body top + positionTop .
	tmpRow left: body left.
	positionTop := positionTop + 30.
	
	body addMorph: tmpRow.
	condicion := (tmpRow  width) > (self width).
	condicion ifTrue: [ 
		body width: (tmpRow width).
		self width: (tmpRow width).	
	].
]

{ #category : #accessing }
TablaBody >> body [

	^ body
]

{ #category : #accessing }
TablaBody >> body: anObject [
	body := anObject
]

{ #category : #initialization }
TablaBody >> setWidth: aWidth heigth: aHeigth [  
	self extent: aWidth@aHeigth .
	width := aWidth .
	
	body := ScrollPane new.
	self scroller addMorph: body.
	body extent: 100@300 .
	body color: Color blue.
	body top: self top.
	body left: self left.
	
	
	positionTop := body top.
]

{ #category : #accessing }
TablaBody >> vaciar [
	positionTop := body top.
	body submorphsDo:[ :morph |
		morph delete.
	].
	
]
