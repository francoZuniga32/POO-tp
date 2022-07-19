"
clase de row para usarse en una row de una tabla.
"
Class {
	#name : #Celd,
	#superclass : #Morph,
	#instVars : [
		'content'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Componentes'
}

{ #category : #getter }
Celd >> getContent [
	^content contents.
]

{ #category : #getter }
Celd >> getWidth [
	^self width.
]

{ #category : #initialization }
Celd >> setContent: aContent [
	content contents: aContent.
]

{ #category : #initialization }
Celd >> setWidth: aWidth heigth: aHeigth content: aContent [
	
	self extent: aWidth@aHeigth .
	self color: Color white.
	
	content := TextMorph new.
	content extent: aWidth@aHeigth .
	content top: self top .
	content left: self top.
	content center: self center.
	content color: Color black .
	
	content contents: aContent.
	
	self addMorph: content.
]
