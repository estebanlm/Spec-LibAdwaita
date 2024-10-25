Class {
	#name : 'AdwApplicationWindow',
	#superclass : 'GtkApplicationWindow',
	#traits : 'AdwTLibrary',
	#classTraits : 'AdwTLibrary classTrait',
	#category : 'Adwaita-Widget-Window',
	#package : 'Adwaita',
	#tag : 'Widget-Window'
}

{ #category : 'private' }
AdwApplicationWindow class >> gtkNew: app [ 

	^ self ffiCall: #(AdwApplicationWindow * adw_application_window_new (GtkApplication* app))
]
