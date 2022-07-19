Class {
	#name : #Producto,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'descripcion'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Modelos'
}

{ #category : #initialization }
Producto >> setNombre: unNombre descripcion: unaDescripcion [
	nombre := unNombre .
	descripcion := unaDescripcion .
]
