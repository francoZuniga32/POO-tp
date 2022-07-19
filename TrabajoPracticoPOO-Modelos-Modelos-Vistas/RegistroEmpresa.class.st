"
formulario de registro de persona.
"
Class {
	#name : #RegistroEmpresa,
	#superclass : #Morph,
	#instVars : [
		'controlador',
		'CUIT',
		'nombre',
		'descripcion',
		'rubro',
		'incumbencias',
		'EAU',
		'EAP',
		'EC',
		'producto',
		'solicitante',
		'guardar',
		'cancelar'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Vistas'
}

{ #category : #accessing }
RegistroEmpresa >> cUIT [

	^ CUIT
]

{ #category : #accessing }
RegistroEmpresa >> cUIT: anObject [

	CUIT := anObject
]

{ #category : #accessing }
RegistroEmpresa >> descripcion [

	^ descripcion
]

{ #category : #accessing }
RegistroEmpresa >> descripcion: anObject [

	descripcion := anObject
]

{ #category : #accessing }
RegistroEmpresa >> eAP [

	^ EAP
]

{ #category : #accessing }
RegistroEmpresa >> eAP: anObject [

	EAP := anObject
]

{ #category : #accessing }
RegistroEmpresa >> eAU [

	^ EAU
]

{ #category : #accessing }
RegistroEmpresa >> eAU: anObject [

	EAU := anObject
]

{ #category : #accessing }
RegistroEmpresa >> eC [

	^ EC
]

{ #category : #accessing }
RegistroEmpresa >> eC: anObject [

	EC := anObject
]

{ #category : #'as yet unclassified' }
RegistroEmpresa >> getControlador [
	^controlador .
]

{ #category : #accessing }
RegistroEmpresa >> incumbencias [

	^ incumbencias
]

{ #category : #accessing }
RegistroEmpresa >> incumbencias: anObject [

	incumbencias := anObject
]

{ #category : #initialization }
RegistroEmpresa >> initialize [ 
	|top|.
	super initialize .
	top := 10.
	"le damos un ancho y un largo."
	self extent: 300@400.
	self color: Color white.
	self borderColor: Color black.
	
	"creamos los inputs del sistema."
	CUIT := Input new label: 'CUIT:'.
	nombre := Input new label: 'Nombre:'.
	descripcion := Input new label: 'Descripcion:'.
	rubro := Input new label: 'Rubro:'.
	incumbencias := Input new label: 'Incumbencias:'.
	EAU := CheckBox new label: 'EAU'.
	EAP := CheckBox new label: 'EAP'.
	EC := CheckBox new label: 'EC'.
	producto := Input new label: 'Producto:'.
	
	CUIT top: (self top)+top; left: (self left)+10.
	top := top + 30.
	nombre top: (CUIT bottom); left: self left +10.
	descripcion top: (nombre bottom); left: self left +10.
	rubro top: (descripcion bottom); left: self left +10.
	incumbencias top: (rubro bottom); left: self left +10.
	EAU top: (incumbencias bottom); left: self left +10.
	EAP top: (EAU bottom); left: self left +10.
	EC top: (EAP bottom); left: self left +10.
	producto top: (EC bottom); left: self left +10.
	
	self addMorph: CUIT; addMorph: nombre; addMorph: descripcion; addMorph: rubro; addMorph: incumbencias;
	addMorph: EAU; addMorph: EAP; addMorph: EC; addMorph: producto.
	 self.
	
	controlador := EmpresasSolicitantes new.
	controlador addDependent: self.
	
	"creamos los botones y sus acciones"
	guardar := BotonAccion new.
	guardar label: 'Guardar'.
	guardar mouseAction: [ self registraEmpresa . ].
	guardar bottom: self bottom -10.
	guardar right: self right -10.
	
	self addMorph: guardar.
	
]

{ #category : #accessing }
RegistroEmpresa >> nombre [

	^ nombre
]

{ #category : #accessing }
RegistroEmpresa >> nombre: anObject [

	nombre := anObject
]

{ #category : #accessing }
RegistroEmpresa >> producto [

	^ producto
]

{ #category : #accessing }
RegistroEmpresa >> producto: anObject [

	producto := anObject
]

{ #category : #operaciones }
RegistroEmpresa >> registraEmpresa [
	|retorno|.
	retorno := false. 
	
	((CUIT getContent isNotEmpty ) & (nombre getContent isNotEmpty ) & 
	(descripcion getContent isNotEmpty ) & (rubro getContent isNotEmpty ) & 
	(incumbencias getContent isNotEmpty ) & 
	((EAP isCheked ) | (EAU isCheked ) | (EC isCheked )) &
	(producto getContent isNotEmpty )) ifTrue: [ 
		controlador registrarEmpresaSolicitanteConCUIT: (CUIT getContent) nombre: (nombre getContent) 
		descripcion:  (descripcion getContent) rubro: (rubro getContent)  incumbencias: (incumbencias getContent) 
		EAU: (EAU isCheked ) EAP: (EAP isCheked ) EC: (EC isCheked ) producto:(producto getContent) solicitante: true.
	]
]

{ #category : #accessing }
RegistroEmpresa >> rubro [

	^ rubro
]

{ #category : #accessing }
RegistroEmpresa >> rubro: anObject [

	rubro := anObject
]

{ #category : #'as yet unclassified' }
RegistroEmpresa >> setControlador: unControlador [
	controlador := unControlador .
	controlador addDependent: self.
]

{ #category : #accessing }
RegistroEmpresa >> solicitante [

	^ solicitante
]

{ #category : #accessing }
RegistroEmpresa >> solicitante: anObject [

	solicitante := anObject
]
