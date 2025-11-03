Class {
	#name : 'AdwWindow',
	#superclass : 'GtkWindow',
	#traits : 'AdwTLibrary',
	#classTraits : 'AdwTLibrary classTrait',
	#category : 'Adwaita-Widget',
	#package : 'Adwaita',
	#tag : 'Widget'
}

{ #category : 'private' }
AdwWindow class >> gtkNew [ 

	^ self ffiCall: #(AdwWindow *adw_window_new ())
]

{ #category : 'instance creation' }
AdwWindow class >> new [

	^ self gtkNew initialize
]
