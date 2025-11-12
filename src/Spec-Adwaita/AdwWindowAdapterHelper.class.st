Class {
	#name : 'AdwWindowAdapterHelper',
	#superclass : 'GtkWindowAdapterHelper',
	#instVars : [
		'headerBar'
	],
	#category : 'Spec-Adwaita-Adapter',
	#package : 'Spec-Adwaita',
	#tag : 'Adapter'
}

{ #category : 'testing' }
AdwWindowAdapterHelper class >> canBeUsed [

	^ self environment includesKey: #AdwWindow 
]

{ #category : 'accessing' }
AdwWindowAdapterHelper >> add: aWidget toWindow: aWindow [

	aWindow content: (GtkBox newVertical 
		append: headerBar;
		append: aWidget;
		yourself)
]

{ #category : 'initialization' }
AdwWindowAdapterHelper >> initialize [

	super initialize.
	headerBar := AdwHeaderBar new
]

{ #category : 'accessing' }
AdwWindowAdapterHelper >> setDecorated: aBoolean to: gtkWindow [

	headerBar visible: aBoolean
]

{ #category : 'accessing' }
AdwWindowAdapterHelper >> widgetClass [

	^ AdwWindow
]
