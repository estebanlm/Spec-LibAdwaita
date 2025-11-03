Class {
	#name : 'AdwResponseAppearance',
	#superclass : 'GEnumeration',
	#classVars : [
		'ADW_RESPONSE_DEFAULT',
		'ADW_RESPONSE_DESTRUCTIVE',
		'ADW_RESPONSE_SUGGESTED'
	],
	#category : 'Adwaita-Widget',
	#package : 'Adwaita',
	#tag : 'Widget'
}

{ #category : 'accessing enum' }
AdwResponseAppearance class >> ADW_RESPONSE_DEFAULT [
	"This method was automatically generated"
	^ ADW_RESPONSE_DEFAULT
]

{ #category : 'accessing enum' }
AdwResponseAppearance class >> ADW_RESPONSE_DESTRUCTIVE [
	"This method was automatically generated"
	^ ADW_RESPONSE_DESTRUCTIVE
]

{ #category : 'accessing enum' }
AdwResponseAppearance class >> ADW_RESPONSE_SUGGESTED [
	"This method was automatically generated"
	^ ADW_RESPONSE_SUGGESTED
]

{ #category : 'enum declaration' }
AdwResponseAppearance class >> enumDecl [ 
	"
	self initializeEnumeration.
	self rebuildEnumAccessors
	"

	^ #(
		ADW_RESPONSE_DEFAULT 		0
		ADW_RESPONSE_SUGGESTED		1
		ADW_RESPONSE_DESTRUCTIVE 	2
	)
]
