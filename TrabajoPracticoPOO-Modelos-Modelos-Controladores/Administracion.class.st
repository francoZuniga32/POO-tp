"
Esta es la clase de administracion.
esta clase se encarga de la administracion de las postulaciones, solicitudes y ademas de esto realiza algunas operaciones diarias y otras relacionadas con informacion.

Constructor: 
"
Class {
	#name : #Administracion,
	#superclass : #Object,
	#instVars : [
		'empresas',
		'empresasPostulantes',
		'empresasSolicitantes',
		'personas'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Controladores'
}

{ #category : #initialization }
Administracion class >> setEmpresaSolicitante: empresaSolicitante [
	empresaSolicitante add: empresaSolicitante .
]

{ #category : #accessing }
Administracion >> getEmpresa: arg1 [

	| tmp1 tmp3 |
	self getEmpresas
		ifNotEmpty: [ 
			tmp3 := self getEmpresas
				        detect: [ :arg2 | arg2 getCUIT asNumber == arg1 asNumber ]
				        ifNone: nil ]
		ifEmpty: [ tmp3 := nil ].
	self changed.
	^ tmp3
]

{ #category : #accessing }
Administracion >> getEmpresaSolicitante: unCUIT [
	^ self getEmpresasSolicitantes detect: [ :x |
		 x getCUIT = unCUIT.
	] ifNone: nil.
]

{ #category : #initialization }
Administracion >> getEmpresas [
	^empresas.
]

{ #category : #initialization }
Administracion >> getEmpresasSolicitantes [ 
	^empresasSolicitantes .
]

{ #category : #initialization }
Administracion >> initialize [  
	empresas := OrderedCollection new.
	empresasPostulantes := OrderedCollection new.
	empresasSolicitantes := OrderedCollection new.
	personas := OrderedCollection new.
]

{ #category : #initialization }
Administracion >> setEmpresa: unaEmpresa [
	empresas add: unaEmpresa.
]

{ #category : #initialization }
Administracion >> setEmpresaSolicitante: unaEmpresaSolicitante [
	empresasSolicitantes add: unaEmpresaSolicitante .
]
