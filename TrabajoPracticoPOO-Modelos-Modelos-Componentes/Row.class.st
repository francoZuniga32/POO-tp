"
es el elemento que contiene a las celdas.
"
Class {
	#name : #Row,
	#superclass : #BorderedMorph,
	#instVars : [
		'celds',
		'width',
		'heigth'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Componentes'
}

{ #category : #accessing }
Row >> celds [

	^ celds
]

{ #category : #accessing }
Row >> heigth [

	^ heigth
]

{ #category : #initialization }
Row >> setHeigth: aHeigth data: aData [ 
	|tmpCeld positionLeft widthCelds|.
	
	celds := OrderedCollection new.
	widthCelds := 0.
	aData do: [ :data | 
		tmpCeld := Celd new.
		tmpCeld setWidth: 100 heigth: aHeigth content: (data asString).
		celds add: tmpCeld .
		widthCelds := widthCelds + 100.
	 ].

	positionLeft := 0.
	
	width := widthCelds .
	heigth := aHeigth .
	self extent: widthCelds@aHeigth .
	self color: Color white.
	
	celds do: [ :celd | 
		celd top: self top.
		celd left: self left + positionLeft .
		self addMorph: celd.
		positionLeft := positionLeft + 100.	
	].	
	
	
]

{ #category : #accessing }
Row >> width [
	^width .
]
