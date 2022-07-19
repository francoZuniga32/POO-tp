"
Una empresa puede postularse para recolver solicitudes de servicios.
"
Class {
	#name : #Empresa,
	#superclass : #Postulante,
	#instVars : [
		'CUIT',
		'descripcion',
		'rubro',
		'incumbencias'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Modelos'
}

{ #category : #constructor }
Empresa class >> nuevoConDescripcion: unaDescripcion rubro: unRubro aptitudes: unasAptitudes [
	|empresa|.
	empresa := self new.
	empresa setDescripcion: unaDescripcion rubro: unRubro aptitudes: unasAptitudes .
	^empresa.
]

{ #category : #getter }
Empresa >> asOrderedCollection [ 
	|collection|.
	
	collection := OrderedCollection new.
	collection add: CUIT asNumber .
	collection add: nombre asString.
	collection add: descripcion asString.
	collection add: rubro asString.
	collection add: incumbencias asString.
	
	^collection .
]

{ #category : #getter }
Empresa >> getCUIT [
	^ CUIT.
]

{ #category : #getter }
Empresa >> getDescription [ 
	^descripcion .
]

{ #category : #getter }
Empresa >> getIncumbencias [
	^incumbencias .
]

{ #category : #getter }
Empresa >> getRubro [
	^rubro.
]

{ #category : #setter }
Empresa >> setCUIT: unCUIT nombre: unNombre descripcion: unaDescripcion rubro: unRubro incumbencias: unasIncumbencias [
	CUIT := unCUIT .
	nombre := unNombre .
	descripcion := unaDescripcion .
	rubro := unRubro .
	incumbencias := unasIncumbencias .
]

{ #category : #setter }
Empresa >> setDescripcion: unaDescripcion [
	descripcion := unaDescripcion .
]

{ #category : #initialization }
Empresa >> setIncumbencias: unasIncumbencias [
	incumbencias := unasIncumbencias .
]

{ #category : #setter }
Empresa >> setRubro: unRubro [
	rubro := unRubro .
]
