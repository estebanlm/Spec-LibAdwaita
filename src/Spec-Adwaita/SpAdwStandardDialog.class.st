Class {
	#name : 'SpAdwStandardDialog',
	#superclass : 'Object',
	#instVars : [
		'label',
		'title',
		'initialExtent',
		'acceptLabel',
		'parent',
		'application',
		'isOk',
		'dialogWidget'
	],
	#category : 'Spec-Adwaita',
	#package : 'Spec-Adwaita'
}

{ #category : 'accessing' }
SpAdwStandardDialog class >> defaultAcceptLabel [

	^ 'Accept'
]

{ #category : 'instance creation' }
SpAdwStandardDialog class >> newApplication: anApplication [

	^ self new
		application: anApplication;
		yourself
]

{ #category : 'api' }
SpAdwStandardDialog >> acceptLabel [

	^ acceptLabel ifNil: [ acceptLabel := self class defaultAcceptLabel ]
]

{ #category : 'api' }
SpAdwStandardDialog >> acceptLabel: aString [

	acceptLabel := aString
]

{ #category : 'private - building' }
SpAdwStandardDialog >> addButtonsTo: dialog [

]

{ #category : 'private - building' }
SpAdwStandardDialog >> addModelTo: aWidget [
	
	aWidget heading: (self title ifNil: [ 'Untitled' ]).
	aWidget body: (self label ifNil: [ 'No message' ]).
	aWidget bodyUseMarkup: true.
	aWidget preferWideLayout: true
]

{ #category : 'api' }
SpAdwStandardDialog >> application [

	^ application
]

{ #category : 'api' }
SpAdwStandardDialog >> application: anApplication [

	application := anApplication
]

{ #category : 'private - building' }
SpAdwStandardDialog >> build [

	self defer: [
		dialogWidget := AdwAlertDialog new.
		dialogWidget objectRef.
		self addModelTo: dialogWidget.
		self addButtonsTo: dialogWidget ]
]

{ #category : 'private' }
SpAdwStandardDialog >> defer: aBlock [

	^ GRunLoop defer: aBlock
]

{ #category : 'private' }
SpAdwStandardDialog >> destroyWidgets [

	self defer: [
		dialogWidget objectUnref ]
]

{ #category : 'private' }
SpAdwStandardDialog >> extraProcessingAfterChoose: aValue dialog: aDialog [
	
]

{ #category : 'api' }
SpAdwStandardDialog >> initialExtent: aPoint [
	"this does not has sense, but is here for compatibility"
]

{ #category : 'initialization' }
SpAdwStandardDialog >> initialize [

	super initialize. 
	isOk := false
]

{ #category : 'testing' }
SpAdwStandardDialog >> isOk [

	^ isOk
]

{ #category : 'api' }
SpAdwStandardDialog >> label [

	^ label
]

{ #category : 'api' }
SpAdwStandardDialog >> label: aString [

	label := aString
]

{ #category : 'api - showing' }
SpAdwStandardDialog >> openModal [
	| sem result |

	isOk := false.
	GRunLoop defer: [
		self build.
		sem := Semaphore new.
		dialogWidget
			chooseParent: self parentWidget  
			do: [ :aValue | 
				result := aValue.
				self extraProcessingAfterChoose: aValue dialog: dialogWidget.
				sem signal ] ].
	sem wait.
	isOk := result = self acceptLabel.
	GRunLoop defer: [ self destroyWidgets ].
	dialogWidget := nil.
	^ self isOk
]

{ #category : 'api - showing' }
SpAdwStandardDialog >> openModalWithParent: aParent [

	self parent: aParent.
	^ self openModal
]

{ #category : 'api' }
SpAdwStandardDialog >> parent [

	^ parent
]

{ #category : 'api' }
SpAdwStandardDialog >> parent: aPresenter [

	parent := aPresenter
]

{ #category : 'private' }
SpAdwStandardDialog >> parentWidget [

	^ self parent 
		ifNotNil: [ :aPresenter | aPresenter adapter widget ]
		ifNil: [ GtkWidget null ]
]

{ #category : 'api' }
SpAdwStandardDialog >> title [

	^ title
]

{ #category : 'api' }
SpAdwStandardDialog >> title: aString [

	title := aString

]
