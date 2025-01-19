"
https://gnome.pages.gitlab.gnome.org/libadwaita/doc/main/class.StyleManager.html
"
Class {
	#name : 'AdwStyleManager',
	#superclass : 'GBaseObject',
	#traits : 'AdwTLibrary',
	#classTraits : 'AdwTLibrary classTrait',
	#pools : [
		'AdwColorScheme'
	],
	#category : 'Adwaita-Widget',
	#package : 'Adwaita',
	#tag : 'Widget'
}

{ #category : 'accessing' }
AdwStyleManager class >> default [

	^ self getDefault initialize
]

{ #category : 'private' }
AdwStyleManager class >> getDefault [

	^ self ffiCall: #(AdwStyleManager* adw_style_manager_get_default ())
]

{ #category : 'accessing' }
AdwStyleManager >> accentColorRGBA [

	^ self ffiCall: #(GdkRGBA* adw_style_manager_get_accent_color_rgba (self))
]

{ #category : 'accessing' }
AdwStyleManager >> colorScheme [

	self ffiCall: #(AdwColorScheme adw_style_manager_get_color_scheme (self))
]

{ #category : 'accessing' }
AdwStyleManager >> colorScheme: color_scheme [

	self ffiCall: #(void adw_style_manager_set_color_scheme (self, AdwColorScheme color_scheme))
]

{ #category : 'accessing' }
AdwStyleManager >> ensureDark [

	self isDark ifTrue: [ ^ self ].
	self forceDark
]

{ #category : 'accessing' }
AdwStyleManager >> ensureLight [

	self isDark ifFalse: [ ^ self ].
	self forceLight
]

{ #category : 'accessing' }
AdwStyleManager >> forceDark [

	self colorScheme: ADW_COLOR_SCHEME_FORCE_DARK
]

{ #category : 'accessing' }
AdwStyleManager >> forceLight [

	self colorScheme: ADW_COLOR_SCHEME_FORCE_LIGHT
]

{ #category : 'testing' }
AdwStyleManager >> isDark [

	^ self ffiCall: #(gboolean adw_style_manager_get_dark (self))
]

{ #category : 'testing' }
AdwStyleManager >> isHighlight [

	^ self ffiCall: #(gboolean adw_style_manager_get_highlight (self))
]

{ #category : 'accessing' }
AdwStyleManager >> preferDark [

	self colorScheme: ADW_COLOR_SCHEME_PREFER_DARK
]

{ #category : 'accessing' }
AdwStyleManager >> preferLight [

	self colorScheme: ADW_COLOR_SCHEME_PREFER_LIGHT
]
