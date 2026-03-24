Class {
	#name : 'AdwAdapterActionWindowManager',
	#superclass : 'GtkAdapterActionManager',
	#category : 'Spec-Adwaita-Adapter',
	#package : 'Spec-Adwaita',
	#tag : 'Adapter'
}

{ #category : 'private - actions' }
AdwAdapterActionWindowManager >> installContextMenuOn: gtkWindow [

	"install context menu"
	super installContextMenuOn: gtkWindow.
	"install also a hamburger menu"
	self installHamburgerMenuOn: gtkWindow
]

{ #category : 'private - actions' }
AdwAdapterActionWindowManager >> installHamburgerMenuOn: gtkWindow [
	| menu |
	
	menu := GtkMenuButton new
		iconName: 'open-menu-symbolic';
		menuModel: self buildMenuModel;
		yourself.
		
	adapter addWindowControl: menu in: gtkWindow
]
