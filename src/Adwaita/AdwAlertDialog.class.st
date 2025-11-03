Class {
	#name : 'AdwAlertDialog',
	#superclass : 'AdwDialog',
	#instVars : [
		'callback',
		'extraChild'
	],
	#pools : [
		'AdwResponseAppearance'
	],
	#category : 'Adwaita-Widget',
	#package : 'Adwaita',
	#tag : 'Widget'
}

{ #category : 'private' }
AdwAlertDialog class >> gtkNew [

	^ self ffiCall: #(AdwAlertDialog* adw_alert_dialog_new (NULL, NULL))
]

{ #category : 'accessing' }
AdwAlertDialog >> addResponse: aString [

	^ self addResponseId: aString label: aString
]

{ #category : 'accessing' }
AdwAlertDialog >> addResponseId: id label: label [

	self ffiCall: #(void adw_alert_dialog_add_response (self, const char* id, const char* label))
]

{ #category : 'accessing' }
AdwAlertDialog >> body [

	^ self ffiCall: #(const char *adw_alert_dialog_get_body (self))
]

{ #category : 'accessing' }
AdwAlertDialog >> body: body [

	self ffiCall: #(void adw_alert_dialog_set_body (self, const char *body))
]

{ #category : 'accessing' }
AdwAlertDialog >> bodyUseMarkup: use_markup [

	self ffiCall: #(void adw_alert_dialog_set_body_use_markup (self, gboolean use_markup))
]

{ #category : 'actions' }
AdwAlertDialog >> choose [
	| result sem |
	
	result := nil.
	sem := Semaphore new.
	self chooseDo: [ :aValue | 
		result := aValue.
		sem signal ].
	sem wait.
	^ result
]

{ #category : 'actions' }
AdwAlertDialog >> chooseDo: aBlock [

	self 
		chooseParent: GtkWidget null 
		do: aBlock
]

{ #category : 'private' }
AdwAlertDialog >> chooseFinish: result [

	^ self ffiCall: #(const char* adw_alert_dialog_choose_finish (self, void* result))
]

{ #category : 'private' }
AdwAlertDialog >> chooseParent: parent cancellable: cancellable callback: aCallback [

	^ self ffiCall: #(void adw_alert_dialog_choose (
  		self,
  		GtkWidget* parent,
  		"GCancellable*"void *cancellable,
  		"GAsyncReadyCallback"GCallback aCallback,
  		"gpointer user_data"NULL))
]

{ #category : 'actions' }
AdwAlertDialog >> chooseParent: aWidget do: aBlock [
	 
	callback := self newCallback: [ :source :result :user_data |
		| choosen |
		choosen := self chooseFinish: result.
		[ aBlock cull: choosen cull: extraChild ] fork ].
		
	self 
		chooseParent: aWidget
		cancellable: GObject null
		callback: callback
]

{ #category : 'accessing' }
AdwAlertDialog >> closeResponse [

	^ self ffiCall: #(const char* adw_alert_dialog_get_close_response (self))
]

{ #category : 'accessing' }
AdwAlertDialog >> closeResponse: response [

	^ self ffiCall: #(void adw_alert_dialog_set_close_response (self, const char* response))
]

{ #category : 'accessing' }
AdwAlertDialog >> defaultResponse: response [

	^ self ffiCall: #(void adw_alert_dialog_set_default_response(self, const char* response))
]

{ #category : 'accessing' }
AdwAlertDialog >> extraChild: aWidget [

	extraChild := aWidget.
	self setExtraChild: aWidget.
	aWidget objectUnrefNow
]

{ #category : 'accessing' }
AdwAlertDialog >> heading [

	^ self ffiCall: #(const char *adw_alert_dialog_get_heading (self))
]

{ #category : 'accessing' }
AdwAlertDialog >> heading: heading [

	self ffiCall: #(void adw_alert_dialog_set_heading (self, const char* heading))
]

{ #category : 'accessing' }
AdwAlertDialog >> headingUseMarkup: use_markup [

	self ffiCall: #(void adw_alert_dialog_set_heading_use_markup (self, gboolean use_markup))
]

{ #category : 'testing' }
AdwAlertDialog >> isBodyUseMarkup [

	self ffiCall: #(gboolean  adw_alert_dialog_get_body_use_markup (self))
]

{ #category : 'testing' }
AdwAlertDialog >> isHeadingUseMarkup [

	self ffiCall: #(gboolean  adw_alert_dialog_get_heading_use_markup (self))
]

{ #category : 'testing' }
AdwAlertDialog >> isPreferWideLayout [

	^ self ffiCall: #(gboolean adw_alert_dialog_get_prefer_wide_layout (self))
]

{ #category : 'accessing' }
AdwAlertDialog >> makeResponseDefault: response [

	self 
		responseAppearance: response 
		to: ADW_RESPONSE_DEFAULT
]

{ #category : 'accessing' }
AdwAlertDialog >> makeResponseDestructive: response [

	self 
		responseAppearance: response 
		to: ADW_RESPONSE_DESTRUCTIVE
]

{ #category : 'accessing' }
AdwAlertDialog >> makeResponseSuggested: response [

	self 
		responseAppearance: response 
		to: ADW_RESPONSE_SUGGESTED
]

{ #category : 'private' }
AdwAlertDialog >> newCallback: aBlock [
"taken from GtkStandardDialog, it should be the same :P"
"GAsyncReadyCallback
	void
(* GAsyncReadyCallback) (
  GObject* source_object,
  GAsyncResult* res,
  gpointer data
)"

	^ GCallback 
		signature: #(void (void *source, void *result, gpointer user_data)) 
		block: aBlock
]

{ #category : 'testing' }
AdwAlertDialog >> preferWideLayout: prefer_wide_layout [

	^ self ffiCall: #(void adw_alert_dialog_set_prefer_wide_layout (self, gboolean prefer_wide_layout))
]

{ #category : 'accessing' }
AdwAlertDialog >> responseAppearance: response to: appearance [

	self ffiCall: #(void adw_alert_dialog_set_response_appearance (
		self, 
		const char* response, 
		AdwResponseAppearance appearance))
]

{ #category : 'private' }
AdwAlertDialog >> setExtraChild: child [

	self ffiCall: #(void adw_alert_dialog_set_extra_child (self, GtkWidget* child))

]
