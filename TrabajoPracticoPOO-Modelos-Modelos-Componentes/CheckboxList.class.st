"
esta agrupa una serie de checkbox para poder seleccionar uno solo
"
Class {
	#name : #CheckboxList,
	#superclass : #BorderedMorph,
	#instVars : [
		'checkboxList',
		'activo',
		'width',
		'heigth'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Componentes'
}

{ #category : #initialization }
CheckboxList >> initialize [
	super initialize .
	self extent: 100@30.
	self position: 10@10.
	self color: Color white.
	
	checkboxList := OrderedCollection new.
	
	
]

{ #category : #initialization }
CheckboxList >> setChekboxWithLabel: aLabel [
	|checkbox leftFlag|.
	leftFlag := 0.
	
	checkbox := CheckboxMorph new.
	checkbox label: aLabel.
	checkbox extent: 50@self height .
	checkboxList add: checkbox .
	
	checkboxList do: [ :ch |
		ch top: self top.
		ch left: self left + leftFlag .
		leftFlag := leftFlag + 50.
		self addMorph: ch.	
	].
]

{ #category : #initialization }
CheckboxList >> setWidth: aWidth heigth: aHeight [ 
	self extent: aWidth@aHeight .
]
