"
https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1-latest/class.Toast.html
"
Class {
	#name : 'AdwToast',
	#superclass : 'GObject',
	#traits : 'AdwTLibrary',
	#classTraits : 'AdwTLibrary classTrait',
	#category : 'Adwaita-Widget',
	#package : 'Adwaita',
	#tag : 'Widget'
}

{ #category : 'accessing' }
AdwToast class >> gType [

	^ self ffiCall: #(gsize adw_toast_get_size())
]

{ #category : 'private' }
AdwToast class >> gtkNewTitle: title [

	^ self ffiCall: #(AdwToast* adw_toast_new (char *title))
]

{ #category : 'instance creation' }
AdwToast class >> new [

	^ self newTitle: ''
]

{ #category : 'instance creation' }
AdwToast class >> newTitle: aString [

	^ (self gtkNewTitle: aString) initialize
]

{ #category : 'accessing' }
AdwToast >> title [

	^ self ffiCall: #(char* adw_toast_get_title (self))
]

{ #category : 'accessing' }
AdwToast >> title: title [

	self ffiCall: #(void adw_toast_set_title (self, const char* title))

]
