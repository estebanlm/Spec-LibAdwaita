Class {
	#name : 'AdwDialog',
	#superclass : 'GtkWindow',
	#traits : 'AdwTLibrary',
	#classTraits : 'AdwTLibrary classTrait',
	#category : 'Adwaita-Widget',
	#package : 'Adwaita',
	#tag : 'Widget'
}

{ #category : 'private' }
AdwDialog class >> gtkNew [ 

	^ self ffiCall: #(AdwDialog* adw_dialog_new ())
]

{ #category : 'instance creation' }
AdwDialog class >> new [

	^ self gtkNew initialize
]
