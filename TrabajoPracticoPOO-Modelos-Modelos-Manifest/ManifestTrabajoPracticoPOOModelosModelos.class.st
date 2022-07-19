"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestTrabajoPracticoPOOModelosModelos,
	#superclass : #PackageManifest,
	#category : #'TrabajoPracticoPOO-Modelos-Modelos-Manifest'
}

{ #category : #'code-critics' }
ManifestTrabajoPracticoPOOModelosModelos class >> ruleCodeCruftLeftInMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#TablaEmpresas #recargarTabla #false)) #'2022-07-19T00:45:36.155969-03:00') )
]
