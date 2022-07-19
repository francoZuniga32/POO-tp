"
Tabla donde se visualizan y operan con empresas.
"
Class {
	#name : #TablaEmpresas,
	#superclass : #Morph,
	#instVars : [
		'controlador',
		'empresas',
		'tabla'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Vistas'
}

{ #category : #initialization }
TablaEmpresas >> getControlador [
	^controlador .
]

{ #category : #initialization }
TablaEmpresas >> initialize [ 
	super initialize .
	tabla := Tabla new.
	tabla setWidth: 600 heigth: 300.
	tabla setLabel: 'Empresas '.
	"instanciamos una tabla."
	
	self addMorph: tabla.
	
	empresas := OrderedCollection new.
]

{ #category : #'as yet unclassified' }
TablaEmpresas >> recargarTabla [
	tabla vaciar.
	empresas do: [ :empresa |
		tabla setRowWithData: (empresa asOrderedCollection) .
	].
	

]

{ #category : #initialization }
TablaEmpresas >> setControlador: unControlador [
	controlador := unControlador .
	controlador addDependent: self.
]

{ #category : #updating }
TablaEmpresas >> update: unObjeto [
	empresas := unObjeto getEmpresas.
	self recargarTabla .
]
