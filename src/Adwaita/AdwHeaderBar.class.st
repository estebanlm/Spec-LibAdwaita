"
https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1-latest/class.HeaderBar.html
"
Class {
	#name : 'AdwHeaderBar',
	#superclass : 'GtkWidget',
	#traits : 'AdwTLibrary',
	#classTraits : 'AdwTLibrary classTrait',
	#instVars : [
		'packStart',
		'packEnd',
		'titleWidget'
	],
	#category : 'Adwaita-Widget',
	#package : 'Adwaita',
	#tag : 'Widget'
}

{ #category : 'private' }
AdwHeaderBar class >> gtkNew [

	^ self ffiCall: #(AdwHeaderBar* adw_header_bar_new (void))
]

{ #category : 'private' }
AdwHeaderBar >> basicPackEnd: child [

	^ self ffiCall: #(void adw_header_bar_pack_end (self, GtkWidget* child))


]

{ #category : 'private' }
AdwHeaderBar >> basicPackStart: child [

	^ self ffiCall: #(void adw_header_bar_pack_start (self, GtkWidget* child))


]

{ #category : 'private' }
AdwHeaderBar >> basicTitleWidget [

	^ self ffiCall: #(GtkWidget* adw_header_bar_get_title_widget (self))
]

{ #category : 'private' }
AdwHeaderBar >> basicTitleWidget: title_widget [

	self ffiCall: #(void adw_header_bar_set_title_widget (self, GtkWidget *title_widget))
]

{ #category : 'accessing' }
AdwHeaderBar >> endWidget [

	^ packEnd
]

{ #category : 'testing' }
AdwHeaderBar >> isShowTitle [

	^ self ffiCall: #(gboolean adw_header_bar_get_show_title (self))
]

{ #category : 'accessing' }
AdwHeaderBar >> packEnd: aWidget [

	packEnd := aWidget.
	self basicPackEnd: aWidget
]

{ #category : 'accessing' }
AdwHeaderBar >> packStart: aWidget [

	packStart := aWidget.
	self basicPackStart: aWidget
]

{ #category : 'accessing' }
AdwHeaderBar >> startWidget [

	^ packStart
]

{ #category : 'accessing' }
AdwHeaderBar >> titleWidget [

	^ titleWidget
]

{ #category : 'accessing' }
AdwHeaderBar >> titleWidget: aWidget [

	titleWidget := aWidget.
	self basicTitleWidget: aWidget
]
