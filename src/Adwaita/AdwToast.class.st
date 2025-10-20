"
https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1-latest/class.Toast.html
"
Class {
	#name : 'AdwToast',
	#superclass : 'GObject',
	#traits : 'AdwTLibrary',
	#classTraits : 'AdwTLibrary classTrait',
	#instVars : [
		'customTitle'
	],
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
AdwToast >> customTitle [

	"if it is not set, it does not has sense to ask for it"
	^ customTitle
]

{ #category : 'accessing' }
AdwToast >> customTitle: aWidget [

	customTitle := aWidget.
	self setCustomTitle: aWidget
]

{ #category : 'api' }
AdwToast >> dismiss [

	self ffiCall: #(void adw_toast_dismiss (self))
]

{ #category : 'testing' }
AdwToast >> isUseMarkup [

	^ self ffiCall: #(gboolean adw_toast_get_use_markup (self))
]

{ #category : 'private' }
AdwToast >> setCustomTitle: widget [

	self ffiCall: #(void adw_toast_set_custom_title (self, GtkWidget* widget))
]

{ #category : 'accessing' }
AdwToast >> timeout [

	^ self ffiCall: #(guint adw_toast_get_timeout (self))
]

{ #category : 'accessing' }
AdwToast >> timeout: timeout [

	^ self ffiCall: #(void adw_toast_set_timeout (self, guint timeout))
]

{ #category : 'accessing' }
AdwToast >> title [

	^ self ffiCall: #(char* adw_toast_get_title (self))
]

{ #category : 'accessing' }
AdwToast >> title: title [

	self ffiCall: #(void adw_toast_set_title (self, const char* title))

]

{ #category : 'accessing' }
AdwToast >> useMarkup: use_markup [

	self ffiCall: #(void adw_toast_set_use_markup (self, gboolean use_markup))
]
