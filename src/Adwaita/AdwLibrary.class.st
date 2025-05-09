Class {
	#name : 'AdwLibrary',
	#superclass : 'GObjectLibrary',
	#category : 'Adwaita-Library',
	#package : 'Adwaita',
	#tag : 'Library'
}

{ #category : 'accessing - platform' }
AdwLibrary >> macLibraryName [

	^ GMacLibraryFinder findLibrary: 'libadwaita-1.0.dylib'
]

{ #category : 'accessing - platform' }
AdwLibrary >> unix64LibraryName [ 

	^ FFIUnix64LibraryFinder findLibrary: 'libadwaita-1.so'
]

{ #category : 'accessing - platform' }
AdwLibrary >> win32LibraryName [

	^ FFIWindowsLibraryFinder findLibrary: 'libadwaita-1-0.dll'
]
