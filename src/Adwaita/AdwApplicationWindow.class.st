Class {
	#name : 'AdwApplicationWindow',
	#superclass : 'GtkApplicationWindow',
	#traits : 'AdwTLibrary',
	#classTraits : 'AdwTLibrary classTrait',
	#instVars : [
		'content'
	],
	#category : 'Adwaita-Widget',
	#package : 'Adwaita',
	#tag : 'Widget'
}

{ #category : 'private' }
AdwApplicationWindow class >> gtkNew: app [ 

	^ self ffiCall: #(AdwApplicationWindow * adw_application_window_new (GtkApplication* app))
]

{ #category : 'private' }
AdwApplicationWindow >> basicContent: aWidget [

	^  self ffiCall: #(void adw_application_window_set_content (self, GtkWidget* aWidget))
]

{ #category : 'accessing' }
AdwApplicationWindow >> content: aWidget [
	
	self keepContent: aWidget.
	self basicContent: aWidget
]

{ #category : 'private' }
AdwApplicationWindow >> keepContent: aWidget [

	content := aWidget
]
