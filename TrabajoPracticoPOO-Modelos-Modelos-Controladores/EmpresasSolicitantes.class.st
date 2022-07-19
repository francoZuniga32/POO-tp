"
controlador de empresas solicitantes
"
Class {
	#name : #EmpresasSolicitantes,
	#superclass : #Object,
	#instVars : [
		'administracion'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Controladores'
}

{ #category : #constructor }
EmpresasSolicitantes class >> nuevaConAdministarcion:unaAdministracion [
	|empresaSolicitanteControlador|.
	empresaSolicitanteControlador := self new.
	empresaSolicitanteControlador setAdministracion: unaAdministracion .
	^empresaSolicitanteControlador .
]

{ #category : #accessing }
EmpresasSolicitantes >> empresasSolicitantes [

	^ administracion getEmpresasSolicitantes .
]

{ #category : #accessing }
EmpresasSolicitantes >> empresasSolicitantes: anObject [
	administracion setEmpresasSolicitantes: anObject.
]

{ #category : #initialization }
EmpresasSolicitantes >> getEmpresas [
	^administracion getEmpresas.
]

{ #category : #accessing }
EmpresasSolicitantes >> registrarEmpresaSolicitanteConCUIT: arg1 nombre: arg2 descripcion: arg3 rubro: arg4 incumbencias: arg5 EAU: arg6 EAP: arg7 EC: arg8 producto: arg9 solicitante: arg10 [

	| tmp1 tmp2 tmp3 tmp4 |
	tmp2 := administracion getEmpresa: arg1.
	tmp4 := false.
	tmp2
		ifNil: [ 
			arg6 ifTrue: [ 
				tmp2 := EAU new
					        setCUIT: arg1
					        nombre: arg2
					        descripcion: arg3
					        rubro: arg4
					        incumbencias: arg5 ].
			arg7 ifTrue: [ 
				tmp2 := EAP new
					        setCUIT: arg1
					        nombre: arg2
					        descripcion: arg3
					        rubro: arg4
					        incumbencias: arg5 ].
			arg8 ifTrue: [ 
				tmp2 := EC new
					        setCUIT: arg1
					        nombre: arg2
					        descripcion: arg3
					        rubro: arg4
					        incumbencias: arg5.
				tmp2 setProducto: arg9 ].
			administracion setEmpresa: tmp2.
			arg10 ifTrue: [ 
				tmp3 := EmpresaSolicitante new setEmpresa: tmp2.
				administracion setEmpresaSolicitante: tmp3 ].
			tmp4 := true ]
		ifNotNil: [ 
			arg10 ifTrue: [ 
				tmp3 := EmpresaSolicitante new setEmpresa: tmp2.
				administracion setEmpresaSolicitante: tmp3.
				tmp4 := true ] ].
	self changed.
	^ tmp4
]

{ #category : #accessing }
EmpresasSolicitantes >> setAdministracion: unaAdministracion [
	administracion := unaAdministracion .
]
