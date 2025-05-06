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

{ #category : 'private' }
AdwToastOverlay class >> gtkNew [

	^ self ffiCall: #(AdwToastOverlay* adw_toast_overlay_new (void))
]

{ #category : 'instance creation' }
AdwToastOverlay class >> new [

	^ self gtkNew initialize
]

{ #category : 'accessing' }
AdwToastOverlay >> addToast: aToast [

	self basicAddToast: aToast.
	aToast doNotAutoRelease
]

{ #category : 'private' }
AdwToastOverlay >> basicAddToast: toast [

	self ffiCall: #(void adw_toast_overlay_add_toast (self, AdwToast* toast))
]

{ #category : 'accessing' }
AdwToastOverlay >> dismissAll [

	self ffiCall: #(void adw_toast_overlay_dismiss_all (self))
]
