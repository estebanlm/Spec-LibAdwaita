Class {
	#name : 'AdwBin',
	#superclass : 'GtkWidget',
	#traits : 'AdwTLibrary',
	#classTraits : 'AdwTLibrary classTrait',
	#category : 'Adwaita-Widget',
	#package : 'Adwaita',
	#tag : 'Widget'
}

{ #category : 'private' }
AdwBin class >> gtkNew [

	self ffiCall: #(AdwBin* adw_bin_new (void))

]

{ #category : 'instance creation' }
AdwBin class >> new [

	^ self gtkNew initialize
]
