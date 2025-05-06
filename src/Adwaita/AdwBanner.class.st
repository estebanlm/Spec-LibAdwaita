Class {
	#name : 'AdwBanner',
	#superclass : 'GtkWidget',
	#traits : 'AdwTLibrary',
	#classTraits : 'AdwTLibrary classTrait',
	#category : 'Adwaita-Widget',
	#package : 'Adwaita',
	#tag : 'Widget'
}

{ #category : 'private' }
AdwBanner class >> gtkNewTitle: title [

	^ self ffiCall: #(AdwBanner* adw_banner_new (const char* title))
]

{ #category : 'instance creation' }
AdwBanner class >> new [

	^ self newTitle: ''
]

{ #category : 'instance creation' }
AdwBanner class >> newTitle: aString [

	^ (self gtkNewTitle: aString) initialize
]

{ #category : 'testing' }
AdwBanner >> isRevealed [

	^ self ffiCall: #(gboolean adw_banner_get_revealed (self))
]

{ #category : 'accessing' }
AdwBanner >> revealed: revealed [

	self ffiCall: #(void adw_banner_set_revealed (self, gboolean revealed))
]

{ #category : 'accessing' }
AdwBanner >> title [

	^ self ffiCall: #(char* adw_banner_get_title (self))
]

{ #category : 'accessing' }
AdwBanner >> title: title [

	^ self ffiCall: #(void adw_banner_set_title (self, const char* title))
]
