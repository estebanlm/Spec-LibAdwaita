"
https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1-latest/class.Toast.html
"
Class {
	#name : 'AdwToast',
	#superclass : 'GtkWidget',
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
