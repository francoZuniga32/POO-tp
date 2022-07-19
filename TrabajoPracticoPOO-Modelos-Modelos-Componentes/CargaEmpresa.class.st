"
este es el registro de empresa
"
Class {
	#name : #CargaEmpresa,
	#superclass : #BorderedMorph,
	#instVars : [
		'controladorCargaEmpresa',
		'entradaNombre',
		'entradaDescripcion',
		'entradaRubro',
		'entradaIncumbencias',
		'tipoEmpresa',
		'entradaProducto'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Componentes'
}

{ #category : #initialization }
CargaEmpresa >> initialize [  
	| ancho alturaFlag  labelNombre labelDescripcion  labelTipoEmpresa |.
	alturaFlag := 10.
	ancho := 500.
	
	super initialize .
	
	labelNombre := LabelMorph new.
	labelNombre contents: 'Nombre: '.
	labelNombre extent: ancho-20@40.
	labelNombre top: self top + 10.
	labelNombre left: self left + 10.
	
	alturaFlag := alturaFlag + labelNombre height .
	
	entradaNombre := Input new.
	entradaNombre setWidth: (ancho-20) heigth: 40.
	entradaNombre top: self top + alturaFlag .
	entradaNombre left: self left + 10.
	
	alturaFlag := alturaFlag + entradaNombre height .
	
	labelDescripcion := LabelMorph new.
	labelDescripcion extent: ancho - 20@40.
	labelDescripcion contents: 'Descripcion: '.
	labelDescripcion top: self top + alturaFlag .
	labelDescripcion left: self left + 10.
	
	alturaFlag := alturaFlag + labelDescripcion height .
	
	entradaDescripcion := Input new.
	entradaDescripcion setWidth: (ancho -20) heigth: 40.
	entradaDescripcion top: self top + alturaFlag .
	entradaDescripcion left: self left + 10.
	
	alturaFlag := alturaFlag + entradaDescripcion height .
	
	labelTipoEmpresa := LabelMorph new.
	labelTipoEmpresa contents: 'Tipo de Empresa: '.
	labelTipoEmpresa extent: ancho - 20@40.
	labelTipoEmpresa top: self top + alturaFlag .
	labelTipoEmpresa left: self left + 10.
	
	alturaFlag := alturaFlag + labelTipoEmpresa height .
	
	tipoEmpresa := CheckboxList new.
	tipoEmpresa setWidth: (ancho -20) heigth: 40.
	tipoEmpresa setChekboxWithLabel: 'EAP'.
	tipoEmpresa setChekboxWithLabel: 'EAM'.
	tipoEmpresa setChekboxWithLabel: 'EC'.
	tipoEmpresa top: self top + alturaFlag .
	tipoEmpresa left: self left + 10.
	
	alturaFlag := alturaFlag + tipoEmpresa height .
	
	self addMorph: labelNombre.
	self addMorph: entradaNombre .
	self addMorph: labelDescripcion .
	self addMorph: entradaDescripcion .
	self addMorph: labelTipoEmpresa  .
	self addMorph: tipoEmpresa .
	
	self extent: ancho@(alturaFlag + 10).
	self position: 100@100.
	self color: Color white.
	  
]

{ #category : #initialization }
CargaEmpresa >> initilize [ 
	| ancho alturaFlag  labelNombre labelDescripcion  labelTipoEmpresa |.
	alturaFlag := 10.
	ancho := 500.
	
	super initialize .
	
	labelNombre := LabelMorph new.
	labelNombre label: 'Nombre: '.
	labelNombre extent: ancho-20@40.
	labelNombre top: self top + 10.
	labelNombre left: self left + 10.
	
	alturaFlag := alturaFlag + labelNombre height .
	
	entradaNombre := Input new.
	entradaNombre setWidth: (ancho-20) heigth: 40.
	entradaNombre top: self top + alturaFlag .
	entradaNombre left: self left + 10.
	
	alturaFlag := alturaFlag + entradaNombre height .
	
	labelDescripcion := LabelMorph new.
	labelDescripcion extent: ancho - 20@40.
	labelDescripcion contents: 'Descripcion: '.
	labelDescripcion top: self top + alturaFlag .
	labelDescripcion left: self left + 10.
	
	alturaFlag := alturaFlag + labelDescripcion height .
	
	entradaDescripcion := Input new.
	entradaDescripcion setWidth: (ancho -20) heigth: 40.
	entradaDescripcion top: self top + alturaFlag .
	entradaDescripcion left: self left + 10.
	
	alturaFlag := alturaFlag + entradaDescripcion height .
	
	labelTipoEmpresa := LabelMorph new.
	labelTipoEmpresa contents: 'Tipo de Empresa: '.
	labelTipoEmpresa extent: ancho - 20@40.
	labelTipoEmpresa top: self top + alturaFlag .
	labelTipoEmpresa left: self left + 10.
	
	alturaFlag := alturaFlag + labelTipoEmpresa height .
	
	tipoEmpresa := CheckboxList new.
	tipoEmpresa setWidth: (ancho -20) heigth: 40.
	tipoEmpresa setChekboxWithLabel: 'EAP'.
	tipoEmpresa setChekboxWithLabel: 'EAM'.
	tipoEmpresa setChekboxWithLabel: 'EC'.
	tipoEmpresa top: self top + alturaFlag .
	tipoEmpresa left: self left + 10.
	
	alturaFlag := alturaFlag + tipoEmpresa height .
	
	self addMorph: labelNombre.
	self addMorph: entradaNombre .
	self addMorph: labelDescripcion .
	self addMorph: entradaDescripcion .
	self addMorph: labelTipoEmpresa  .
	self addMorph: tipoEmpresa .
	
	self extent: (alturaFlag + 10)@ancho.
	self position: 100@100.
	self color: Color white.
	  
]
