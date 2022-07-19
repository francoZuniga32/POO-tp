Class {
	#name : #PostulacionEmpresa,
	#superclass : #Object,
	#instVars : [
		'empresa',
		'servicio'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Modelos'
}

{ #category : #constructor }
PostulacionEmpresa class >> nuevoConEmpresa: unaEmpresa servicio: unServicio [
	|postulacionEmpresa|.
	postulacionEmpresa := self new.
	postulacionEmpresa setEmpresa: unaEmpresa servicio: unServicio .
	^postulacionEmpresa . 
]

{ #category : #getter }
PostulacionEmpresa >> getEmpresa [
	^empresa.
]

{ #category : #getter }
PostulacionEmpresa >> getServicio [
	^servicio.
]

{ #category : #setter }
PostulacionEmpresa >> setEmpresa: unaEmpresa [
	empresa := unaEmpresa .
]

{ #category : #initialization }
PostulacionEmpresa >> setEmpresa: unaEmpresa servicio: unServicio [
	empresa := unaEmpresa .
	servicio := unServicio.
]

{ #category : #setter }
PostulacionEmpresa >> setServicio: unServicio [
	servicio := unServicio .
]
