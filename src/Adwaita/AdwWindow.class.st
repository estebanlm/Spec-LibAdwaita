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

{ #category : 'accessing' }
AdwWindow >> content [

	^ self child
]

{ #category : 'accessing' }
AdwWindow >> content: aWidget [

	self child: aWidget
]

{ #category : 'private' }
AdwWindow >> setChild: aWidget [

	self ffiCall: #(void adw_window_set_content (self, GtkWidget* aWidget))

]
