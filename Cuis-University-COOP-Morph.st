!classDefinition: #COOPWindow category: #'Cuis-University-COOP-Morph'!
BrowserWindow subclass: #COOPWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Morph'!

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 9/26/2019 18:39:16'!
buildCOOPRulePane
	"Construct the pane that shows the code.
	Respect the Preference for standardCodeFont."
		
	| codePaneLayout ruleListPane |
	codePaneLayout _ LayoutMorph newRow.

	ruleListPane _ self ruleListPane.
	
	codePaneLayout addAdjusterAndMorph: codePane proportionalWidth: 0.8.
	codePaneLayout addAdjusterAndMorph: ruleListPane proportionalWidth: 0.2.

	^codePaneLayout .! !

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 9/26/2019 18:39:49'!
buildMorphicCodePane
	"Construct the pane that shows the code.
	Respect the Preference for standardCodeFont."
	
	codePane _ super buildMorphicCodePane.
		 
	^ Preferences coopIsWatching ifTrue:[ ^ self buildCOOPRulePane ] ifFalse: [ ^ codePane] .! !

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 9/26/2019 18:44:36'!
buttonIgnoreRule:aRuleList

	^ PluggableButtonMorph 
					model: [ PopUpMenu inform: 'ignorando' ]
					action: #value
					label: 'ignorar'! !

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 9/26/2019 18:45:07'!
buttonMoreRuleInformation:aRuleList

	^ PluggableButtonMorph 
					model: [ PopUpMenu inform: (aRuleList mostrarActual) ]
					action: #value
					label: 'ver'.! !

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 9/26/2019 18:43:58'!
buttonRuleViewPane:aRuleList

	| buttonIgnoreRule buttonMoreRuleInformation ruleViewPane |
	ruleViewPane _ LayoutMorph newRow.

	buttonMoreRuleInformation _ self buttonMoreRuleInformation:aRuleList.
	buttonIgnoreRule _ self buttonIgnoreRule:aRuleList.
	
	ruleViewPane addMorph: buttonMoreRuleInformation proportionalWidth: 0.5.
	ruleViewPane addMorph: buttonIgnoreRule proportionalWidth: 0.5.

	^ ruleViewPane.! !

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 9/26/2019 18:42:37'!
ruleList: aRuleList


	^ PluggableListMorph
		model: aRuleList
		listGetter: #elementos
		indexGetter: #indiceElementoSeleccionado
		indexSetter: #indiceElementoSeleccionado:! !

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 9/26/2019 18:43:31'!
ruleListPane
	| buttonPane ruleList ruleListView ruleListPane |
	ruleList _ RuleList  new .
	ruleListPane _ LayoutMorph newColumn.
	
	ruleListView _ self ruleList: ruleList .
		
	buttonPane _ self buttonRuleViewPane:ruleList.
		
	ruleListPane addMorph: buttonPane fixedHeight: self defaultButtonPaneHeight.
	ruleListPane addMorph: ruleListView proportionalHeight: 1.
	
	^ ruleListPane.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'COOPWindow class' category: #'Cuis-University-COOP-Morph'!
COOPWindow class
	instanceVariableNames: ''!

!COOPWindow class methodsFor: 'as yet unclassified' stamp: 'GET 9/22/2019 19:31:59'!
worldMenuForOpenGroup
	^ `{{
			#itemGroup 		-> 		10.
			#itemOrder 		-> 		30.
			#label 			->			'COOP Browser'.
			#object 			-> 		COOPWindow.
			#selector 		-> 		#openBrowser.
			#icon 			-> 		#editFindReplaceIcon.
			#balloonText 	-> 		'A browser with COOP - gui - integrated'.
		} asDictionary}`! !


!classDefinition: #COOPPreferences category: #'Cuis-University-COOP-Morph'!
Object subclass: #COOPPreferences
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Morph'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'COOPPreferences class' category: #'Cuis-University-COOP-Morph'!
COOPPreferences class
	instanceVariableNames: ''!

!COOPPreferences class methodsFor: 'as yet unclassified' stamp: 'GET 9/26/2019 19:01:57'!
initialize
	"
	COOPPreferences initialize
	"
	Preferences
		addPreference: #coopIsWatching 
		category: #coop
		default: false
		balloonHelp: 'Activates COOP!!'.! !

!COOPPreferences class methodsFor: 'as yet unclassified' stamp: 'GET 9/26/2019 19:02:54'!
preferenceLabel
	^ Preferences coopIsWatching ifTrue: 'COOP is on' ifFalse: 'COOP is off'.! !

!COOPPreferences class methodsFor: 'as yet unclassified' stamp: 'GET 9/26/2019 18:59:29'!
switchCOOPWatcher

	Preferences togglePreference: #coopIsWatching .! !


!classDefinition: #RuleList category: #'Cuis-University-COOP-Morph'!
Object subclass: #RuleList
	instanceVariableNames: 'elementos indiceElementoSeleccionado'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Morph'!

!RuleList methodsFor: 'as yet unclassified' stamp: 'FJG 9/20/2019 18:49:38'!
elementos
	^ elementos! !

!RuleList methodsFor: 'as yet unclassified' stamp: 'FJG 9/20/2019 18:52:36'!
indiceElementoSeleccionado
	^ indiceElementoSeleccionado! !

!RuleList methodsFor: 'as yet unclassified' stamp: 'FJG 9/20/2019 18:52:33'!
indiceElementoSeleccionado: anInteger
	indiceElementoSeleccionado _ anInteger ! !

!RuleList methodsFor: 'as yet unclassified' stamp: 'GET 9/22/2019 19:49:18'!
initialize
	elementos _ { 'Soy una regla 1 ' . 'Soy una regla 2 '}.
	indiceElementoSeleccionado _ 1.! !

!RuleList methodsFor: 'as yet unclassified' stamp: 'GET 9/26/2019 18:45:38'!
mostrarActual 
 ^ elementos at: indiceElementoSeleccionado .! !

COOPPreferences initialize!