"
entrada de datos.
"
Class {
	#name : #Input,
	#superclass : #Morph,
	#instVars : [
		'label',
		'input'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Componentes'
}

{ #category : #initialization }
Input >> getContent [
	^input getText.
]

{ #category : #initialization }
Input >> getHeith [
	^self height .
]

{ #category : #initialization }
Input >> getWidth [
	^self width .
]

{ #category : #initialization }
Input >> initialize [
	super initialize .
	self color: Color white.
	self extent: 100@40.
	
	input := RubTextFieldMorph new.
	input extent: (self width)@(self height)/2;
	left: self left +1;
	bottom: self bottom.
	self addMorph: input.
]

{ #category : #accessing }
Input >> label [

	^ label contents.
]

{ #category : #accessing }
Input >> label: aText [
	label := LabelMorph new.
	label top: self top.
	label left: self left.
	label extent: (self width)@(self height)/2.
	label contents: aText asString.
	self addMorph: label.
]

{ #category : #initialization }
Input >> setContent: aContent [
	input contents: ''.
	input contents: (aContent asString).
]

{ #category : #initialization }
Input >> setWidth: aWidth heigth: aHeigth [
	self extent: aWidth@aHeigth .
	input extent: aWidth@aHeigth .
	input top: self top.
	input left: self left.
]
