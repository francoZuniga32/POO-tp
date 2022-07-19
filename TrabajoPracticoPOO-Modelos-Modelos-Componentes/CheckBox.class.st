Class {
	#name : #CheckBox,
	#superclass : #Morph,
	#instVars : [
		'activo',
		'button',
		'label'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Componentes'
}

{ #category : #accessing }
CheckBox >> click [
	activo ifTrue: [ 
		button label: ''.	
	] ifFalse: [
		button label: 'x'.
	].
	activo := activo not.
	button extent: 20@20.
]

{ #category : #initialization }
CheckBox >> initialize [ 
	super initialize .
	
	self extent: 40@20.
	self color: Color white.
	self borderColor: Color gray.
	
	activo := false.
	
	"instanciamos un boton"
	button := BotonAccion new.
	button borderWidth: 1.
	button borderColor: Color gray.
	button label: ''.
	button extent: 20@20.
	button color: Color white.
	button top: self top.
	button left: self left.
	
	self addMorph: button .
	
	button mouseAction: [ self click ].
	
	
]

{ #category : #testing }
CheckBox >> isCheked [
	^activo .
]

{ #category : #accessing }
CheckBox >> label: aLabel [
	label := TextMorph new.
	label contents: aLabel asString.
	label enabled: false.
	label top: self top.
	label left: self left + 21.
	self addMorph: label.
	self extent: (22+label width)@20.
	
]
