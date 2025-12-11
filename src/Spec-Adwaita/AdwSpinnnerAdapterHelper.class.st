Class {
	#name : 'AdwSpinnnerAdapterHelper',
	#superclass : 'GtkSpinnerAdapterHelper',
	#category : 'Spec-Adwaita-Adapter',
	#package : 'Spec-Adwaita',
	#tag : 'Adapter'
}

{ #category : 'testing' }
AdwSpinnnerAdapterHelper class >> canBeUsed [

	^ true
]

{ #category : 'accessing' }
AdwSpinnnerAdapterHelper >> widgetClass [

	^ AdwSpinner
]
