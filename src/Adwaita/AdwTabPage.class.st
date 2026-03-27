"
https://gnome.pages.gitlab.gnome.org/libadwaita/doc/main/class.TabPage.html
"
Class {
	#name : 'AdwTabPage',
	#superclass : 'GObject',
	#traits : 'AdwTLibrary',
	#classTraits : 'AdwTLibrary classTrait',
	#category : 'Adwaita-Object',
	#package : 'Adwaita',
	#tag : 'Object'
}

{ #category : 'accessing' }
AdwTabPage >> child [

	^ self ffiCall: #(GtkWidget* adw_tab_page_get_child (self))
]
