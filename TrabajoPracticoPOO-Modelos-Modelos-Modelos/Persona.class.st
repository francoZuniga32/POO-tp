Class {
	#name : #Persona,
	#superclass : #Postulante,
	#instVars : [
		'apellidos',
		'aptitudes',
		'fechaNacimiento'
	],
	#classVars : [
		'MAXIMO_INDIVIDUAL'
	],
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Modelos'
}

{ #category : #constructor }
Persona class >> nuevoConNombre: unNombre apellidos: unosApellidos aptitudes: unasAptitudes fechaNacimiento: unaFechaDeNaciemento [	
	|persona|.
	persona := self new.
	persona setNombre: unNombre apellidos: unosApellidos aptitudes: unasAptitudes fechaNacimiento: unaFechaDeNaciemento .
	^persona .
]

{ #category : #getter }
Persona >> getApellidos [
	^apellidos.
]

{ #category : #getter }
Persona >> getAptitudes [ 	
	^aptitudes .
]

{ #category : #getter }
Persona >> getFechaNacimiento [
	^fechaNacimiento .
]

{ #category : #setter }
Persona >> setApellidos: unosApellidos [
	apellidos := unosApellidos .
]

{ #category : #setter }
Persona >> setAptitudes: unasAptitudes [
	aptitudes := unasAptitudes .
]

{ #category : #setter }
Persona >> setFechaNacimiento: unaFechaDeNacimiento [
	fechaNacimiento := unaFechaDeNacimiento .
]

{ #category : #setter }
Persona >> setNombre: unNombre apellidos: unosApellidos aptitudes: unasAptitudes fechaNacimiento: unaFechaDeNacimiento [ 
	nombre := unNombre.
	apellidos := unosApellidos.
	aptitudes := unasAptitudes .
	fechaNacimiento := unaFechaDeNacimiento .
]
