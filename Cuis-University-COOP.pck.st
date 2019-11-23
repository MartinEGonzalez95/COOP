'From Cuis 5.0 [latest update: #3958] on 23 November 2019 at 9:13:37 am'!
'Description '!
!provides: 'Cuis-University-COOP' 1 42!
SystemOrganization addCategory: #'Cuis-University-COOP'!
SystemOrganization addCategory: #'Cuis-University-COOP-Tests'!
SystemOrganization addCategory: #'Cuis-University-COOP-Morph'!


!classDefinition: #COOPBrowser category: #'Cuis-University-COOP-Morph'!
Browser subclass: #COOPBrowser
	instanceVariableNames: 'methodsWithRules browser'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Morph'!
!classDefinition: 'COOPBrowser class' category: #'Cuis-University-COOP-Morph'!
COOPBrowser class
	instanceVariableNames: ''!

!classDefinition: #COOPShoutTextBackgroundColor category: #'Cuis-University-COOP-Morph'!
ShoutTextBackgroundColor subclass: #COOPShoutTextBackgroundColor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Morph'!
!classDefinition: 'COOPShoutTextBackgroundColor class' category: #'Cuis-University-COOP-Morph'!
COOPShoutTextBackgroundColor class
	instanceVariableNames: ''!

!classDefinition: #COOPWindow category: #'Cuis-University-COOP-Morph'!
BrowserWindow subclass: #COOPWindow
	instanceVariableNames: 'highlighter fixer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Morph'!
!classDefinition: 'COOPWindow class' category: #'Cuis-University-COOP-Morph'!
COOPWindow class
	instanceVariableNames: ''!

!classDefinition: #COOPFixerTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #COOPFixerTest
	instanceVariableNames: 'coopMethodFactory fixer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPFixerTest class' category: #'Cuis-University-COOP-Tests'!
COOPFixerTest class
	instanceVariableNames: ''!

!classDefinition: #COOPHighlighterTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #COOPHighlighterTest
	instanceVariableNames: 'coopMethodFactory highlighter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPHighlighterTest class' category: #'Cuis-University-COOP-Tests'!
COOPHighlighterTest class
	instanceVariableNames: ''!

!classDefinition: #COOPMethodFactoryTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #COOPMethodFactoryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPMethodFactoryTest class' category: #'Cuis-University-COOP-Tests'!
COOPMethodFactoryTest class
	instanceVariableNames: ''!

!classDefinition: #COOPRuleTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #COOPRuleTest
	instanceVariableNames: 'coopMethodFactory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPRuleTest class' category: #'Cuis-University-COOP-Tests'!
COOPRuleTest class
	instanceVariableNames: ''!

!classDefinition: #COOPRuleColaborationChainTest category: #'Cuis-University-COOP-Tests'!
COOPRuleTest subclass: #COOPRuleColaborationChainTest
	instanceVariableNames: 'methodFactory rule'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPRuleColaborationChainTest class' category: #'Cuis-University-COOP-Tests'!
COOPRuleColaborationChainTest class
	instanceVariableNames: 'coopHelper'!

!classDefinition: #COOPRuleCollectionSizeTest category: #'Cuis-University-COOP-Tests'!
COOPRuleTest subclass: #COOPRuleCollectionSizeTest
	instanceVariableNames: 'rule'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPRuleCollectionSizeTest class' category: #'Cuis-University-COOP-Tests'!
COOPRuleCollectionSizeTest class
	instanceVariableNames: 'coopHelper'!

!classDefinition: #COOPRuleInstanceMethodToClassTest category: #'Cuis-University-COOP-Tests'!
COOPRuleTest subclass: #COOPRuleInstanceMethodToClassTest
	instanceVariableNames: 'rule'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPRuleInstanceMethodToClassTest class' category: #'Cuis-University-COOP-Tests'!
COOPRuleInstanceMethodToClassTest class
	instanceVariableNames: ''!

!classDefinition: #COOPRuleNilAsArgumentTest category: #'Cuis-University-COOP-Tests'!
COOPRuleTest subclass: #COOPRuleNilAsArgumentTest
	instanceVariableNames: 'rule'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPRuleNilAsArgumentTest class' category: #'Cuis-University-COOP-Tests'!
COOPRuleNilAsArgumentTest class
	instanceVariableNames: 'coopHelper'!

!classDefinition: #COOPRuleNilAssigmentTest category: #'Cuis-University-COOP-Tests'!
COOPRuleTest subclass: #COOPRuleNilAssigmentTest
	instanceVariableNames: 'rule anInstanceVariable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPRuleNilAssigmentTest class' category: #'Cuis-University-COOP-Tests'!
COOPRuleNilAssigmentTest class
	instanceVariableNames: 'coopHelper'!

!classDefinition: #COOPRuleNonsenseBooleanTest category: #'Cuis-University-COOP-Tests'!
COOPRuleTest subclass: #COOPRuleNonsenseBooleanTest
	instanceVariableNames: 'methodFactory rule'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPRuleNonsenseBooleanTest class' category: #'Cuis-University-COOP-Tests'!
COOPRuleNonsenseBooleanTest class
	instanceVariableNames: ''!

!classDefinition: #COOPRuleReturnNilTest category: #'Cuis-University-COOP-Tests'!
COOPRuleTest subclass: #COOPRuleReturnNilTest
	instanceVariableNames: 'rule'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPRuleReturnNilTest class' category: #'Cuis-University-COOP-Tests'!
COOPRuleReturnNilTest class
	instanceVariableNames: 'coopHelper'!

!classDefinition: #COOPRuleTestAssertionTest category: #'Cuis-University-COOP-Tests'!
COOPRuleTest subclass: #COOPRuleTestAssertionTest
	instanceVariableNames: 'rule'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPRuleTestAssertionTest class' category: #'Cuis-University-COOP-Tests'!
COOPRuleTestAssertionTest class
	instanceVariableNames: 'coopHelper'!

!classDefinition: #COOPTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #COOPTest
	instanceVariableNames: 'coop aRule2 aRule notifier coopMethodFactory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPTest class' category: #'Cuis-University-COOP-Tests'!
COOPTest class
	instanceVariableNames: ''!

!classDefinition: #RuleListTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #RuleListTest
	instanceVariableNames: 'ruleList aRule'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'RuleListTest class' category: #'Cuis-University-COOP-Tests'!
RuleListTest class
	instanceVariableNames: ''!

!classDefinition: #COOPMethodFactory category: #'Cuis-University-COOP-Tests'!
LiveTypingTestFactory subclass: #COOPMethodFactory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPMethodFactory class' category: #'Cuis-University-COOP-Tests'!
COOPMethodFactory class
	instanceVariableNames: ''!

!classDefinition: #COOP category: #'Cuis-University-COOP'!
Object subclass: #COOP
	instanceVariableNames: 'rules performer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!
!classDefinition: 'COOP class' category: #'Cuis-University-COOP'!
COOP class
	instanceVariableNames: ''!

!classDefinition: #COOPFixer category: #'Cuis-University-COOP'!
Object subclass: #COOPFixer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!
!classDefinition: 'COOPFixer class' category: #'Cuis-University-COOP'!
COOPFixer class
	instanceVariableNames: ''!

!classDefinition: #COOPPerformer category: #'Cuis-University-COOP'!
Object subclass: #COOPPerformer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!
!classDefinition: 'COOPPerformer class' category: #'Cuis-University-COOP'!
COOPPerformer class
	instanceVariableNames: ''!

!classDefinition: #COOPRule category: #'Cuis-University-COOP'!
Object subclass: #COOPRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!
!classDefinition: 'COOPRule class' category: #'Cuis-University-COOP'!
COOPRule class
	instanceVariableNames: ''!

!classDefinition: #COOPRuleColaborationChain category: #'Cuis-University-COOP'!
COOPRule subclass: #COOPRuleColaborationChain
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!
!classDefinition: 'COOPRuleColaborationChain class' category: #'Cuis-University-COOP'!
COOPRuleColaborationChain class
	instanceVariableNames: ''!

!classDefinition: #COOPRuleCollectionSize category: #'Cuis-University-COOP'!
COOPRule subclass: #COOPRuleCollectionSize
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!
!classDefinition: 'COOPRuleCollectionSize class' category: #'Cuis-University-COOP'!
COOPRuleCollectionSize class
	instanceVariableNames: ''!

!classDefinition: #COOPRuleInstanceMethodToClass category: #'Cuis-University-COOP'!
COOPRule subclass: #COOPRuleInstanceMethodToClass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!
!classDefinition: 'COOPRuleInstanceMethodToClass class' category: #'Cuis-University-COOP'!
COOPRuleInstanceMethodToClass class
	instanceVariableNames: ''!

!classDefinition: #COOPRuleNilAsArgument category: #'Cuis-University-COOP'!
COOPRule subclass: #COOPRuleNilAsArgument
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!
!classDefinition: 'COOPRuleNilAsArgument class' category: #'Cuis-University-COOP'!
COOPRuleNilAsArgument class
	instanceVariableNames: ''!

!classDefinition: #COOPRuleNilAssigment category: #'Cuis-University-COOP'!
COOPRule subclass: #COOPRuleNilAssigment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!
!classDefinition: 'COOPRuleNilAssigment class' category: #'Cuis-University-COOP'!
COOPRuleNilAssigment class
	instanceVariableNames: ''!

!classDefinition: #COOPRuleNonsenseBoolean category: #'Cuis-University-COOP'!
COOPRule subclass: #COOPRuleNonsenseBoolean
	instanceVariableNames: 'booleanControllingMessages'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!
!classDefinition: 'COOPRuleNonsenseBoolean class' category: #'Cuis-University-COOP'!
COOPRuleNonsenseBoolean class
	instanceVariableNames: ''!

!classDefinition: #COOPRuleReturnNil category: #'Cuis-University-COOP'!
COOPRule subclass: #COOPRuleReturnNil
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!
!classDefinition: 'COOPRuleReturnNil class' category: #'Cuis-University-COOP'!
COOPRuleReturnNil class
	instanceVariableNames: ''!

!classDefinition: #COOPRuleTestAssertion category: #'Cuis-University-COOP'!
COOPRule subclass: #COOPRuleTestAssertion
	instanceVariableNames: 'assertionsSelectors'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!
!classDefinition: 'COOPRuleTestAssertion class' category: #'Cuis-University-COOP'!
COOPRuleTestAssertion class
	instanceVariableNames: ''!

!classDefinition: #DemoCase category: #'Cuis-University-COOP-Tests'!
Object subclass: #DemoCase
	instanceVariableNames: 'aNilInstanceVariable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'DemoCase class' category: #'Cuis-University-COOP-Tests'!
DemoCase class
	instanceVariableNames: ''!

!classDefinition: #NotifierForTesting category: #'Cuis-University-COOP-Tests'!
Object subclass: #NotifierForTesting
	instanceVariableNames: 'object hasNotified selector lastParameterSended'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'NotifierForTesting class' category: #'Cuis-University-COOP-Tests'!
NotifierForTesting class
	instanceVariableNames: ''!

!classDefinition: #COOPHighlighter category: #'Cuis-University-COOP-Morph'!
Object subclass: #COOPHighlighter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Morph'!
!classDefinition: 'COOPHighlighter class' category: #'Cuis-University-COOP-Morph'!
COOPHighlighter class
	instanceVariableNames: ''!

!classDefinition: #COOPPreferences category: #'Cuis-University-COOP-Morph'!
Object subclass: #COOPPreferences
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Morph'!
!classDefinition: 'COOPPreferences class' category: #'Cuis-University-COOP-Morph'!
COOPPreferences class
	instanceVariableNames: ''!

!classDefinition: #RuleDescriptor category: #'Cuis-University-COOP-Morph'!
Object subclass: #RuleDescriptor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Morph'!
!classDefinition: 'RuleDescriptor class' category: #'Cuis-University-COOP-Morph'!
RuleDescriptor class
	instanceVariableNames: ''!

!classDefinition: #RuleList category: #'Cuis-University-COOP-Morph'!
Object subclass: #RuleList
	instanceVariableNames: 'rules selectedRuleIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Morph'!
!classDefinition: 'RuleList class' category: #'Cuis-University-COOP-Morph'!
RuleList class
	instanceVariableNames: ''!


!COOPBrowser methodsFor: 'accessing' stamp: 'GET 10/1/2019 23:50:38'!
indexRuleSelected
	
	^ self ruleList indexRuleSelected ! !

!COOPBrowser methodsFor: 'accessing' stamp: 'GET 10/1/2019 23:51:27'!
indexRuleSelected: index
	
	^ self ruleList indexRuleSelected:index! !

!COOPBrowser methodsFor: 'accessing' stamp: 'GET 10/3/2019 20:37:54'!
keyForRule: aMethodNode

	^ aMethodNode classAndSelector .! !

!COOPBrowser methodsFor: 'accessing' stamp: 'GET 10/3/2019 20:40:08'!
ruleList
	
	^ [ self ruleListOf: self selectedClassAndMessage ] ifError: [ RuleList new ].

	! !

!COOPBrowser methodsFor: 'accessing' stamp: 'MEG 10/9/2019 21:02:02'!
ruleListOf: symbol

	^ methodsWithRules at: symbol ifAbsentPut: [ RuleList new ] .! !

!COOPBrowser methodsFor: 'accessing' stamp: 'MEG 10/14/2019 13:17:30'!
selectedClassAndMessage

	| selectedClassOrMetaClassName selectedMessageName |
	selectedClassOrMetaClassName _ self selectedClassOrMetaClass name.
	selectedMessageName _ self selectedMessageName storeString.

	^ selectedClassOrMetaClassName, '>>', selectedMessageName.! !

!COOPBrowser methodsFor: 'accessing' stamp: 'GET 11/2/2019 20:09:51'!
selectedCompiledMethodIfNone: aBlock
	| class selector |

	class _ self selectedClassOrMetaClass ifNil: aBlock .
	selector _ self selectedMessageName ifNil: aBlock .
	
	^ class compiledMethodAt: selector ifAbsent: aBlock .
	
! !

!COOPBrowser methodsFor: 'accessing' stamp: 'GET 11/2/2019 21:04:19'!
selectedCurrentMethodNodeIfNone: aBlock
	
	^ (self selectedCompiledMethodIfNone: aBlock) methodNode! !

!COOPBrowser methodsFor: 'initialize' stamp: 'GET 11/3/2019 22:55:24'!
initialize
	super initialize .
	methodsWithRules _ Dictionary new.
	
	self when: #annotationChanged send: #runCOOP to: self.
	self when: #annotationChanged send: #refetchRules to: self.
! !

!COOPBrowser methodsFor: 'initialize' stamp: 'GET 10/1/2019 23:49:47'!
rules
	^ self ruleList rulesTitles .! !

!COOPBrowser methodsFor: 'action' stamp: 'GET 11/3/2019 22:14:29'!
addRule: aRule for:aMethodNode

	| aRuleList |
	aRuleList _ self ruleListOf: (self keyForRule: aMethodNode ).	.

	aRuleList add:aRule.
	
	self refetchRules .! !

!COOPBrowser methodsFor: 'action' stamp: 'MEG 10/27/2019 20:27:27'!
affectedNodesFor: rule with: methodNode 
	
	^ rule selectAffectedNodes: methodNode! !

!COOPBrowser methodsFor: 'action' stamp: 'GET 11/3/2019 22:15:40'!
cleanBeforeRunning: aMethodNode

	| aRuleList |
	aRuleList _ self ruleListOf: ( self keyForRule: aMethodNode ).	.

	aRuleList clean.
	
	self refetchRules .! !

!COOPBrowser methodsFor: 'action' stamp: 'MEG 10/27/2019 19:54:34'!
describeRule

	self changed: #highlightCode.

	^ self ruleList describeRule .! !

!COOPBrowser methodsFor: 'action' stamp: 'GET 11/3/2019 22:15:25'!
ignoreRule
	| ignoredRule |
	 ignoredRule _ self ruleList ignoreRule .

	self refetchRules .
	
	^ ignoredRule .! !

!COOPBrowser methodsFor: 'action' stamp: 'GET 11/2/2019 19:01:20'!
refetchRules
	
	self changed: #rules.! !

!COOPBrowser methodsFor: 'action' stamp: 'GET 11/3/2019 22:56:37'!
runCOOP

	| methodNode |

	methodNode _ self selectedCurrentMethodNodeIfNone: [ ^ self].

	COOP new performInteractiveChecksFor: methodNode.! !

!COOPBrowser methodsFor: 'action' stamp: 'GET 11/3/2019 23:22:42'!
selectedRuleIfNone: aBlock
	
	^ self ruleList selectedRuleIfNone: aBlock.! !

!COOPShoutTextBackgroundColor methodsFor: 'testing' stamp: 'MEG 11/10/2019 19:33:22'!
belongsToCOOP

	^ true! !

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 9/28/2019 00:17:12'!
buildButtonRulePane

	| buttonIgnoreRule buttonMoreRuleInformation ruleViewPane |
	ruleViewPane _ LayoutMorph newRow.

	buttonMoreRuleInformation _ self createButtonMoreRuleInformation.
	buttonIgnoreRule _ self createButtonIgnoreRule.
	
	ruleViewPane addMorph: buttonMoreRuleInformation proportionalWidth: 0.5.
	ruleViewPane addMorph: buttonIgnoreRule proportionalWidth: 0.5.

	^ ruleViewPane.! !

!COOPWindow methodsFor: 'GUI building' stamp: 'MEG 10/14/2019 15:14:05'!
buildCOOPRulePane
		
	| codePaneLayout ruleListPane |
	codePaneLayout _ LayoutMorph newRow.
	
	ruleListPane _ self buildRuleListPane.
	
	codePaneLayout addAdjusterAndMorph: codePane proportionalWidth: 0.7.
	codePaneLayout addAdjusterAndMorph: ruleListPane proportionalWidth: 0.3.

	^ codePaneLayout .! !

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 9/28/2019 00:17:52'!
buildMorphicCodePane
	"Construct the pane that shows the code.
	Respect the Preference for standardCodeFont."
	
	codePane _ super buildMorphicCodePane.
		 
	^ Preferences coopIsWatching ifTrue:[ self buildCOOPRulePane ] ifFalse: [ codePane] .! !

!COOPWindow methodsFor: 'GUI building' stamp: 'MEG 11/16/2019 20:22:42'!
buildQuickFixMenu

	| answer |
	answer _ PopUpMenu confirm: model describeRule
				trueChoice: 'Si' falseChoice: 'No' icons: #(acceptIcon cancelIcon).

	answer ifTrue: [ self fixMethod ]! !

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 10/3/2019 20:27:04'!
buildRuleListMorph

	^ PluggableListMorph
		model: model 
		listGetter: #rules
		indexGetter: #indexRuleSelected
		indexSetter: #indexRuleSelected:! !

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 10/1/2019 00:34:04'!
buildRuleListPane
	| buttonPane  ruleListView ruleListPane |
	ruleListPane _ LayoutMorph newColumn.
	
	ruleListView _ self buildRuleListMorph.
		
	buttonPane _ self buildButtonRulePane.
		
	ruleListPane addMorph: buttonPane fixedHeight: self defaultButtonPaneHeight.
	ruleListPane addMorph: ruleListView proportionalHeight: 1.
	
	^ ruleListPane.! !

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 9/28/2019 00:15:46'!
createButtonIgnoreRule

	^ PluggableButtonMorph 
					model: self
					action: #ignoreRule
					label: 'Ignorar'! !

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 9/28/2019 00:16:35'!
createButtonMoreRuleInformation

	^ (PluggableButtonMorph 
					model: [ self describeSelectedRule]
					action: #value
					label: 'Ver') .! !

!COOPWindow methodsFor: 'accessing' stamp: 'GET 10/3/2019 20:27:25'!
ruleList

	^ model ruleList.! !

!COOPWindow methodsFor: 'action' stamp: 'MEG 11/16/2019 20:22:42'!
describeSelectedRule

	| selectedRule |
	selectedRule _ model selectedRuleIfNone: [ nil ] .

	selectedRule ifNotNil: [ selectedRule couldBeFixed ifTrue: [ ^ self buildQuickFixMenu ] ] .

	PopUpMenu inform: model describeRule .! !

!COOPWindow methodsFor: 'action' stamp: 'GET 11/18/2019 02:35:35'!
fixMethod

	fixer fix: ( model selectedCurrentMethodNodeIfNone: [ ^ self ]).! !

!COOPWindow methodsFor: 'action' stamp: 'GET 11/18/2019 02:35:46'!
highlightCode

	| selectedRule methodNode  |
	selectedRule _ model selectedRuleIfNone: [ ^ self ].
	methodNode _ model selectedCurrentMethodNodeIfNone: [^ self ].
		
	highlighter change: codePane text of: methodNode using: selectedRule .
		! !

!COOPWindow methodsFor: 'action' stamp: 'GET 10/3/2019 20:27:36'!
ignoreRule

	PopUpMenu  inform: model ignoreRule.! !

!COOPWindow methodsFor: 'action' stamp: 'MEG 10/14/2019 00:36:28'!
informCOOP

	model ifNotNil: [ model runCOOP ]! !

!COOPWindow methodsFor: 'updating' stamp: 'MEG 10/27/2019 19:54:09'!
update: parameter
	
	super update: parameter.
	
	parameter = #highlightCode ifTrue: [ self highlightCode ]! !

!COOPWindow methodsFor: 'initialize' stamp: 'MEG 11/16/2019 19:43:26'!
initialize

	super initialize.
	
	highlighter _ COOPHighlighter new.

	fixer _ COOPFixer new.
! !

!COOPWindow class methodsFor: 'instance creation' stamp: 'GET 10/3/2019 19:09:32'!
openCOOPWindow
	| browser window |
	browser _ COOPBrowser new.
	window _ self open: browser label: browser defaultBrowserTitle.	
	^ window! !

!COOPWindow class methodsFor: 'action' stamp: 'MEG 10/14/2019 00:36:20'!
informCOOP

	self allInstancesDo: [ :coopWindow | coopWindow informCOOP ]! !

!COOPFixerTest methodsFor: 'setUp/tearDown' stamp: 'MEG 11/16/2019 16:24:05'!
setUp

	coopMethodFactory  _ COOPMethodFactory new .

	fixer _ COOPFixer new
! !

!COOPFixerTest methodsFor: 'method-for-testing' stamp: 'MEG 11/16/2019 18:58:52'!
equalCase

	| col |

	col _ OrderedCollection new.

	^ col size = 0! !

!COOPFixerTest methodsFor: 'method-for-testing' stamp: 'MEG 11/16/2019 17:55:39'!
ifFalseClause

	^ 2 > 1 ifFalse: [ false ]! !

!COOPFixerTest methodsFor: 'method-for-testing' stamp: 'MEG 11/16/2019 17:35:55'!
invertedEqualCase

	| col |

	col _ OrderedCollection new.

	^ 0 = col size! !

!COOPFixerTest methodsFor: 'method-for-testing' stamp: 'MEG 11/16/2019 16:23:37'!
searchMethodNode: selectorName

	^ coopMethodFactory findMethodNodeNamed: selectorName in: self class! !

!COOPFixerTest methodsFor: 'testing' stamp: 'MEG 11/17/2019 02:05:31'!
testCOOPFixerIdentifiesRangeToFixForCollectionSizeRuleWithEqualCase

	| methodNode affectedNode expectedInterval rule |

	methodNode _ self searchMethodNode: #equalCase .
	rule _ COOPRuleCollectionSize new .
	affectedNode _ ( rule selectAffectedNodes: methodNode ) anyOne .

	expectedInterval _ fixer intervalFor: affectedNode on: methodNode ifAbsent: [ Interval from: 0 to: 0 ] .

	self assert: expectedInterval first equals: 60 .
	self assert: expectedInterval last equals: 67 .! !

!COOPFixerTest methodsFor: 'testing' stamp: 'MEG 11/16/2019 18:35:14'!
testCOOPFixerIdentifiesRangeToFixForCollectionSizeRuleWithInvertedEqualCase

	| methodNode affectedNode expectedInterval rule |

	methodNode _ self searchMethodNode: #invertedEqualCase .
	rule _ COOPRuleCollectionSize new .
	affectedNode _ ( rule selectAffectedNodes: methodNode ) anyOne .

	expectedInterval _ fixer intervalFor: affectedNode on: methodNode ifAbsent: [ Interval from: 0 to: 0 ] .

	self assert: expectedInterval first equals: 64 .
	self assert: expectedInterval last equals: 75 .! !

!COOPFixerTest methodsFor: 'testing' stamp: 'MEG 11/16/2019 19:01:23'!
testCOOPFixerReplacesAffectedIntervalFromAMethodNode

	| methodNode affectedNode expectedInterval rule wrongSourceText rightSourceText |

	methodNode _ self searchMethodNode: #equalCase .
	wrongSourceText _ methodNode sourceText .
	rule _ COOPRuleCollectionSize new .
	affectedNode _ ( rule selectAffectedNodes: methodNode ) anyOne .

	expectedInterval _ fixer intervalFor: affectedNode on: methodNode ifAbsent: [ Interval from: 0 to: 0 ] .

	rightSourceText _ (fixer replace: expectedInterval from: wrongSourceText with: 'isEmpty').

	self deny: ( wrongSourceText includesSubString: '^ col isEmpty' ) .
	self assert: ( rightSourceText includesSubString: '^ col isEmpty' )! !

!COOPFixerTest methodsFor: 'testing' stamp: 'MEG 11/16/2019 18:36:06'!
testCOOPFixerReplacesIntervalFromAText

	| interval |
	interval _ Interval from: 6 to: 9.

	self assert: (fixer replace: interval from: 'Hola Juan, Como Estas?' with: 'Martin') equals: 'Hola Martin, Como Estas?' .! !

!COOPFixerTest methodsFor: 'testing' stamp: 'MEG 11/16/2019 17:56:54'!
testCOOPFixerUsesIfAbsentBlock

	| expectedInterval notAffectedNode rule equalCaseMethodNode ifFalseMethodNode |

	equalCaseMethodNode _ self searchMethodNode: #equalCase .
	ifFalseMethodNode _ self searchMethodNode: #ifFalseClause.
	rule _ COOPRuleCollectionSize new .
	notAffectedNode _ ( rule selectAffectedNodes: equalCaseMethodNode ) anyOne .

	expectedInterval _ fixer intervalFor: notAffectedNode on: ifFalseMethodNode ifAbsent: [ Interval from: 5 to: 10 ] .

	self assert: expectedInterval first equals: 5 .
	self assert: expectedInterval last equals: 10 .! !

!COOPHighlighterTest methodsFor: 'setUp/tearDown' stamp: 'GET 10/30/2019 19:29:13'!
setUp

	coopMethodFactory  _ COOPMethodFactory new.
	highlighter _ COOPHighlighter new. 

! !

!COOPHighlighterTest methodsFor: 'testing' stamp: 'MEG 11/10/2019 19:36:01'!
testCOOPHighlighterCanNotCleanNonCOOPAttributesOfAText

	| text |
	text _ 'Clean Highlight Attributes' asText .
	text addAttribute: ShoutTextColor yellow from: 1 to: 2.

	self assert: text hasAnyAttribute.

	highlighter cleanHighlightOn: text.

	self assert: text hasAnyAttribute.! !

!COOPHighlighterTest methodsFor: 'testing' stamp: 'MEG 11/10/2019 19:36:57'!
testCOOPHighlighterCleansAllTheCOOPHighlightAttributesOfAText

	| text |
	text _ 'Clean Highlight Attributes' asText .
	text addAttribute: COOPShoutTextBackgroundColor yellow from: 1 to: 2.

	self assert: text hasAnyAttribute.

	highlighter cleanHighlightOn: text.

	self deny: text hasAnyAttribute.! !

!COOPHighlighterTest methodsFor: 'testing' stamp: 'GET 10/30/2019 19:49:57'!
testWhenTheMethodDoesNotHaveErrorsItDoesNotModifiedTheSourceText
	
	|methodSourceText methodNode |
	methodNode  _  self searchMethodNode:  #caseWhenIfFalseClauseWithReturnOnBlockNotApply.
	methodSourceText _ methodNode sourceText asText .
	
	highlighter change: methodSourceText of: methodNode using: COOPRuleNonsenseBoolean new. 
		
	self deny: methodSourceText hasAnyAttribute.! !

!COOPHighlighterTest methodsFor: 'testing' stamp: 'GET 10/30/2019 19:49:23'!
testWhenTheMethodHasErrorsTheHighligtherModifiesTheSourceText
	
	|methodSourceText methodNode |
	methodNode  _  self searchMethodNode:  #oneRuleWithMoreCases.
	methodSourceText _ methodNode sourceText asText .

	highlighter change: methodSourceText of: methodNode using: COOPRuleCollectionSize new. 
		
	self assert: methodSourceText hasAnyAttribute.! !

!COOPHighlighterTest methodsFor: 'factory-method-nodes' stamp: 'GET 10/27/2019 23:07:02'!
searchMethodNode: selector

	^ coopMethodFactory findMethodNodeNamed: selector in:  DemoCase  .! !

!COOPMethodFactoryTest methodsFor: 'compiled-method-test' stamp: 'MEG 9/22/2019 23:49:16'!
testCOOPMethodFactoryCompilesNewMethodNode

	| methodFactory aMethodNode |

	methodFactory _ COOPMethodFactory new.
	
	aMethodNode _ methodFactory compileAndReturnMethod: #temporal withSourceCode: '^ 1.'.
	
	self assert: aMethodNode class equals: MethodNode.
	self assert: aMethodNode selector equals: #temporal.! !

!COOPMethodFactoryTest methodsFor: 'compiled-method-test' stamp: 'GET 10/13/2019 16:30:34'!
testCOOPMethodFactorySearchAMessage

	| methodFactory aMethodNode |
	methodFactory _ COOPMethodFactory new.

	aMethodNode _ methodFactory findMethodNodeNamed: #size in: Collection.

	self assert: (aMethodNode isKindOf: MethodNode).
	self assert: aMethodNode selector equals: #size.! !

!COOPRuleTest methodsFor: 'setUp/tearDown' stamp: 'GET 10/13/2019 16:32:13'!
setUp

	coopMethodFactory _ COOPMethodFactory new.! !

!COOPRuleTest methodsFor: 'method-for-testing' stamp: 'MEG 11/16/2019 16:23:29'!
searchMethodNode: selectorName

	^ coopMethodFactory findMethodNodeNamed: selectorName in: self class! !

!COOPRuleColaborationChainTest methodsFor: 'rule-not-apply' stamp: 'GET 10/13/2019 15:51:56'!
testAmountOfChainedColaborationsIsZeroForNoMessageNodes

	| aNode |
	aNode  _ VariableNode named: 'self'.

	self assert: (rule amountOfColaborations: aNode ) equals: 0.! !

!COOPRuleColaborationChainTest methodsFor: 'rule-not-apply' stamp: 'GET 10/11/2019 23:10:54'!
testDontApplyWhenTheMethodNodeHasTwoMessageColaborations

	| methodNode |
	
	methodNode  _ self searchMethodNode: #messageNodeWithTwoChainedColaborations .

	self deny: (rule check: methodNode ).! !

!COOPRuleColaborationChainTest methodsFor: 'rule-not-apply' stamp: 'GET 10/11/2019 23:09:27'!
testRuleDoNotApplyOnCascadeMessages

	| methodNode |
	methodNode  _ self searchMethodNode: #methodWithThreeCascadeChainedColaborations .

	self deny: (rule check: methodNode ).! !

!COOPRuleColaborationChainTest methodsFor: 'rule-apply' stamp: 'GET 10/11/2019 23:09:20'!
testApplyWhenTheMethodHasThreeChainedColaborations

	| methodNode |
	methodNode  _ self searchMethodNode: #methodWithThreeChainedColaborations .

	self assert: (rule check: methodNode ).! !

!COOPRuleColaborationChainTest methodsFor: 'rule-apply' stamp: 'GET 10/11/2019 23:10:47'!
testRuleCountTheMessageColaborationsInNode
		
	| messageNode |
	messageNode  _ self messageNodeWithThreeChainedColaborations.

	self assert: (rule amountOfColaborations: messageNode ) equals: 3.! !

!COOPRuleColaborationChainTest methodsFor: 'setup/teardown' stamp: 'MEG 10/15/2019 16:29:06'!
setUp
	super setUp.
	rule _ COOPRuleColaborationChain new.! !

!COOPRuleColaborationChainTest methodsFor: 'method-for-testing' stamp: 'GET 10/6/2019 20:46:38'!
message: selectorName to: receiver
	| selector |
	selector _ SelectorNode new
		key: selectorName
		code: 34.
	^ MessageNode new
		receiver: receiver
		selector: selector
		arguments: #()
		precedence: 1.! !

!COOPRuleColaborationChainTest methodsFor: 'method-for-testing' stamp: 'GET 10/11/2019 23:10:39'!
messageNodeWithOneColaboration

	| selfReceiver |
	selfReceiver _ VariableNode named:'self'.

	^self message: #col1 to: selfReceiver.! !

!COOPRuleColaborationChainTest methodsFor: 'method-for-testing' stamp: 'GET 10/11/2019 23:10:54'!
messageNodeWithThreeChainedColaborations

	^ self message:#col3 to: self messageNodeWithTwoChainedColaborations .! !

!COOPRuleColaborationChainTest methodsFor: 'method-for-testing' stamp: 'GET 10/11/2019 23:10:54'!
messageNodeWithTwoChainedColaborations

	^ self message:#col2 to: self messageNodeWithOneColaboration! !

!COOPRuleColaborationChainTest methodsFor: 'method-for-testing' stamp: 'GET 10/11/2019 23:09:27'!
methodWithThreeCascadeChainedColaborations

	^ self col1; col2; col3 ! !

!COOPRuleColaborationChainTest methodsFor: 'method-for-testing' stamp: 'GET 10/11/2019 23:09:20'!
methodWithThreeChainedColaborations

	^ self col1 col2 col3.! !

!COOPRuleColaborationChainTest methodsFor: 'method-for-testing' stamp: 'GET 10/11/2019 23:09:10'!
methodWithTwoChainedColaborations

	^ self col1 col2! !

!COOPRuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/29/2019 18:46:49'!
testRuleCollectionSizeDoesNotApplyInAMethodNodeWithIdentityCaseInAComment

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #identityCaseInAComment.
	
	self deny: (rule check: aMethodNode)! !

!COOPRuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/29/2019 18:47:03'!
testRuleCollectionSizeDoesNotApplyInAMethodNodeWithIdentityCaseUnordered

	| aMethodNode |

	aMethodNode _ self searchMethodNode: #unorderedIdentityCase.
	
	self deny: (rule check: aMethodNode)! !

!COOPRuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/29/2019 18:47:19'!
testRuleCollectionSizeDoesNotApplyWhenAnyCaseAreNotInTheSameMessage

	| aMethodNode |

	aMethodNode _ self searchMethodNode: #caseNotInTheSameMessage.
	
	self deny: (rule check: aMethodNode)! !

!COOPRuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/29/2019 18:51:11'!
testRuleCollectionSizeDoesNotApplyWhenCaseIsNotThere

	| aMethodNode |

	aMethodNode _ self searchMethodNode: #noErrorCase.
	
	self deny: (rule check: aMethodNode)! !

!COOPRuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/29/2019 18:47:39'!
testRuleCollectionSizeDoesNotApplyWhenTheCaseHidesOnTemporaryVariableNode

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #caseHiddenOnTemporaryVariable.
	
	self deny: (rule check: aMethodNode)! !

!COOPRuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/29/2019 18:44:08'!
testRuleCollectionSizeApplyInAMethodNodeWithEqualCase

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #equalCase.
	
	self assert: (rule check: aMethodNode)! !

!COOPRuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/29/2019 18:45:44'!
testRuleCollectionSizeApplyInAMethodNodeWithIdentityCase

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #identityCase.
	
	self assert: (rule check: aMethodNode)! !

!COOPRuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/29/2019 18:45:58'!
testRuleCollectionSizeApplyInAMethodNodeWithInvertedEqualCase

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #invertedEqualCase.
	
	self assert: (rule check: aMethodNode)! !

!COOPRuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/29/2019 18:46:16'!
testRuleCollectionSizeApplyInAMethodNodeWithInvertedIdentityCase

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #invertedIdentityCase.
	
	self assert: (rule check: aMethodNode)! !

!COOPRuleCollectionSizeTest methodsFor: 'setup/teardown' stamp: 'MEG 10/15/2019 16:29:23'!
setUp

	super setUp.

	rule _ COOPRuleCollectionSize new.! !

!COOPRuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/28/2019 20:35:54'!
caseHiddenOnTemporaryVariable

	| col zero |

	col _ OrderedCollection new.

	zero _ 0.

	^ col size = zero! !

!COOPRuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/28/2019 20:33:38'!
caseNotInTheSameMessage

	| col colSize |

	col _ OrderedCollection new.

	colSize _ col size.

	^ colSize ~= 0 and: [ (colSize + 1) > 2 ].! !

!COOPRuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/28/2019 19:39:55'!
equalCase

	| col |

	col _ OrderedCollection new.

	^ col size = 0! !

!COOPRuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/28/2019 19:55:12'!
identityCase

	| col |

	col _ OrderedCollection new.

	^ col size == 0! !

!COOPRuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/28/2019 19:59:57'!
identityCaseInAComment

	| col |

	col _ OrderedCollection new.

	" col size == 0 "

	^ col isEmpty ! !

!COOPRuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/28/2019 19:55:41'!
invertedEqualCase

	| col |

	col _ OrderedCollection new.

	^ 0 = col size! !

!COOPRuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/28/2019 19:48:59'!
invertedIdentityCase

	| col |

	col _ OrderedCollection new.

	^ 0 == col size! !

!COOPRuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/29/2019 18:50:48'!
noErrorCase

	| col |

	col _ OrderedCollection new.

	^ col isEmpty! !

!COOPRuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/28/2019 20:37:50'!
unorderedIdentityCase

	| col colSize |

	col _ OrderedCollection new.

	colSize _ col size.

	^ 0 == 1. ! !

!COOPRuleInstanceMethodToClassTest methodsFor: 'setup/teardown' stamp: 'GET 11/13/2019 00:45:48'!
setUp

	super setUp.

	rule _ COOPRuleInstanceMethodToClass new.! !

!COOPRuleInstanceMethodToClassTest methodsFor: 'method-for-testing' stamp: 'GET 11/23/2019 08:37:40'!
aGlobalVariableIsNotCounted

	Smalltalk imagePath .! !

!COOPRuleInstanceMethodToClassTest methodsFor: 'method-for-testing' stamp: 'GET 11/13/2019 00:47:10'!
instanceMethod

	"for testing"! !

!COOPRuleInstanceMethodToClassTest methodsFor: 'method-for-testing' stamp: 'GET 11/13/2019 00:47:02'!
methodIsInInstanceAndClass

	"for testing"! !

!COOPRuleInstanceMethodToClassTest methodsFor: 'rule-not-apply' stamp: 'GET 11/23/2019 08:39:49'!
testNotApplyWhenLiteralIsAGlobalVariable

	| aMethodNode |

	aMethodNode _ self searchMethodNode: #caseNotApplyWhenIsGlobalVariable.

	self deny: (rule check: aMethodNode)! !

!COOPRuleInstanceMethodToClassTest methodsFor: 'rule-not-apply' stamp: 'GET 11/7/2019 20:47:26'!
testNotApplyWhenMethodIsInClassAndInstance

	| aMethodNode |

	aMethodNode _ self searchMethodNode: #caseClassMethodIsSendedAndIsInTheClassToo.

	self deny: (rule check: aMethodNode)! !

!COOPRuleInstanceMethodToClassTest methodsFor: 'rule-not-apply' stamp: 'GET 11/10/2019 23:02:43'!
testNotApplyWhenMethodIsInSuperClass

	| aMethodNode |

	aMethodNode _ self searchMethodNode: #caseNotApplyWhenMethodIsInSuperClass.

	self deny: (rule check: aMethodNode)! !

!COOPRuleInstanceMethodToClassTest methodsFor: 'rule-not-apply' stamp: 'GET 11/10/2019 23:02:50'!
testNotApplyWhenMethodIsNotSendedToAClass

	| aMethodNode |

	aMethodNode _ self searchMethodNode: #caseMethodIsNotSendedToAClass.

	self deny: (rule check: aMethodNode)! !

!COOPRuleInstanceMethodToClassTest methodsFor: 'rule-apply' stamp: 'GET 11/7/2019 20:40:25'!
testApplyWhenAnInstanceMessageIsSendedToTheClass

	| aMethodNode |

	aMethodNode _ self searchMethodNode: #caseInstanceMessageSendsToClass.

	self assert: (rule check: aMethodNode)! !

!COOPRuleInstanceMethodToClassTest methodsFor: 'assertion-cases' stamp: 'GET 11/13/2019 00:46:11'!
caseClassMethodIsSendedAndIsInTheClassToo

	COOPRuleInstanceMethodToClassTest methodIsInInstanceAndClass.! !

!COOPRuleInstanceMethodToClassTest methodsFor: 'assertion-cases' stamp: 'GET 11/13/2019 00:46:11'!
caseInstanceMessageSendsToClass


	COOPRuleInstanceMethodToClassTest  instanceMethod.! !

!COOPRuleInstanceMethodToClassTest methodsFor: 'assertion-cases' stamp: 'GET 11/7/2019 23:32:15'!
caseMethodIsNotSendedToAClass

	|col|
	col _ Collection new.

	col size.! !

!COOPRuleInstanceMethodToClassTest methodsFor: 'assertion-cases' stamp: 'GET 11/23/2019 08:39:13'!
caseNotApplyWhenIsGlobalVariable

	Smalltalk imagePath .! !

!COOPRuleInstanceMethodToClassTest methodsFor: 'assertion-cases' stamp: 'GET 11/10/2019 23:02:06'!
caseNotApplyWhenMethodIsInSuperClass

	Set  = OrderedCollection! !

!COOPRuleInstanceMethodToClassTest class methodsFor: 'method-for-testing' stamp: 'GET 11/13/2019 00:46:53'!
methodIsInInstanceAndClass

	"for testing"! !

!COOPRuleNilAsArgumentTest methodsFor: 'rule-not-apply' stamp: 'GET 11/21/2019 18:25:00'!
testDoNotApplyWhenPassingAnythingAsAnArgument

	| aMethodNode |
	aMethodNode  _ self searchMethodNode: #passAnything .

	self deny: (rule check:  aMethodNode).! !

!COOPRuleNilAsArgumentTest methodsFor: 'rule-apply' stamp: 'GET 11/21/2019 18:40:14'!
testApplyWhenPassingNilAsAnArgumentInAnyParameter

	| aMethodNode |
	aMethodNode  _ self searchMethodNode: #passNilAsArgumentInAnyParameter.

	self assert: (rule check:  aMethodNode).! !

!COOPRuleNilAsArgumentTest methodsFor: 'rule-apply' stamp: 'GET 11/21/2019 18:39:12'!
testApplyWhenPassingNilAsAnArgumentInBinaryMessage

	| aMethodNode |
	aMethodNode  _ self searchMethodNode: #passNilAsArgumentInInBinaryMessage.

	self assert: (rule check:  aMethodNode).! !

!COOPRuleNilAsArgumentTest methodsFor: 'rule-apply' stamp: 'GET 11/21/2019 18:39:24'!
testApplyWhenPassingNilAsAnArgumentInOneParameter

	| aMethodNode |
	aMethodNode  _ self searchMethodNode: #passNilAsArgumentInOneParameter.

	self assert: (rule check:  aMethodNode).! !

!COOPRuleNilAsArgumentTest methodsFor: 'setup/teardown' stamp: 'GET 11/21/2019 18:20:19'!
setUp
	super setUp.
		
	rule _ COOPRuleNilAsArgument new.! !

!COOPRuleNilAsArgumentTest methodsFor: 'method-for-testing' stamp: 'GET 11/21/2019 18:41:09'!
passAnything

	 Set with: 1 .! !

!COOPRuleNilAsArgumentTest methodsFor: 'method-for-testing' stamp: 'GET 11/21/2019 18:39:59'!
passNilAsArgumentInAnyParameter


	Set with: 1 with: nil.! !

!COOPRuleNilAsArgumentTest methodsFor: 'method-for-testing' stamp: 'GET 11/21/2019 18:38:56'!
passNilAsArgumentInInBinaryMessage


	1 + nil! !

!COOPRuleNilAsArgumentTest methodsFor: 'method-for-testing' stamp: 'GET 11/21/2019 18:39:43'!
passNilAsArgumentInOneParameter


	Set with: nil.! !

!COOPRuleNilAssigmentTest methodsFor: 'rule-not-apply' stamp: 'GET 11/20/2019 21:20:54'!
testRuleDoNotApplyWhenAssigmentIsNotNil

	| methodNode |
	methodNode  _ self searchMethodNode: #testRuleDoNotApplyWhenAssigmentIsNotNil.

	self deny: (rule check: methodNode ).! !

!COOPRuleNilAssigmentTest methodsFor: 'rule-apply' stamp: 'GET 11/20/2019 21:52:37'!
testRuleApplyWhenAssigmentIsNilInInstanceVariable

	| methodNode |
	methodNode  _ self searchMethodNode: #assigmentIsNilInInstancelVariable.

	self assert: (rule check: methodNode ).! !

!COOPRuleNilAssigmentTest methodsFor: 'rule-apply' stamp: 'GET 11/20/2019 21:52:25'!
testRuleApplyWhenAssigmentIsNilInTemporaryVariable

	| methodNode |
	methodNode  _ self searchMethodNode: #assigmentIsNilInTemporalVariable.

	self assert: (rule check: methodNode ).! !

!COOPRuleNilAssigmentTest methodsFor: 'setup/teardown' stamp: 'GET 11/20/2019 21:19:47'!
setUp
	super setUp.

	rule _ COOPRuleNilAssigment new.! !

!COOPRuleNilAssigmentTest methodsFor: 'method-for-testing' stamp: 'GET 11/20/2019 21:51:20'!
assigmentIsNilInInstancelVariable

	anInstanceVariable _ nil.! !

!COOPRuleNilAssigmentTest methodsFor: 'method-for-testing' stamp: 'GET 11/20/2019 21:51:34'!
assigmentIsNilInTemporalVariable

	| aTemporaryVariable |

	aTemporaryVariable _ nil.! !

!COOPRuleNonsenseBooleanTest methodsFor: 'setup/teardown' stamp: 'MEG 10/26/2019 15:02:56'!
setUp

	super setUp.

	rule _ COOPRuleNonsenseBoolean new.! !

!COOPRuleNonsenseBooleanTest methodsFor: 'rule-apply' stamp: 'MEG 10/26/2019 15:56:19'!
testRuleNonsenseBooleanApplyOnFirstArgumentOfIfFalseIfTrueClause

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #firstArgumentIfFalseIfTrueClause.
	
	self assert: (rule check: aMethodNode)! !

!COOPRuleNonsenseBooleanTest methodsFor: 'rule-apply' stamp: 'MEG 10/26/2019 16:36:37'!
testRuleNonsenseBooleanApplyOnFirstArgumentOfIfTrueIfFalseClause

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #firstArgumentIfTrueIfFalseClause.
	
	self assert: (rule check: aMethodNode)! !

!COOPRuleNonsenseBooleanTest methodsFor: 'rule-apply' stamp: 'MEG 10/26/2019 15:43:36'!
testRuleNonsenseBooleanApplyOnIfFalseClause

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #ifFalseClause.
	
	self assert: (rule check: aMethodNode)! !

!COOPRuleNonsenseBooleanTest methodsFor: 'rule-apply' stamp: 'MEG 10/26/2019 15:42:57'!
testRuleNonsenseBooleanApplyOnIfTrueClause

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #ifTrueClause.
	
	self assert: (rule check: aMethodNode)! !

!COOPRuleNonsenseBooleanTest methodsFor: 'rule-apply' stamp: 'MEG 10/26/2019 15:53:51'!
testRuleNonsenseBooleanApplyOnInvertedIfFalseClause

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #invertedIfFalseClause.
	
	self assert: (rule check: aMethodNode)! !

!COOPRuleNonsenseBooleanTest methodsFor: 'rule-apply' stamp: 'MEG 10/26/2019 15:43:06'!
testRuleNonsenseBooleanApplyOnInvertedIfTrueClause

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #invertedIfTrueClause.
	
	self assert: (rule check: aMethodNode)! !

!COOPRuleNonsenseBooleanTest methodsFor: 'rule-apply' stamp: 'MEG 10/26/2019 16:35:25'!
testRuleNonsenseBooleanApplyOnSecondArgumentOfIfFalseIfTrueClause

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #secondArgumentIfFalseIfTrueClause.
	
	self assert: (rule check: aMethodNode)! !

!COOPRuleNonsenseBooleanTest methodsFor: 'rule-apply' stamp: 'MEG 10/26/2019 16:37:24'!
testRuleNonsenseBooleanApplyOnSecondArgumentOfIfTrueIfFalseClause

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #secondArgumentIfTrueIfFalseClause.
	
	self assert: (rule check: aMethodNode)! !

!COOPRuleNonsenseBooleanTest methodsFor: 'rule-not-apply' stamp: 'MEG 11/10/2019 23:20:45'!
testRuleNonsenseBooleanDoNotApplyOnIfClausesWithoutBlocks

	| aMethodNode |

	aMethodNode _ self searchMethodNode: #ifClauseWithoutBlocks .

	self deny: (rule check: aMethodNode)! !

!COOPRuleNonsenseBooleanTest methodsFor: 'rule-not-apply' stamp: 'MEG 10/26/2019 16:41:51'!
testRuleNonsenseBooleanDoNotApplyOnIfFalseClauseWithReturnOnBlock

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #ifFalseWithReturnInsideBlock.
	
	self deny: (rule check: aMethodNode)! !

!COOPRuleNonsenseBooleanTest methodsFor: 'rule-not-apply' stamp: 'MEG 10/26/2019 16:41:37'!
testRuleNonsenseBooleanDoNotApplyOnIfTrueClauseWithReturnOnBlock

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #ifTrueWithReturnInsideBlock.
	
	self deny: (rule check: aMethodNode)! !

!COOPRuleNonsenseBooleanTest methodsFor: 'method-for-testing' stamp: 'MEG 10/26/2019 15:57:05'!
firstArgumentIfFalseIfTrueClause

	^ 2 > 1 ifFalse: [ false ] ifTrue: [ 1 + 1 ]! !

!COOPRuleNonsenseBooleanTest methodsFor: 'method-for-testing' stamp: 'MEG 10/26/2019 16:36:03'!
firstArgumentIfTrueIfFalseClause

	^ 2 > 1 ifTrue: [ true ] ifFalse: [ 1 + 1 ]! !

!COOPRuleNonsenseBooleanTest methodsFor: 'method-for-testing' stamp: 'MEG 11/10/2019 23:19:40'!
ifClauseWithoutBlocks

	^ 2 > 1 ifFalse: 'false' ifTrue: [ 1 + 1 ]! !

!COOPRuleNonsenseBooleanTest methodsFor: 'method-for-testing' stamp: 'MEG 10/26/2019 15:43:23'!
ifFalseClause

	^ 2 > 1 ifFalse: [ false ]! !

!COOPRuleNonsenseBooleanTest methodsFor: 'method-for-testing' stamp: 'MEG 10/26/2019 16:43:00'!
ifFalseWithReturnInsideBlock

	^ 2 > 3 ifFalse: [ ^ false ]! !

!COOPRuleNonsenseBooleanTest methodsFor: 'method-for-testing' stamp: 'MEG 10/26/2019 15:40:08'!
ifTrueClause

	^ 2 > 1 ifTrue: [ true ]! !

!COOPRuleNonsenseBooleanTest methodsFor: 'method-for-testing' stamp: 'MEG 10/26/2019 16:40:19'!
ifTrueWithReturnInsideBlock

	^ 2 > 3 ifTrue: [ ^ true ]! !

!COOPRuleNonsenseBooleanTest methodsFor: 'method-for-testing' stamp: 'MEG 10/26/2019 16:38:14'!
invertedIfFalseClause

	^ 2 > 1 ifFalse: [ false ]! !

!COOPRuleNonsenseBooleanTest methodsFor: 'method-for-testing' stamp: 'MEG 10/26/2019 16:38:29'!
invertedIfTrueClause

	^ 2 > 1 ifTrue: [ true ]! !

!COOPRuleNonsenseBooleanTest methodsFor: 'method-for-testing' stamp: 'MEG 10/26/2019 16:35:12'!
secondArgumentIfFalseIfTrueClause

	^ 2 > 1 ifFalse: [ 1+1 ] ifTrue: [ true ]! !

!COOPRuleNonsenseBooleanTest methodsFor: 'method-for-testing' stamp: 'MEG 10/26/2019 16:37:04'!
secondArgumentIfTrueIfFalseClause

	^ 2 > 1 ifTrue: [ 1+1 ] ifFalse: [ false ]! !

!COOPRuleReturnNilTest methodsFor: 'rule-not-apply' stamp: 'GET 11/20/2019 22:32:09'!
testRuleDoNotApplyWhenReturnIsNotNil

	| methodNode |
	methodNode  _ self searchMethodNode: #returnOtherthing .

	self deny: (rule check: methodNode ).! !

!COOPRuleReturnNilTest methodsFor: 'rule-apply' stamp: 'GET 11/20/2019 22:34:46'!
testRuleApplyWhenReturnIsNil

	| methodNode |
	methodNode  _ self searchMethodNode: #returnNil .

	self assert: (rule check: methodNode ).! !

!COOPRuleReturnNilTest methodsFor: 'rule-apply' stamp: 'GET 11/20/2019 22:42:10'!
testRuleApplyWhenReturnNilInsideBlock

	| methodNode |
	methodNode  _ self searchMethodNode: #returnNilInsideBlock.

	self assert: (rule check: methodNode ).! !

!COOPRuleReturnNilTest methodsFor: 'setup/teardown' stamp: 'GET 11/20/2019 22:29:48'!
setUp
	super setUp.

	rule _ COOPRuleReturnNil new.! !

!COOPRuleReturnNilTest methodsFor: 'method-for-testing' stamp: 'GET 11/20/2019 22:24:32'!
returnNil

	^ nil! !

!COOPRuleReturnNilTest methodsFor: 'method-for-testing' stamp: 'GET 11/20/2019 22:26:13'!
returnNilInsideBlock

	[ ^ nil].

	^ 1! !

!COOPRuleReturnNilTest methodsFor: 'method-for-testing' stamp: 'GET 11/20/2019 22:29:39'!
returnOtherthing

	^ 1! !

!COOPRuleTestAssertionTest methodsFor: 'rule-not-apply' stamp: 'GET 10/22/2019 22:52:54'!
testRuleDoNotApplyWhenHasAnAssertionAndIsNotATestSelector

	| methodNode |
	methodNode  _ self searchMethodNode: #methodWithAssert .

	self deny: (rule check: methodNode ).! !

!COOPRuleTestAssertionTest methodsFor: 'rule-not-apply' stamp: 'GET 10/27/2019 14:18:38'!
testRuleDoNotApplyWhenTestHasAnAssertion

	| methodNode |
	methodNode  _ self searchMethodNode: #testRuleDoNotApplyWhenTestHasAnAssertion .

	self deny: (rule check: methodNode ).! !

!COOPRuleTestAssertionTest methodsFor: 'rule-not-apply' stamp: 'GET 10/27/2019 13:53:56'!
testRuleDoNotApplyWhenTheClassIsNotSublcassOfTestCase

	| methodNode |
	methodNode  _  coopMethodFactory findMethodNodeNamed: #test in: EventSensor .

	self deny: (rule check: methodNode ).! !

!COOPRuleTestAssertionTest methodsFor: 'rule-apply' stamp: 'GET 10/22/2019 22:53:59'!
testRuleApplyInTestMethodWithoutAssertion
	| methodNode |
	methodNode  _ self searchMethodNode: #testWithoutAssertion .

	self assert: (rule check: methodNode ).! !

!COOPRuleTestAssertionTest methodsFor: 'setup/teardown' stamp: 'GET 10/22/2019 22:55:51'!
setUp
	super setUp.
		
	rule _ COOPRuleTestAssertion new.! !

!COOPRuleTestAssertionTest methodsFor: 'method-for-testing' stamp: 'GET 10/22/2019 21:57:49'!
methodWithAssert

	self assert:true.! !

!COOPRuleTestAssertionTest methodsFor: 'method-for-testing' stamp: 'GET 10/19/2019 18:06:49'!
testWithoutAssertion
	

	1 + 1 == 2 .! !

!COOPRuleTestAssertionTest methodsFor: 'assertion-rule-selector' stamp: 'GET 10/26/2019 22:03:39'!
testAssertEqualsIsAnAssertionSelector

	self assert: (rule selectorIsAnAssertion: #assert:equals ).! !

!COOPRuleTestAssertionTest methodsFor: 'assertion-rule-selector' stamp: 'GET 10/26/2019 21:48:40'!
testAssertIsAnAssertionSelector

	self assert: (rule selectorIsAnAssertion: #assert: ).! !

!COOPRuleTestAssertionTest methodsFor: 'assertion-rule-selector' stamp: 'GET 10/26/2019 21:48:46'!
testDenyIsAnAssertionSelector

	self assert: (rule selectorIsAnAssertion: #deny: ).! !

!COOPRuleTestAssertionTest methodsFor: 'assertion-rule-selector' stamp: 'GET 10/26/2019 21:49:13'!
testShouldFailIsAnAssertionSelector

	self assert: (rule selectorIsAnAssertion: #shouldFail: ).! !

!COOPRuleTestAssertionTest methodsFor: 'assertion-rule-selector' stamp: 'GET 10/26/2019 21:49:00'!
testShouldNotFailIsAnAssertionSelector

	self assert: (rule selectorIsAnAssertion: #shouldntFail: ).! !

!COOPTest methodsFor: 'coop-notification' stamp: 'MEG 10/15/2019 16:29:46'!
searchMethodNode: selector

	^ coopMethodFactory findMethodNodeNamed: selector in:  COOPRuleCollectionSizeTest  .! !

!COOPTest methodsFor: 'coop-notification' stamp: 'GET 9/30/2019 22:09:58'!
testCOOPDoNotNotifyTheRulesWhenNoOneWasNotActivatedForAMethodNode

	| methodNode  |
	methodNode _ self searchMethodNode: #noErrorCase .

	coop performInteractiveChecksFor: methodNode .

	self deny: notifier hasNotified .
	self deny: (notifier hasNotifiedWith: aRule) .! !

!COOPTest methodsFor: 'coop-notification' stamp: 'GET 9/30/2019 22:22:55'!
testCOOPKnowsTheRulesActivatedForAMethodNode

	| methodNode  |
	methodNode _ self searchMethodNode: #identityCase .

	self assert: ((coop rulesActivatedFor: methodNode ) includes: aRule ) .! !

!COOPTest methodsFor: 'coop-notification' stamp: 'GET 9/30/2019 22:22:40'!
testCOOPNotifyTheRulesActivatedForAMethodNode

	| methodNode   |
	methodNode _ self searchMethodNode: #identityCase .

	coop performInteractiveChecksFor: methodNode .

	self assert: notifier hasNotified .
	self assert: (notifier hasNotifiedWith: aRule) .! !

!COOPTest methodsFor: 'setUp/tearDown' stamp: 'MEG 10/15/2019 16:29:23'!
setUp

	coopMethodFactory  _ COOPMethodFactory new.
	aRule _ COOPRuleCollectionSize new.
	notifier _ NotifierForTesting new.
	coop _ COOP withRules: {aRule} andPerformer: notifier .
	notifier watch: coop.

! !

!RuleListTest methodsFor: 'empty-rules' stamp: 'GET 9/29/2019 16:27:32'!
testANewRuleListIsEmptyAndIndexIsZero

	self assert: ruleList isEmpty.
	self assert: ruleList rulesTitles isEmpty .
	self assert: ruleList indexRuleSelected  equals: 0 .! !

!RuleListTest methodsFor: 'empty-rules' stamp: 'GET 9/29/2019 11:16:39'!
testAnEmptyRuleListDescribeARuleShowEmptyMessage

	self assert: ruleList describeRule equals: ruleList emptyShowMessage .! !

!RuleListTest methodsFor: 'empty-rules' stamp: 'GET 9/29/2019 11:16:50'!
testAnEmptyRuleListIgnoreARuleShowEmptyMessage

	self assert: ruleList ignoreRule equals: ruleList emptyShowMessage .! !

!RuleListTest methodsFor: 'setUp/tearDown' stamp: 'MEG 10/15/2019 16:29:23'!
setUp
	ruleList _ RuleList new .
	aRule  _ COOPRuleCollectionSize new.! !

!RuleListTest methodsFor: 'with-rules' stamp: 'GET 9/29/2019 16:26:58'!
testARuleListCanAddARuleAndTheIndexIsTheFirst

	ruleList add: aRule .

	self deny: ruleList isEmpty.
	self assert: ruleList rulesTitles includes: aRule title.
	self assert: 1 equals: ruleList indexRuleSelected  .! !

!RuleListTest methodsFor: 'with-rules' stamp: 'GET 9/29/2019 16:27:04'!
testARuleListWithRulesCanIgnoreTheSelectedRuleAndDecreaseItsIndex

	ruleList add: aRule .

	self assert: 'Regla ignorada: ', aRule title  equals: ruleList ignoreRule .
	self deny: (ruleList rulesTitles includes: aRule title) .
	self assert: 0 equals: ruleList indexRuleSelected.! !

!RuleListTest methodsFor: 'with-rules' stamp: 'GET 9/29/2019 11:58:48'!
testARuleListWithRulesShowTheSelectedRule

	ruleList add: aRule .

	self assert: aRule description equals: ruleList describeRule .
! !

!RuleListTest methodsFor: 'with-rules' stamp: 'MEG 10/9/2019 22:23:10'!
testRuleListCanBeCleaned

	ruleList add: aRule .

	self deny: ruleList isEmpty .
	
	ruleList clean .
	
	self assert: ruleList isEmpty .! !

!RuleListTest methodsFor: 'with-rules' stamp: 'GET 10/30/2019 19:43:22'!
testRuleListOnlyContainsOneRuleByRuleClass

	| firstAddedRule secondAddedRule |
	firstAddedRule _ COOPRuleCollectionSize new.
	secondAddedRule _ COOPRuleCollectionSize new.	
	
	ruleList add: firstAddedRule .
	ruleList add: secondAddedRule.
	
	self assert: ( ruleList includes: firstAddedRule ).
	self deny: ( ruleList includes: secondAddedRule )! !

!RuleListTest methodsFor: 'with-rules' stamp: 'GET 9/29/2019 11:17:11'!
testWhenARuleIsIgnoreTheRulesHasChanged

	| notifier |
	notifier  _ NotifierForTesting watch: ruleList.
	ruleList add: aRule .
	ruleList ignoreRule.

	self assert: notifier hasNotified.
	! !

!RuleListTest methodsFor: 'with-rules' stamp: 'GET 10/30/2019 19:44:28'!
testWhenARuleListAddMoreRulesTheIndexIsTheFirst

	ruleList add: aRule .
	ruleList add: COOPRuleColaborationChain  new.

	self assert: 1 equals:  ruleList indexRuleSelected  .! !

!RuleListTest methodsFor: 'with-rules' stamp: 'GET 10/30/2019 19:45:16'!
testWhenIsCleanedTheRulesTheRulesHasChanged

	| notifier |
	notifier  _ NotifierForTesting watch: ruleList.
	ruleList add: aRule .
	ruleList clean.

	self assert: notifier hasNotified.
	! !

!COOPMethodFactory methodsFor: 'action' stamp: 'MEG 9/22/2019 23:01:12'!
compileAndReturnMethod: selector withSourceCode: sourceCode 
	
	| aMethodNode classToBeRemoved |
	classToBeRemoved _ self createClassToBeRemoved.
	aMethodNode _ self compileAndReturnMethodIn: classToBeRemoved named: selector withSourceCode: sourceCode.
	classToBeRemoved removeFromSystem.
	
	^ aMethodNode! !

!COOPMethodFactory methodsFor: 'action' stamp: 'GET 10/13/2019 16:29:42'!
compileAndReturnMethodIn: aClass named: aSelectorName withSourceCode: aSourceCode
	
	aClass compile: aSelectorName, aSourceCode.
	
	^ self findMethodNodeNamed: aSelectorName in: aClass .! !

!COOPMethodFactory methodsFor: 'class categories' stamp: 'MEG 9/22/2019 23:00:04'!
categoryOfClassToBeRemoved
	
	^ 'Cuis-University-COOP-Tests'! !

!COOPMethodFactory methodsFor: 'classes' stamp: 'MEG 9/22/2019 22:54:05'!
nameOfClassToBeRemoved
	
	^ #COOPClassToBeRemoved! !

!COOPMethodFactory methodsFor: 'accessing' stamp: 'MEG 10/14/2019 13:14:11'!
findMethodNodeNamed: selectorName in: class

	| methodDictionary |
	methodDictionary _ class methodDictionary.

	^ (methodDictionary at: selectorName) methodNode.! !

!COOP methodsFor: 'action' stamp: 'GET 10/1/2019 00:15:25'!
activate: rule with:aMethodNode

	performer activate: rule with:aMethodNode
! !

!COOP methodsFor: 'action' stamp: 'MEG 10/12/2019 14:41:25'!
performInteractiveChecksFor: aMethodNode

	performer cleanBeforeRunning: aMethodNode .

	^ ( self rulesActivatedFor: aMethodNode ) do: [ :rule | self activate: rule with: aMethodNode ] ! !

!COOP methodsFor: 'action' stamp: 'GET 9/30/2019 21:37:58'!
rulesActivatedFor: aMethodNode

	^ rules select: [ :rule | rule check: aMethodNode]! !

!COOP methodsFor: 'initialization' stamp: 'MEG 10/14/2019 13:08:23'!
initialize

	rules _ COOPRule allRules.

	performer _ COOPPerformer new.! !

!COOP methodsFor: 'initialization' stamp: 'GET 9/30/2019 23:58:34'!
withRules: aRules andPerformer: aPerformer

	rules _ aRules asSet.
	performer _ aPerformer.! !

!COOP class methodsFor: 'instance creation' stamp: 'GET 9/30/2019 23:55:56'!
withRules: rules andPerformer: aPerformer 
	
	^ self new withRules: rules andPerformer: aPerformer ! !

!COOPFixer methodsFor: 'action' stamp: 'MEG 11/17/2019 00:40:07'!
apply: affectedNode in: sourceText with: methodNode

	| affectedInterval newSourceText |
	affectedInterval _ self intervalFor: affectedNode on: methodNode ifAbsent: [ Interval from: 0 to: 0 ] .

	newSourceText _ self replace: affectedInterval from: sourceText with: ( self findRightTextFor: affectedNode) .

	methodNode methodClass compile: newSourceText! !

!COOPFixer methodsFor: 'action' stamp: 'MEG 11/17/2019 14:00:51'!
fix: methodNode

	| affectedNodes collectionSizeRule sourceText |
	collectionSizeRule _ COOPRuleCollectionSize new.
	affectedNodes _ collectionSizeRule selectAffectedNodes: methodNode .
	sourceText _ methodNode sourceText .

	affectedNodes do: [:affectedNode | self apply: affectedNode in: sourceText with: methodNode ]! !

!COOPFixer methodsFor: 'action' stamp: 'MEG 11/16/2019 18:27:52'!
replace: interval from: originalText with: textToAdd

	^ originalText copyReplaceFrom: interval first to: interval last with: textToAdd! !

!COOPFixer methodsFor: 'arithmetic' stamp: 'MEG 11/16/2019 17:51:05'!
differenceBetween: firstNumber and: secondNumber

	^ ( firstNumber - secondNumber ) abs! !

!COOPFixer methodsFor: 'intervals' stamp: 'MEG 11/17/2019 01:24:53'!
findRightIntervalUsing: affectedIntervals on: originalRange

	^ [ affectedIntervals detectMin: [ :interval |  self differenceBetween: interval last and: originalRange first ] ]
		ifError:
			[ affectedIntervals detectMax: [ :interval |  self differenceBetween: interval first and: originalRange last ] ]
	! !

!COOPFixer methodsFor: 'intervals' stamp: 'MEG 11/16/2019 20:17:16'!
fullInterval: affectedIntervals for: affectedNode on: methodNode

	| originalRange |

	originalRange _ methodNode rangeForNode: affectedNode ifAbsent: [ Interval from: 0 to: 0 ] .

	( affectedIntervals isKindOf: Interval ) ifFalse: [ ^ self findRightIntervalUsing: affectedIntervals on: originalRange ] .

	^ affectedIntervals! !

!COOPFixer methodsFor: 'intervals' stamp: 'MEG 11/16/2019 17:17:54'!
intervalFor: affectedNode on: methodNode ifAbsent: aBlock

	| intervalForArguments intervalForReceiver |

	intervalForReceiver _ self fullInterval: ( methodNode rangeForNode: affectedNode receiver ifAbsent: aBlock ) for: affectedNode on: methodNode .

	intervalForArguments _ self fullInterval: ( methodNode rangeForNode: affectedNode arguments first ifAbsent: aBlock ) for: affectedNode on: methodNode .

	^ Interval from: intervalForReceiver first to: intervalForArguments last. ! !

!COOPFixer methodsFor: 'texts' stamp: 'MEG 11/17/2019 01:15:55'!
findRightTextFor: affectedNode

	| prefix receiverIsMessageNode |
	receiverIsMessageNode _ ( affectedNode receiver isMessageNode ) .

	receiverIsMessageNode
		ifTrue: [ ^ 'isEmpty' ]
		ifFalse:
			[
				prefix _ self receiverNameOf: affectedNode arguments first .

				^ prefix append: ' isEmpty'
			]! !

!COOPFixer methodsFor: 'texts' stamp: 'MEG 11/17/2019 14:18:19'!
receiverNameOf: messageNode

	messageNode receiver isMessageNode ifTrue: 
		[ ^ ( ( self receiverNameOf: messageNode receiver ) name ) append: ' new' ] .

	messageNode receiver isTemp ifTrue: [ ^ messageNode receiver name ] .

	^  messageNode receiver! !

!COOPPerformer methodsFor: 'notification' stamp: 'MEG 10/9/2019 21:53:23'!
activate: aRule with: aMethodNode

	COOPBrowser allInstancesDo: [ :coopBrowser | coopBrowser addRule: aRule for: aMethodNode ].! !

!COOPPerformer methodsFor: 'action' stamp: 'MEG 10/9/2019 23:52:19'!
cleanBeforeRunning: aMethodNode 
	
	COOPBrowser allInstancesDo: [ :coopBrowser | coopBrowser cleanBeforeRunning: aMethodNode ].! !

!COOPRule methodsFor: 'testing' stamp: 'GET 10/14/2019 16:57:22'!
applyCondition: aNode 
	
	^ self subclassResponsibility .! !

!COOPRule methodsFor: 'testing' stamp: 'MEG 10/15/2019 16:18:46'!
canBeImproved: aNode 
	
	^ (self canHandle: aNode) and: [ self applyCondition: aNode ]! !

!COOPRule methodsFor: 'testing' stamp: 'GET 10/14/2019 16:57:14'!
canHandle: aNode 
	
	^ self subclassResponsibility .! !

!COOPRule methodsFor: 'testing' stamp: 'MEG 11/16/2019 20:18:45'!
couldBeFixed

	^ false! !

!COOPRule methodsFor: 'testing' stamp: 'GET 10/11/2019 22:57:06'!
sameClassAs: aRule

	^ aRule class = self class.! !

!COOPRule methodsFor: 'printing' stamp: 'GET 10/11/2019 22:58:33'!
description
	self subclassResponsibility .! !

!COOPRule methodsFor: 'printing' stamp: 'GET 10/11/2019 22:58:37'!
title
	self subclassResponsibility .! !

!COOPRule methodsFor: 'inspect-node' stamp: 'MEG 10/15/2019 16:24:34'!
check: aMethodNode

	aMethodNode nodesDo: [ :node | ( self canBeImproved: node ) ifTrue: [ ^ true ] ].

	^ false ! !

!COOPRule methodsFor: 'inspect-node' stamp: 'MEG 10/27/2019 20:30:30'!
selectAffectedNodes: methodNode 

	| affectedNodes |
	affectedNodes _ Set new.
	methodNode nodesDo: [ :node | ( self canBeImproved: node ) ifTrue: [ affectedNodes add: node ] ].

	^ affectedNodes ! !

!COOPRule class methodsFor: 'information' stamp: 'GET 11/21/2019 18:41:41'!
allRules

	| rules |
	rules _ Set new.
	
	rules addAll: {
		COOPRuleCollectionSize new.
		COOPRuleColaborationChain new.
		COOPRuleNonsenseBoolean new.
		COOPRuleTestAssertion new.
		COOPRuleInstanceMethodToClass new.
		COOPRuleNilAssigment new.
		COOPRuleReturnNil new.
		COOPRuleNilAsArgument new.
	}.

	^  rules! !

!COOPRuleColaborationChain methodsFor: 'testing' stamp: 'GET 10/14/2019 17:00:54'!
applyCondition: aMessageNode 
	
 	^ (self amountOfColaborations: aMessageNode  ) > 2! !

!COOPRuleColaborationChain methodsFor: 'testing' stamp: 'GET 10/14/2019 16:12:47'!
canHandle: aNode 
	
	^ aNode isMessageNode and: [ aNode isCascade not]! !

!COOPRuleColaborationChain methodsFor: 'printing' stamp: 'GET 10/9/2019 20:57:37'!
description

	^ RuleDescriptor new descriptionForChainedColaboration.! !

!COOPRuleColaborationChain methodsFor: 'printing' stamp: 'GET 10/9/2019 20:58:57'!
title
	^ RuleDescriptor new titleForChainedColaborations .! !

!COOPRuleColaborationChain methodsFor: 'matcher' stamp: 'GET 10/14/2019 17:01:52'!
amountOfColaborations: aNode

	aNode isMessageNode ifFalse: [ ^ 0 ].
	^ (self amountOfColaborations: aNode receiver ) + 1 .! !

!COOPRuleCollectionSize methodsFor: 'testing' stamp: 'GET 10/14/2019 17:01:06'!
applyCondition: aMessageNode 
	
 	^ (self withSelector: #= applyCondition: aMessageNode ) 
	or: [ self withSelector: #== applyCondition: aMessageNode ].! !

!COOPRuleCollectionSize methodsFor: 'testing' stamp: 'GET 10/14/2019 16:35:51'!
canHandle: aNode 
	
	^ aNode isMessageNode! !

!COOPRuleCollectionSize methodsFor: 'testing' stamp: 'MEG 11/16/2019 20:18:45'!
couldBeFixed

	^ true! !

!COOPRuleCollectionSize methodsFor: 'printing' stamp: 'MEG 11/16/2019 19:38:37'!
description
	^ RuleDescriptor new descriptionForCollectionSize .! !

!COOPRuleCollectionSize methodsFor: 'printing' stamp: 'GET 9/29/2019 12:02:44'!
title
	^ RuleDescriptor new titleForCollectionSize! !

!COOPRuleCollectionSize methodsFor: 'matcher' stamp: 'GET 10/14/2019 16:42:01'!
literalZero
	
	^ [:aNode | aNode isConstantNumber  and: [ aNode key = 0] ]! !

!COOPRuleCollectionSize methodsFor: 'matcher' stamp: 'GET 10/14/2019 16:42:46'!
messageSize
	
	^ [:aNode | aNode isMessageNamed: #size ]! !

!COOPRuleCollectionSize methodsFor: 'matcher' stamp: 'GET 10/14/2019 16:50:18'!
withSelector: messageName applyCondition: aMessageNode 
	
	^ (aMessageNode isMessage: messageName receiver: self messageSize  arguments: self literalZero) 
	
	or: [ aMessageNode isMessage: messageName receiver:  self literalZero arguments: self messageSize] .! !

!COOPRuleInstanceMethodToClass methodsFor: 'testing' stamp: 'GET 11/13/2019 00:48:43'!
applyCondition: aMessageNode

	| aClass metaClass class |
	aClass _ self canAnalize:aMessageNode ifNone: [ ^ false ].
	metaClass _ aClass theMetaClass .
	class _ aClass theNonMetaClass .

	^ (self selector: aMessageNode selectorSymbol IsInClass: class )
	and: [ ( self selector: aMessageNode selectorSymbol IsInClass: metaClass ) not ] ! !

!COOPRuleInstanceMethodToClass methodsFor: 'testing' stamp: 'GET 11/23/2019 09:02:15'!
canAnalize: aMessageNode ifNone: aBlockClosure
	 | receiver |
	receiver _  aMessageNode receiver.

	^ (self isAClass: receiver)
	ifFalse: aBlockClosure
	ifTrue: [ receiver key value]! !

!COOPRuleInstanceMethodToClass methodsFor: 'testing' stamp: 'GET 11/7/2019 18:06:43'!
canHandle: aNode

	^ aNode  isMessageNode .! !

!COOPRuleInstanceMethodToClass methodsFor: 'testing' stamp: 'GET 11/23/2019 09:01:19'!
isAClass: receiver 

	^ receiver notNil and: [receiver isLiteralVariableNode ] and:[( Smalltalk classNamed: receiver name) notNil]! !

!COOPRuleInstanceMethodToClass methodsFor: 'testing' stamp: 'GET 11/10/2019 22:53:35'!
selector: aSymbol IsInClass: aClass

	^ aClass canUnderstand: aSymbol ! !

!COOPRuleInstanceMethodToClass methodsFor: 'printing' stamp: 'GET 11/11/2019 19:43:05'!
description

	^ RuleDescriptor new descriptionForSendInstanceMethodToClass .! !

!COOPRuleInstanceMethodToClass methodsFor: 'printing' stamp: 'GET 11/10/2019 11:46:24'!
title

	^ RuleDescriptor new titleForSendInstanceMethodToClass! !

!COOPRuleNilAsArgument methodsFor: 'testing' stamp: 'GET 11/21/2019 18:38:05'!
applyCondition: aMessageNode

	^ aMessageNode arguments anySatisfy: [:argumentNode | argumentNode isNilPseudoVariable] ! !

!COOPRuleNilAsArgument methodsFor: 'testing' stamp: 'GET 11/21/2019 18:23:02'!
canHandle: aMethodNode

	^ aMethodNode isMessageNode .! !

!COOPRuleNilAsArgument methodsFor: 'printing' stamp: 'GET 11/21/2019 18:43:43'!
description

	^ RuleDescriptor new descriptionForPassingNIlAsArgument! !

!COOPRuleNilAsArgument methodsFor: 'printing' stamp: 'GET 11/21/2019 18:42:32'!
title

	^ RuleDescriptor new titleForPassingNIlAsArgument! !

!COOPRuleNilAssigment methodsFor: 'testing' stamp: 'GET 11/20/2019 22:12:47'!
applyCondition: anAssigmentNode

	|aNode|
	aNode _ anAssigmentNode value .

	^ aNode isVariableNode  and: [ aNode isNilPseudoVariable].! !

!COOPRuleNilAssigment methodsFor: 'testing' stamp: 'GET 11/20/2019 22:11:39'!
canHandle: aNode

	^ aNode isAssignmentNode .! !

!COOPRuleNilAssigment methodsFor: 'printing' stamp: 'GET 11/20/2019 21:45:44'!
description

	^ RuleDescriptor new descriptionForAssigmentNil! !

!COOPRuleNilAssigment methodsFor: 'printing' stamp: 'GET 11/20/2019 21:45:09'!
title
	^ RuleDescriptor new titleForAssigmentIsNil.! !

!COOPRuleNonsenseBoolean methodsFor: 'printing' stamp: 'MEG 10/26/2019 16:54:05'!
description

	^ RuleDescriptor new descriptionForNonsenseBoolean! !

!COOPRuleNonsenseBoolean methodsFor: 'printing' stamp: 'MEG 10/26/2019 16:46:29'!
title
	^ RuleDescriptor new titleForNonsenseBoolean .! !

!COOPRuleNonsenseBoolean methodsFor: 'testing' stamp: 'MEG 10/27/2019 12:48:40'!
applyCondition: aMessageNode

 	^ booleanControllingMessages anySatisfy: 
		[ :controllingMessage | self withSelector: controllingMessage searchOnArguments: aMessageNode ]! !

!COOPRuleNonsenseBoolean methodsFor: 'testing' stamp: 'MEG 11/10/2019 23:26:38'!
booleanOnArguments: arguments

	^ arguments anySatisfy: 
		[ :argument |
			argument isBlockNode and: [ self statementWithBooleanVariableNode: argument statements ] ]! !

!COOPRuleNonsenseBoolean methodsFor: 'testing' stamp: 'MEG 10/26/2019 15:06:10'!
canHandle: aNode 
	
	^ aNode isMessageNode! !

!COOPRuleNonsenseBoolean methodsFor: 'testing' stamp: 'MEG 10/26/2019 17:05:16'!
keyIsABoolean: key

	^ key = 'true' or: [ key = 'false' ] ! !

!COOPRuleNonsenseBoolean methodsFor: 'testing' stamp: 'MEG 10/26/2019 17:11:33'!
statementWithBooleanVariableNode: statements
 
	^ statements anySatisfy: 
		[ :statement | ( statement isVariableNode ) 
			and: [ self keyIsABoolean: statement key ] ]! !

!COOPRuleNonsenseBoolean methodsFor: 'matcher' stamp: 'MEG 10/26/2019 17:10:31'!
withSelector: messageName searchOnArguments: messageNode
	
	^ ( messageNode isMessageNamed: messageName ) and: [ self booleanOnArguments: messageNode arguments ]! !

!COOPRuleNonsenseBoolean methodsFor: 'initialization' stamp: 'MEG 10/27/2019 12:46:43'!
initialize

	booleanControllingMessages _ Set new.
	
	booleanControllingMessages addAll: {
		#ifFalse:.
		#ifFalse:ifTrue.
		#ifTrue:.
		#ifTrue:ifFalse:
	}.! !

!COOPRuleReturnNil methodsFor: 'testing' stamp: 'GET 11/20/2019 22:41:01'!
applyCondition: aReturnNode

	^ aReturnNode expr isNilPseudoVariable! !

!COOPRuleReturnNil methodsFor: 'testing' stamp: 'GET 11/20/2019 22:35:24'!
canHandle: aNode

	^ aNode isReturn ! !

!COOPRuleReturnNil methodsFor: 'printing' stamp: 'GET 11/20/2019 22:50:44'!
description
	^ RuleDescriptor new descriptionForReturningNil! !

!COOPRuleReturnNil methodsFor: 'printing' stamp: 'GET 11/20/2019 22:49:44'!
title
	^ RuleDescriptor new titleForReturningNil! !

!COOPRuleTestAssertion methodsFor: 'printing' stamp: 'GET 10/22/2019 20:17:28'!
description
	
	^ RuleDescriptor new descriptionForTestWithoutAssert ! !

!COOPRuleTestAssertion methodsFor: 'printing' stamp: 'GET 10/22/2019 20:15:50'!
title
	
	^ RuleDescriptor new titleForTestWithoutAssert ! !

!COOPRuleTestAssertion methodsFor: 'testing' stamp: 'GET 10/27/2019 13:50:15'!
applyCondition: aNode 
		
 	^ self selectorIsAnAssertion: aNode selectorSymbol .
! !

!COOPRuleTestAssertion methodsFor: 'testing' stamp: 'GET 10/26/2019 22:43:59'!
canAnalizeMethod: aMethodNode 
	
	^ ( self isATestCaseClass: aMethodNode ) and: [ self isATestSelector: aMethodNode ]! !

!COOPRuleTestAssertion methodsFor: 'testing' stamp: 'GET 10/19/2019 18:08:27'!
canHandle: aNode

	^ aNode isMessageNode! !

!COOPRuleTestAssertion methodsFor: 'testing' stamp: 'GET 10/26/2019 22:43:39'!
isATestCaseClass: aMethodNode

	^ aMethodNode methodClass inheritsFrom: TestCase! !

!COOPRuleTestAssertion methodsFor: 'testing' stamp: 'GET 10/26/2019 22:47:56'!
isATestSelector: aMethodNode

	| selector |
	selector _ aMethodNode selector.
	
	^ (selector beginsWith: 'test') and: [ selector numArgs isZero ]
	! !

!COOPRuleTestAssertion methodsFor: 'testing' stamp: 'GET 10/27/2019 13:50:06'!
selectorIsAnAssertion: selector 
	
 	^ assertionsSelectors anySatisfy: [:aSelector | selector includesSubString: aSelector].! !

!COOPRuleTestAssertion methodsFor: 'initialize' stamp: 'GET 10/26/2019 21:58:42'!
initialize
	 
	assertionsSelectors _ Set new .
	assertionsSelectors addAll: {
		#assert: . #deny: . #should: . #shouldFail: . #shouldnt: . #shouldntFail: . 
	}.
	! !

!COOPRuleTestAssertion methodsFor: 'inspect-node' stamp: 'GET 10/26/2019 22:23:58'!
check: methodNode

	^ (self canAnalizeMethod: methodNode )  and: [ self findAssertionNode: methodNode ]! !

!COOPRuleTestAssertion methodsFor: 'inspect-node' stamp: 'GET 10/22/2019 22:45:20'!
findAssertionNode: methodNode

	methodNode nodesDo: [ :node | ( self canBeImproved: node ) ifTrue: [ ^ false ] ] .
	
	^ true.
	
	! !

!DemoCase methodsFor: 'apply' stamp: 'GET 11/23/2019 09:07:19'!
caseAGlobalIsNotCountedAsClass

	Smalltalk size.
	
	Smalltalk copyright! !

!DemoCase methodsFor: 'apply' stamp: 'GET 11/20/2019 21:48:15'!
caseAssigmentNilInTemporalVariable

	| aNil|

	aNil _ nil.! !

!DemoCase methodsFor: 'apply' stamp: 'GET 11/20/2019 21:48:35'!
caseAssigmentNilToInstanceVariable

	aNilInstanceVariable _ nil.! !

!DemoCase methodsFor: 'apply' stamp: 'GET 11/18/2019 02:14:34'!
caseEqualityCollectionSize

	| collection |
	collection _ OrderedCollection new.

	collection size = 0. ! !

!DemoCase methodsFor: 'apply' stamp: 'GET 11/18/2019 02:14:41'!
caseIdentityCollectionSize

	| collection |
	collection _ OrderedCollection new.

	collection size == 0 ! !

!DemoCase methodsFor: 'apply' stamp: 'GET 10/27/2019 23:03:30'!
caseIfFalseClauseWithNonsenseBoolean

	( 5  > 8 ifFalse: [ false ] ).! !

!DemoCase methodsFor: 'apply' stamp: 'GET 10/27/2019 23:03:35'!
caseIfTrueClauseWithNonsenseBoolean

  5  > 3 ifTrue: [ true ] ! !

!DemoCase methodsFor: 'apply' stamp: 'GET 11/11/2019 19:55:02'!
caseInstanceMethodSendedToClass

	Set isEmpty.! !

!DemoCase methodsFor: 'apply' stamp: 'GET 11/23/2019 09:10:18'!
casePassingNilAsArgument
	
	"Set with: nil."
	
	Set with: nil.

	Set with: nil with: 1 .

	1 - nil.
! !

!DemoCase methodsFor: 'apply' stamp: 'GET 11/20/2019 22:50:18'!
caseReturningNil

	^ nil! !

!DemoCase methodsFor: 'apply' stamp: 'GET 11/20/2019 22:55:07'!
caseReturningNilInsideABlock

	[ ^ nil].

	^1! !

!DemoCase methodsFor: 'apply' stamp: 'GET 11/18/2019 02:15:09'!
caseRevertedEqualCollectionSize

	| collection |
	collection _ OrderedCollection new.

	0 = collection size! !

!DemoCase methodsFor: 'apply' stamp: 'GET 11/18/2019 02:15:02'!
caseRevertedIdentityCollectionSize

	| collection |
	collection _ OrderedCollection new.

	0 == collection size! !

!DemoCase methodsFor: 'apply' stamp: 'GET 11/18/2019 02:15:28'!
caseWhenAreMoreThanThreeColaborationsAreChained

	Set new size isZero! !

!DemoCase methodsFor: 'apply' stamp: 'GET 11/18/2019 02:19:07'!
caseWhenThereAreMoreThanThreeColaborationsChained

	(SortedCollection new) size isZero == true! !

!DemoCase methodsFor: 'apply' stamp: 'GET 11/11/2019 19:54:36'!
caseWhenThereAreMoreThanThreeColaborationsChainedApply

	(( OrderedCollection new add: 1 ) add: 2 ) add: 3! !

!DemoCase methodsFor: 'apply' stamp: 'GET 10/27/2019 23:03:06'!
caseWhenThreeColaborationsAreChained

	Collection new size isZero. ! !

!DemoCase methodsFor: 'apply' stamp: 'GET 11/18/2019 02:21:42'!
moreThanOneCase

	| collection |
	collection _ OrderedCollection new.

	(collection size = 0)  ifTrue: [ true ] ifFalse: [ false ].! !

!DemoCase methodsFor: 'apply' stamp: 'GET 11/18/2019 02:23:25'!
oneRuleWithMoreCases

	| collection |
	collection _ OrderedCollection new.

	collection size = 0.
	
	collection size == 0.
	
	0  = collection size.
	
	0 == collection size.

	Set new size = 0 .
	
	0 = Set new size .! !

!DemoCase methodsFor: 'not-apply' stamp: 'GET 10/27/2019 23:03:57'!
caseColaborationChainDoesNotApplyInCascadeColaborations

	| col |
	col _ Set new.

	 col  isEmpty ;isEmpty ;isEmpty .! !

!DemoCase methodsFor: 'not-apply' stamp: 'GET 11/11/2019 19:55:41'!
caseMethodInBothSidesIsSendedToClassNotApply

	Set = Set! !

!DemoCase methodsFor: 'not-apply' stamp: 'GET 11/11/2019 19:55:53'!
caseMethodInClassSidesIsSendedToClassNotApply

	Set new! !

!DemoCase methodsFor: 'not-apply' stamp: 'GET 10/27/2019 23:05:46'!
caseWhenIfFalseClauseWithReturnOnBlockNotApply

	5  > 8 ifFalse: [ ^ false ]! !

!DemoCase methodsFor: 'not-apply' stamp: 'GET 10/27/2019 23:05:18'!
caseWhenIfTrueClauseWithReturnOnBlockNotApply

	5  > 3 ifTrue: [ ^ true ] .! !

!DemoCase methodsFor: 'not-apply' stamp: 'GET 10/27/2019 23:05:58'!
caseWhenOtherCollectionMessageIsSendedNotApplyCollectionSizeRule

	| collection |
	collection _ OrderedCollection new.

	collection isEmpty! !

!DemoCase methodsFor: 'not-apply' stamp: 'GET 10/27/2019 23:05:33'!
caseWhenThereAreLessThanTwoColaborationsChainedNotApply

	Collection new isEmpty ! !

!NotifierForTesting methodsFor: 'testing' stamp: 'GET 9/28/2019 14:34:31'!
hasNotified

	^ hasNotified.! !

!NotifierForTesting methodsFor: 'testing' stamp: 'GET 9/30/2019 22:22:00'!
hasNotifiedWith: aRule
	
	^ lastParameterSended = aRule.! !

!NotifierForTesting methodsFor: 'initialize' stamp: 'GET 9/30/2019 22:21:49'!
watch: anObject
	anObject addDependent:self .
	
	hasNotified _ false .! !

!NotifierForTesting methodsFor: 'events-old protocol' stamp: 'MEG 10/9/2019 23:58:24'!
activate: aRule with:aMethodNode

	self saveNotification: aRule .! !

!NotifierForTesting methodsFor: 'events-old protocol' stamp: 'GET 9/30/2019 22:20:24'!
saveNotification: aParameter

	hasNotified _ true.
	lastParameterSended _ aParameter! !

!NotifierForTesting methodsFor: 'events-old protocol' stamp: 'GET 9/30/2019 22:20:24'!
update: aParameter
	self saveNotification: aParameter .
	
	^ super update: aParameter .! !

!NotifierForTesting methodsFor: 'mock' stamp: 'MEG 10/10/2019 00:00:07'!
cleanBeforeRunning: aMethodNode 
	
	^ self "Nothing to do"! !

!NotifierForTesting class methodsFor: 'class initialization' stamp: 'GET 9/29/2019 00:01:06'!
watch: anObject
	^ self new watch: anObject.! !

!COOPHighlighter methodsFor: 'apply' stamp: 'MEG 11/10/2019 19:40:38'!
change: sourceText of: aMethodNode using: aRule 
	
	| affectedNodes |
	affectedNodes _ aRule selectAffectedNodes: aMethodNode .
	
	self cleanHighlightOn: sourceText .

	affectedNodes do: [:affectedNode |
		self apply: affectedNode in: sourceText with: aMethodNode ].! !

!COOPHighlighter methodsFor: 'action' stamp: 'MEG 11/16/2019 13:54:43'!
apply: affectedNode in: aText with: aMethodNode

	| range |
	range _ aMethodNode rangeForNode: affectedNode ifAbsent: [ ^ nil ].
	 
	self highlight: aText with: range .! !

!COOPHighlighter methodsFor: 'action' stamp: 'MEG 11/10/2019 19:38:29'!
cleanHighlightOn: text
	
	text removeAttributesThat: [ :attribute | attribute belongsToCOOP ]! !

!COOPHighlighter methodsFor: 'action' stamp: 'MEG 11/10/2019 19:41:11'!
highlight: text with: range

	text addAttribute: self highlightColor
		from: range first to: range last.! !

!COOPHighlighter methodsFor: 'accesing' stamp: 'MEG 11/10/2019 19:39:03'!
highlightColor

	^ COOPShoutTextBackgroundColor yellow.! !

!COOPPreferences class methodsFor: 'class initialization' stamp: 'MEG 10/19/2019 22:25:36'!
initialize
	"
	COOPPreferences initialize
	"
	Preferences
		addPreference: #coopIsWatching 
		category: #coop
		default: true
		balloonHelp: 'Activates COOP!!'.! !

!COOPPreferences class methodsFor: 'action' stamp: 'GET 9/28/2019 00:11:31'!
toggleCOOPPreference

	Preferences togglePreference: #coopIsWatching .! !

!COOPPreferences class methodsFor: 'accesors' stamp: 'MEG 10/19/2019 22:30:35'!
preferenceLabel
	^ Preferences coopIsWatching ifTrue: 'COOP OFF' ifFalse: 'COOP ON'.! !

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 11/20/2019 21:53:38'!
descriptionForAssigmentNil

	^ 'Se esta asignando nil a un colaborador interno/temporal'.! !

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 10/9/2019 23:08:05'!
descriptionForChainedColaboration
	^ 'Cuando ocurren muchas colaboraciones encadenadas se recomienda:
	- guardarlos en colaboradores temporales
	- refactorizarlos en mensajes'! !

!RuleDescriptor methodsFor: 'printing' stamp: 'MEG 11/17/2019 02:05:42'!
descriptionForCollectionSize

	^ 'Se podria utilizar el mensaje #isEmpty
	para cuando se chequea que la longitud
	de una coleccion es igual a cero.
	Es posible arreglarlo, �Deseas realizar el cambio?'! !

!RuleDescriptor methodsFor: 'printing' stamp: 'MEG 10/26/2019 16:55:27'!
descriptionForNonsenseBoolean
	
	^ 
	'No es necesario utilizar clausulas booleanas 
	ya que la misma comparacion cumple con esta condicion.
	Seguramente se pueda eliminar el mensaje hacia el resultado de la comparacion.'! !

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 11/21/2019 18:43:12'!
descriptionForPassingNIlAsArgument

	^ 'No es una buena practica enviar Nil como argumento'! !

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 11/20/2019 22:53:24'!
descriptionForReturningNil
	^'No es una buena practica devolver Nil.
	Se podria pensar en utilizar un NullObject,
	devolver self u otorgar un bloque para que
	quien llame al mensaje lo maneje'! !

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 11/13/2019 00:51:33'!
descriptionForSendInstanceMethodToClass

	^ 'Se esta enviando un mensaje de instancia a una clase'! !

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 11/13/2019 00:51:23'!
descriptionForTestWithoutAssert
	
	^ 'El test deberia de tener el assert'! !

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 11/20/2019 21:44:12'!
titleForAssigmentIsNil
	^ 'Asignacion de Nil'! !

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 10/13/2019 16:04:33'!
titleForChainedColaborations
	^ 'Uso colaboraciones encadenadas'.! !

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 9/29/2019 12:06:08'!
titleForCollectionSize
	^'Uso de #isEmpty' ! !

!RuleDescriptor methodsFor: 'printing' stamp: 'MEG 10/26/2019 16:58:22'!
titleForNonsenseBoolean
	
	^ 'No hay que tener miedo al booleano' ! !

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 11/21/2019 18:42:53'!
titleForPassingNIlAsArgument

	^ 'Pasando nil como Argumento'! !

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 11/20/2019 22:50:07'!
titleForReturningNil
	^'Se esta devolviendo nil'! !

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 11/13/2019 00:51:52'!
titleForSendInstanceMethodToClass

	^ 'Envio de mensaje de instancia a clase'! !

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 10/26/2019 23:00:11'!
titleForTestWithoutAssert

	^ 'Test sin Assert'.! !

!RuleList methodsFor: 'initialize' stamp: 'GET 9/28/2019 13:43:38'!
initialize
	rules _ OrderedCollection new.
	selectedRuleIndex _ 0.! !

!RuleList methodsFor: 'initialize' stamp: 'GET 10/3/2019 20:32:28'!
with: aRules
	rules _ aRules asOrderedCollection .
	selectedRuleIndex _ 0.! !

!RuleList methodsFor: 'testing' stamp: 'GET 10/3/2019 19:36:08'!
includes: aRule 
	
	^ rules includes: aRule.! !

!RuleList methodsFor: 'testing' stamp: 'MEG 9/28/2019 01:41:00'!
isEmpty

	^ rules isEmpty .! !

!RuleList methodsFor: 'accessing' stamp: 'GET 10/30/2019 19:28:56'!
describeRule
 ^ (self selectedRuleIfNone: [^ self emptyShowMessage ]) description .! !

!RuleList methodsFor: 'accessing' stamp: 'GET 9/29/2019 11:16:10'!
emptyShowMessage
	^ 'No hay regla seleccionada'.! !

!RuleList methodsFor: 'accessing' stamp: 'GET 9/27/2019 18:30:07'!
indexRuleSelected
	^ selectedRuleIndex! !

!RuleList methodsFor: 'accessing' stamp: 'GET 10/1/2019 23:16:02'!
rulesTitles
	^ rules collect:[:rule | rule title]! !

!RuleList methodsFor: 'action' stamp: 'GET 10/3/2019 19:44:50'!
add: aRule
	(rules anySatisfy: [:rule| rule sameClassAs: aRule ] ) ifTrue: [^ self].
	
	rules add: aRule .
	selectedRuleIndex _ 1.
		self changed: #rules.
! !

!RuleList methodsFor: 'action' stamp: 'MEG 10/9/2019 22:06:19'!
clean
	
	rules removeAll.! !

!RuleList methodsFor: 'action' stamp: 'GET 10/30/2019 19:28:56'!
ignoreRule

	| aRule |
	aRule  _ self selectedRuleIfNone: [^self emptyShowMessage] .
	rules remove: aRule.
	self indexRuleSelected: 0.
	self changed: #rules.
	^ 'Regla ignorada: ', (aRule title) .
	! !

!RuleList methodsFor: 'action' stamp: 'GET 9/27/2019 18:30:07'!
indexRuleSelected: anInteger
	selectedRuleIndex _ anInteger ! !

!RuleList methodsFor: 'action' stamp: 'GET 10/30/2019 19:28:56'!
selectedRuleIfNone: aBlock

	^ rules at: selectedRuleIndex ifAbsent: aBlock.! !

!TextAttribute methodsFor: '*Cuis-University-COOP' stamp: 'MEG 11/10/2019 19:33:49'!
belongsToCOOP

	^ false! !

!DenotativeObjectBrowserWindow class methodsFor: '*Cuis-University-COOP' stamp: 'MEG 10/19/2019 22:31:59'!
worldMenuOptions 

	^`{
	{
		#itemGroup 	-> 		0.
		#itemOrder 		-> 		10.
		#label 			-> 		'DenotativeObject Browser'.
		#selector 		-> 		#openBrowser.
		#object 			-> 		DenotativeObjectBrowserWindow.
		#icon 			-> 		#morphsIcon.
		#balloonText 	-> 		'To work with denotative objects (without classes)'.
	} asDictionary.
	{
		#itemGroup 	-> 		0.
		#itemOrder 		-> 		20.
		#label 			-> 		'Class Browser'.
		#selector 		-> 		#openBrowser.
		#object 			-> 		BrowserWindow.
		#icon 			-> 		#editFindReplaceIcon.
		#balloonText 	-> 		'Classical Smalltalk class browser'.
	} asDictionary.
	{
		#itemGroup 		-> 	0.
		#itemOrder 		-> 		30.
		#label 			->			'COOP Browser'.
		#selector 		-> 		#openCOOPWindow.
		#object 			-> 		COOPWindow.
		#icon 			-> 		#editFindReplaceIcon.
		#balloonText 	-> 		'Browser with COOP'.
	} asDictionary. 
	}`! !

!TheWorldMenu methodsFor: '*Cuis-University-COOP' stamp: 'GET 9/28/2019 00:25:07'!
preferencesMenu
	"Build the preferences menu for the world."
	"original package construction"
	^ (self menu: 'Preferences...')
		addItemsFromDictionaries: {
			{
				#label 			-> 		'Focus follows mouse'.
				#object 			-> 		Preferences.
				#selector 		-> 		#enableFocusFollowsMouse.
				#icon 			-> 		#windowIcon.
				#balloonText 	-> 		'At all times, make the active window and widget the one on which the mouse is located.'
			} asDictionary.
			{
				#label 			-> 		'Click to focus'.
				#object 			-> 		Preferences.
				#selector 		-> 		#disableFocusFollowsMouse.
				#icon 			-> 		#windowIcon.
				#balloonText 	-> 		'At all times, make the active window and widget the one where the mouse was clicked.'
			} asDictionary.
			{
				#label 			-> 		'Font Sizes...'.
				#object 			-> 		Theme.
				#selector 		-> 		#changeFontSizes.
				#icon 			-> 		#preferencesDesktopFontIcon.
				#balloonText 	-> 		'use larger or smaller text and widgets'
			} asDictionary.
			{
				#label			->			'Set font...'.
				#object 			-> 		FontChanger.
				#selector 		-> 		#promptUserAndInstallIfNecessaryWithFamilies:.
				#arguments 		-> 		{FontChanger familyNames}.
				#icon 			-> 		#preferencesDesktopFontIcon.
				#balloonText 	-> 		'change the current font family.'
			} asDictionary.
			{
				#label			->			'Load extra fonts'.
				#object 			-> 		FontFamily.
				#selector 		-> 		#readAdditionalTrueTypeFonts.
				#icon 			-> 		#preferencesDesktopFontIcon.
				#balloonText 	-> 		'Load additional TrueType fonts included with Cuis.'
			} asDictionary.
			{
				#label 			-> 		'Icons...'.
				#object 			-> 		Theme.
				#selector 		-> 		#changeIcons.
				#icon 			-> 		#worldIcon.
				#balloonText 	-> 		'show more or less icons.'
			} asDictionary.
			{
				#label 			-> 		'Themes...'.
				#object 			-> 		Theme.
				#selector 		-> 		#changeTheme.
				#icon 			-> 		#appearanceIcon.
				#balloonText 	-> 		'switch to another theme.'
			} asDictionary.
			{
				#label 			-> 		COOPPreferences preferenceLabel.
				#object 			-> 		COOPPreferences .
				#selector 		-> 		#toggleCOOPPreference.
				#icon 			-> 		#helpIcon.
				#balloonText 	-> 		'Activate/Deactivate COOP'
			} asDictionary.
			nil.
			{
				#label 			-> 		'Show taskbar'.
				#object 			-> 		#myWorld.
				#selector 		-> 		#showTaskbar.
				#icon 			-> 		#expandIcon.
				#balloonText 	-> 		'show the taskbar'
			} asDictionary.
			{
				#label 			-> 		'Hide taskbar'.
				#object 			-> 		#myWorld.
				#selector 		-> 		#hideTaskbar.
				#icon 			-> 		#collapseIcon.
				#balloonText 	-> 		'hide the taskbar'
			} asDictionary.
			nil.
			{
				#label 			-> 		'Full screen on'.
				#selector 		-> 		#fullScreenOn.
				#icon 			-> 		#viewFullscreenIcon.
				#balloonText 	-> 		'puts you in full-screen mode, if not already there.'
			} asDictionary.
			{
				#label 			-> 		'Full screen off'.
				#selector 		-> 		#fullScreenOff.
				#icon 			-> 		#exitFullscreenIcon.
				#balloonText 	-> 		'if in full-screen mode, takes you out of it.'
			} asDictionary.
			nil.
			{
				#label 			-> 		'Set Code Author...'.
				#object 			-> 		Utilities.
				#selector 		-> 		#setAuthor.
				#icon 			-> 		#usersIcon.
				#balloonText 	-> 		'supply initials to be used to identify the author of code and other content.'
			} asDictionary.
			{
				#label 			-> 		'All preferences...'.
				#object 			-> 		Preferences.
				#selector 		-> 		#openPreferencesInspector.
				#icon 			-> 		#preferencesIcon.
				#balloonText 	-> 		'view and change various options.'
			} asDictionary.
		}! !
COOPPreferences initialize!
