"
Una empresa solicitante es una empresa que solicita servicios o trabajo.
"
Class {
	#name : #EmpresaSolicitante,
	#superclass : #Object,
	#instVars : [
		'empresa',
		'solicitudes'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Modelos'
}

{ #category : #constructor }
EmpresaSolicitante class >> nuevoConEmpresa: unaEmpresa solicitudes: unasSolicitudes [
	|empresaSolicitante|
	empresaSolicitante := self new.
	empresaSolicitante setEmpresa: unaEmpresa solicitudes: unasSolicitudes .
	^empresaSolicitante . 
]

{ #category : #getter }
EmpresaSolicitante >> aCollection [
	|collection|.
	collection := OrderedCollection new.
	collection add: Empresa; add: solicitudes .
	^collection .
]

{ #category : #getter }
EmpresaSolicitante >> equels: unaEmpresaSolicitante [
	^ empresa equels: unaEmpresaSolicitante getEmpresa.
]

{ #category : #getter }
EmpresaSolicitante >> getEmpresa [
	^empresa.
]

{ #category : #getter }
EmpresaSolicitante >> getSolicitudes [ 
	^solicitudes.
]

{ #category : #setter }
EmpresaSolicitante >> setEmpresa: unaEmpresa [
	empresa := unaEmpresa .
]

{ #category : #setter }
EmpresaSolicitante >> setEmpresa: unaEmpresa solicitudes: unasSolicitudes [
	empresa := unaEmpresa .
	solicitudes := unasSolicitudes .
]

{ #category : #setter }
EmpresaSolicitante >> setSolicitud: unaSolicitud [
	solicitudes add: unaSolicitud .
]
