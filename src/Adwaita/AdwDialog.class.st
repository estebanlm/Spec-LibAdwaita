"
https://gnome.pages.gitlab.gnome.org/libadwaita/doc/main/class.Dialog.html

"
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

{ #category : 'private' }
AdwDialog >> setDefaultWidget: default_widget [

	self ffiCall: #(void adw_dialog_set_default_widget (self, GtkWidget* default_widget))
]
