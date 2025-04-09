"
https://gnome.pages.gitlab.gnome.org/libadwaita/doc/main/enum.ColorScheme.html
"
Class {
	#name : 'AdwColorScheme',
	#superclass : 'GEnumeration',
	#classVars : [
		'ADW_COLOR_SCHEME_FORCE_DARK',
		'ADW_COLOR_SCHEME_FORCE_LIGHT',
		'ADW_COLOR_SCHEME_PREFER_DARK',
		'ADW_COLOR_SCHEME_PREFER_LIGHT'
	],
	#category : 'Adwaita-Widget',
	#package : 'Adwaita',
	#tag : 'Widget'
}

{ #category : 'accessing enum' }
AdwColorScheme class >> ADW_COLOR_SCHEME_FORCE_DARK [
	"This method was automatically generated"
	^ ADW_COLOR_SCHEME_FORCE_DARK
]

{ #category : 'accessing enum' }
AdwColorScheme class >> ADW_COLOR_SCHEME_FORCE_LIGHT [
	"This method was automatically generated"
	^ ADW_COLOR_SCHEME_FORCE_LIGHT
]

{ #category : 'accessing enum' }
AdwColorScheme class >> ADW_COLOR_SCHEME_PREFER_DARK [
	"This method was automatically generated"
	^ ADW_COLOR_SCHEME_PREFER_DARK
]

{ #category : 'accessing enum' }
AdwColorScheme class >> ADW_COLOR_SCHEME_PREFER_LIGHT [
	"This method was automatically generated"
	^ ADW_COLOR_SCHEME_PREFER_LIGHT
]

{ #category : 'field definition' }
AdwColorScheme class >> enumDecl [ 
	"
	self initializeEnumeration.
	self rebuildEnumAccessors
	"

	^ #(
	ADW_COLOR_SCHEME_PREFER_LIGHT 	0
	ADW_COLOR_SCHEME_FORCE_LIGHT 	1
	ADW_COLOR_SCHEME_PREFER_LIGHT 	2
	ADW_COLOR_SCHEME_PREFER_DARK 	3
	ADW_COLOR_SCHEME_FORCE_DARK 		4
	)
]
