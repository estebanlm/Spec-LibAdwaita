Class {
	#name : 'SpAdwAlertDialog',
	#superclass : 'SpAdwStandardDialog',
	#category : 'Spec-Adwaita',
	#package : 'Spec-Adwaita'
}

{ #category : 'private - building' }
SpAdwAlertDialog >> addButtonsTo: aDialog [

	aDialog addResponse: self acceptLabel.
	aDialog defaultResponse: self acceptLabel.
	aDialog makeResponseSuggested: self acceptLabel.
]

{ #category : 'api' }
SpAdwAlertDialog >> cancelLabel [

	^ cancelLabel
]

{ #category : 'api' }
SpAdwAlertDialog >> cancelLabel: aString [

	cancelLabel := aString
]
