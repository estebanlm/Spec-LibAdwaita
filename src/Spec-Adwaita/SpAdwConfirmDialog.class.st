Class {
	#name : 'SpAdwConfirmDialog',
	#superclass : 'SpAdwAlertDialog',
	#instVars : [
		'cancelLabel'
	],
	#category : 'Spec-Adwaita',
	#package : 'Spec-Adwaita'
}

{ #category : 'accessing' }
SpAdwConfirmDialog class >> defaultCancelLabel [

	^ 'Cancel'
]

{ #category : 'private - building' }
SpAdwConfirmDialog >> addButtonsTo: aDialog [

	aDialog addResponse: self cancelLabel.
	super addButtonsTo: aDialog
]

{ #category : 'api' }
SpAdwConfirmDialog >> cancelLabel [

	^ cancelLabel ifNil: [ cancelLabel := self class defaultCancelLabel ]
]

{ #category : 'api' }
SpAdwConfirmDialog >> cancelLabel: aString [

	cancelLabel := aString
]
