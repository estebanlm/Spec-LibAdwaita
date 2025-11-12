Class {
	#name : 'SpAdwRequestDialog',
	#superclass : 'SpAdwConfirmDialog',
	#instVars : [
		'text',
		'validateAnswer',
		'presenter',
		'textPresenter',
		'errorPresenter',
		'errorText'
	],
	#category : 'Spec-Adwaita',
	#package : 'Spec-Adwaita'
}

{ #category : 'private - building' }
SpAdwRequestDialog >> addModelTo: aWidget [
	
	super addModelTo: aWidget.
	
	self ensurePresenter.
	
	textPresenter text: (self text ifNil: [ '' ]).

	presenter build.
	presenter adapter widget objectRef.
	
	"presenter adapter widget 
		connectDestroy: [ 'DESTROYED' printToStdout ]."
	
	aWidget extraChild: presenter adapter widget
]

{ #category : 'private' }
SpAdwRequestDialog >> destroyWidgets [

	textPresenter := nil.
	super destroyWidgets
]

{ #category : 'private' }
SpAdwRequestDialog >> ensurePresenter [

	presenter := SpPresenter newApplication: self application.
	presenter addStyle: 'request'.
	presenter layout: (SpBoxLayout newVertical
		add: (textPresenter := presenter newTextInput) expand: false;
		add: (errorPresenter := presenter newLabel) expand: false;
		yourself).

	errorPresenter addStyle: 'error'.
	
	errorText 
		ifNotNil: [ 
			errorPresenter label: errorText.
			errorText := nil ]
		ifNil: [
			errorPresenter hide ]
]

{ #category : 'api' }
SpAdwRequestDialog >> errorText: aString [

	"as the dialog with error will be re-shown, I keep it here 
	 and I will reset it later"
	errorText := aString
]

{ #category : 'private' }
SpAdwRequestDialog >> extraProcessingAfterChoose: aValue dialog: aDialog [
	
	text := self textPresenter text
]

{ #category : 'api - showing' }
SpAdwRequestDialog >> openModal [

	^ super openModal 
		ifTrue: [ 
			"recusively call request if validate answer fails. 
			 I expect error label to be set by the validation block (which is 
			 maybe a bad idea)"
			(self validateAnswerWithResult: self text)
				ifTrue: [ self text ]
				ifFalse: [ self openModal ] ]
		ifFalse: [ nil ]
]

{ #category : 'api' }
SpAdwRequestDialog >> text [

	^ text
]

{ #category : 'api' }
SpAdwRequestDialog >> text: aString [

	text := aString
]

{ #category : 'private' }
SpAdwRequestDialog >> textPresenter [

	^ textPresenter
]

{ #category : 'api' }
SpAdwRequestDialog >> validateAnswer [

	^ validateAnswer
]

{ #category : 'api' }
SpAdwRequestDialog >> validateAnswer: aBlock [

	validateAnswer := aBlock
]

{ #category : 'private' }
SpAdwRequestDialog >> validateAnswerWithResult: aValue [

	validateAnswer ifNil: [ ^ true ].
	^ validateAnswer cull: aValue
]
