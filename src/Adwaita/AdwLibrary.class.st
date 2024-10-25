Class {
	#name : 'AdwLibrary',
	#superclass : 'GObjectLibrary',
	#category : 'Adwaita-Library',
	#package : 'Adwaita',
	#tag : 'Library'
}

{ #category : 'accessing - platform' }
AdwLibrary >> macLibraryName [

	^ self error: 'TODO' "GMacLibraryFinder findLibrary: 'libgtk-4.dylib'"
]

{ #category : 'accessing - platform' }
AdwLibrary >> unix64LibraryName [ 

	^ FFIUnix64LibraryFinder findLibrary: 'libadwaita-1.so'
]

{ #category : 'accessing - platform' }
AdwLibrary >> win32LibraryName [

	^ self error: 'TODO' "FIWindowsLibraryFinder findLibrary: 'libgobject-2.0-0.dll'"
]
