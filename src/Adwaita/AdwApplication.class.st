"
https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1-latest/class.Application.html
"
Class {
	#name : 'AdwApplication',
	#superclass : 'GtkApplication',
	#traits : 'AdwTLibrary',
	#classTraits : 'AdwTLibrary classTrait',
	#category : 'Adwaita-Application',
	#package : 'Adwaita',
	#tag : 'Application'
}

{ #category : 'private' }
AdwApplication class >> gtk_application_new: application_id flags: flags [

	self ffiCall: #(AdwApplication *adw_application_new ( 
		const char* application_id, 
		GApplicationFlags flags))
]
