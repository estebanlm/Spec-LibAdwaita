Class {
	#name : 'AdwSpinner',
	#superclass : 'GtkWidget',
	#traits : 'AdwTLibrary',
	#classTraits : 'AdwTLibrary classTrait',
	#category : 'Adwaita-Widget',
	#package : 'Adwaita',
	#tag : 'Widget'
}

{ #category : 'private' }
AdwSpinner class >> gtkNew [

	^ self ffiCall: #(GtkSpinner* adw_spinner_new (void))
]

{ #category : 'instance creation' }
AdwSpinner class >> new [

	^ self gtkNew initialize
]

{ #category : 'initialization' }
AdwSpinner >> initialize [

	super initialize. 
	self vAlignCenter.
	self hAlignCenter
]
