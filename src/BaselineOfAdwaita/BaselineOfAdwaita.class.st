Class {
	#name : 'BaselineOfAdwaita',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfAdwaita',
	#package : 'BaselineOfAdwaita'
}

{ #category : 'baselines' }
BaselineOfAdwaita >> baseline: spec [
	<baseline>
	
	spec for: #common do: [
		self specGtk: spec. 
		spec package: 'Adw' ]
]

{ #category : 'external projects' }
BaselineOfAdwaita >> specGtk: spec [

	spec
		baseline: 'SpecGtk'
		with: [ spec repository: 'github://pharo-spec/Spec-Gtk' ]
]
