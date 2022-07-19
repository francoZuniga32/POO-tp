Class {
	#name : #Solicitud,
	#superclass : #Object,
	#instVars : [
		'titulo',
		'descripcion',
		'monto',
		'fechaVencimiento',
		'valido'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Modelos'
}

{ #category : #getter }
Solicitud >> descripcion [

	^ descripcion
]

{ #category : #setter }
Solicitud >> descripcion: anObject [

	descripcion := anObject
]

{ #category : #getter }
Solicitud >> fechaVencimiento [

	^ fechaVencimiento
]

{ #category : #setter }
Solicitud >> fechaVencimiento: anObject [

	fechaVencimiento := anObject
]

{ #category : #getter }
Solicitud >> monto [

	^ monto
]

{ #category : #setter }
Solicitud >> monto: anObject [

	monto := anObject
]

{ #category : #setter }
Solicitud >> setTitulo: unTitulo descripcion: unaDescripcion monto: unMonto fechaVencimiento: unaFechaDeVencimiento valido: esValido [
	titulo := unTitulo .
	descripcion := unaDescripcion .
	monto := unMonto.
	fechaVencimiento := unaFechaDeVencimiento .
	monto := unMonto.
	valido := esValido.	
]

{ #category : #getter }
Solicitud >> titulo [

	^ titulo
]

{ #category : #setter }
Solicitud >> titulo: anObject [

	titulo := anObject
]

{ #category : #getter }
Solicitud >> valido [

	^ valido
]

{ #category : #setter }
Solicitud >> valido: anObject [

	valido := anObject
]
