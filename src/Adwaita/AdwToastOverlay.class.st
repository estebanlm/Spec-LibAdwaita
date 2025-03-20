"
https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1-latest/class.ToastOverlay.html
"
Class {
	#name : 'AdwToastOverlay',
	#superclass : 'GtkWidget',
	#traits : 'AdwTLibrary',
	#classTraits : 'AdwTLibrary classTrait',
	#category : 'Adwaita-Widget',
	#package : 'Adwaita',
	#tag : 'Widget'
}

{ #category : 'accessing' }
AdwToastOverlay class >> gType [

	^ self ffiCall: #(gsize adw_toast_overlay_get_type())
]
