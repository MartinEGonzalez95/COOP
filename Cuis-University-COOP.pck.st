'From Cuis 5.0 [latest update: #3839] on 19 October 2019 at 10:32:29 pm'!
'Description '!
!provides: 'Cuis-University-COOP' 1 20!
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

!classDefinition: #COOPWindow category: #'Cuis-University-COOP-Morph'!
BrowserWindow subclass: #COOPWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Morph'!
!classDefinition: 'COOPWindow class' category: #'Cuis-University-COOP-Morph'!
COOPWindow class
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

!classDefinition: #COOPTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #COOPTest
	instanceVariableNames: 'coop aRule2 aRule notifier coopMethodFactory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPTest class' category: #'Cuis-University-COOP-Tests'!
COOPTest class
	instanceVariableNames: ''!

!classDefinition: #DemoTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #DemoTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'DemoTest class' category: #'Cuis-University-COOP-Tests'!
DemoTest class
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

!classDefinition: #NotifierForTesting category: #'Cuis-University-COOP-Tests'!
Object subclass: #NotifierForTesting
	instanceVariableNames: 'object hasNotified selector lastParameterSended'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'NotifierForTesting class' category: #'Cuis-University-COOP-Tests'!
NotifierForTesting class
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

!COOPBrowser methodsFor: 'initialize' stamp: 'MEG 10/15/2019 16:13:22'!
initialize
	super initialize .
	methodsWithRules _ Dictionary new.
	
	self when: #annotationChanged send: #runCOOP to: self.
! !

!COOPBrowser methodsFor: 'initialize' stamp: 'GET 10/1/2019 23:49:47'!
rules
	^ self ruleList rulesTitles .! !

!COOPBrowser methodsFor: 'action' stamp: 'GET 10/3/2019 20:37:54'!
addRule: aRule for:aMethodNode

	| aRuleList |
	aRuleList _ self ruleListOf: (self keyForRule: aMethodNode ).	.

	aRuleList add:aRule.
	self changed: #rules.! !

!COOPBrowser methodsFor: 'action' stamp: 'MEG 10/10/2019 00:04:00'!
cleanBeforeRunning: aMethodNode

	| aRuleList |
	aRuleList _ self ruleListOf: ( self keyForRule: aMethodNode ).	.

	aRuleList clean.
	
	self changed: #rules.! !

!COOPBrowser methodsFor: 'action' stamp: 'GET 10/2/2019 00:09:25'!
describeRule
	^ self ruleList describeRule .! !

!COOPBrowser methodsFor: 'action' stamp: 'MEG 10/12/2019 16:40:04'!
displayRules
	
	self changed: #rules.! !

!COOPBrowser methodsFor: 'action' stamp: 'GET 10/3/2019 19:19:37'!
ignoreRule
	| ignoredRule |
	 ignoredRule _ self ruleList ignoreRule .
	self changed:#rules.
	^ ignoredRule .! !

!COOPBrowser methodsFor: 'action' stamp: 'MEG 10/14/2019 00:37:12'!
runCOOP

	| methodDictionary methodNode selectedMessageName |
	methodDictionary _ ( self selectedClassOrMetaClass ifNil: [ ^ self ] ) methodDictionary.
	selectedMessageName _ self selectedMessageName ifNil: [ ^ self ].

	methodNode _  ( methodDictionary at: selectedMessageName ) methodNode.

	COOP new performInteractiveChecksFor: methodNode.
	
	"Mandatory to return self because method it's used on cascade"
	^ self! !

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

!COOPWindow methodsFor: 'action' stamp: 'GET 10/3/2019 20:27:32'!
describeSelectedRule
	PopUpMenu  inform: model describeRule.
	! !

!COOPWindow methodsFor: 'action' stamp: 'GET 10/3/2019 20:27:36'!
ignoreRule

	PopUpMenu  inform: model ignoreRule.! !

!COOPWindow methodsFor: 'action' stamp: 'MEG 10/14/2019 00:36:28'!
informCOOP

	model ifNotNil: [ model runCOOP ]! !

!COOPWindow class methodsFor: 'instance creation' stamp: 'GET 10/3/2019 19:09:32'!
openCOOPWindow
	| browser window |
	browser _ COOPBrowser new.
	window _ self open: browser label: browser defaultBrowserTitle.	
	^ window! !

!COOPWindow class methodsFor: 'action' stamp: 'MEG 10/14/2019 00:36:20'!
informCOOP

	self allInstancesDo: [ :coopWindow | coopWindow informCOOP ]! !

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

!COOPRuleTest methodsFor: 'method-for-testing' stamp: 'GET 10/13/2019 16:36:45'!
searchMethodNode: selectorName

	^ coopMethodFactory findMethodNodeNamed: selectorName in: self class.  ! !

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

!DemoTest methodsFor: 'apply' stamp: 'GET 10/13/2019 16:02:54'!
testApplyWhenThereAreMoreThanThreeColaborationsChained

	self assert: ( 1 + 1 + 1 +1   ) equals: 4.! !

!DemoTest methodsFor: 'apply' stamp: 'GET 10/13/2019 16:05:35'!
testApplyWhenThereAreMoreThanThreeColaborationsChainedInsideABlock

	self assert:  [1 + 1 + 1 +1] value   equals: 4.! !

!DemoTest methodsFor: 'apply' stamp: 'GET 10/14/2019 16:19:32'!
testApplyWhenThereAreThreeColaborationsChained

	self assert: (1 + 1 + 1 + 1 ) equals: 4.! !

!DemoTest methodsFor: 'apply' stamp: 'MEG 10/15/2019 16:32:07'!
testCollectionSizeIsEqualToZeroOpensAPopUpOnAccept

	| collection |

	collection _ OrderedCollection new.

	self assert: collection size = 0 .! !

!DemoTest methodsFor: 'apply' stamp: 'MEG 10/10/2019 00:04:44'!
testCollectionSizeIsIdenticalToZeroOpensAPopUpOnAccept

	| collection |

	collection _ OrderedCollection new.

	self assert: collection size == 0 .! !

!DemoTest methodsFor: 'apply' stamp: 'GET 10/3/2019 19:45:38'!
testZeroIsEqualToCollectionSizeOpensAPopUpOnAccept

	| collection |
	collection _ OrderedCollection new.

	self assert: 0 = collection size.! !

!DemoTest methodsFor: 'apply' stamp: 'GET 10/11/2019 23:25:09'!
testZeroIsIdenticalToCollectionSizeOpensAPopUpOnAccept

	| collection |
	collection _ OrderedCollection new.

	self assert: 0 == collection size.! !

!DemoTest methodsFor: 'not-apply' stamp: 'GET 10/13/2019 16:08:05'!
testColaborationChainDoesNotApplyInCascadeColaborations

	| col |
	col _ Set new.

	self assert: (col  isEmpty ;isEmpty ;isEmpty ).! !

!DemoTest methodsFor: 'not-apply' stamp: 'GET 10/3/2019 19:20:51'!
testCollectionIsEmptyDoesNotOpenAPopUp

	| collection |
	collection _ OrderedCollection new.

	self assert: collection isEmpty.! !

!DemoTest methodsFor: 'not-apply' stamp: 'GET 10/13/2019 20:48:10'!
testDoesNotApplyWhenThereAreLessThanTwoColaborationsChained

	self assert: (1   + 1 +  1 ) equals: 3.! !

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

!RuleListTest methodsFor: 'with-rules' stamp: 'MEG 10/15/2019 16:29:23'!
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

!RuleListTest methodsFor: 'with-rules' stamp: 'GET 9/29/2019 11:17:00'!
testWhenARuleListAddMoreRulesTheIndexIsTheFirst

	ruleList add: aRule .
	ruleList add: aRule .

	self assert: 1 equals:  ruleList indexRuleSelected  .! !

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

!COOPRule class methodsFor: 'as yet unclassified' stamp: 'MEG 10/15/2019 16:34:26'!
allRules

	| rules |
	rules _ Set new.
	
	rules addAll: {
		COOPRuleCollectionSize new.
		COOPRuleColaborationChain new.
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

!COOPRuleCollectionSize methodsFor: 'printing' stamp: 'GET 9/29/2019 12:13:48'!
description
	^ RuleDescriptor new descriptionForColectionSize .! !

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

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 10/9/2019 23:08:05'!
descriptionForChainedColaboration
	^ 'Cuando ocurren muchas colaboraciones encadenadas se recomienda:
	- guardarlos en colaboradores temporales
	- refactorizarlos en mensajes'! !

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 10/3/2019 20:34:29'!
descriptionForColectionSize

	^ 'Se podria utilizar el mensaje #isEmpty
	para cuando se chequea que la longitud
	de una coleccion es igual a cero'! !

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 10/13/2019 16:04:33'!
titleForChainedColaborations
	^ 'Uso colaboraciones encadenadas'.! !

!RuleDescriptor methodsFor: 'printing' stamp: 'GET 9/29/2019 12:06:08'!
titleForCollectionSize
	^'Uso de #isEmpty' ! !

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

!RuleList methodsFor: 'accessing' stamp: 'GET 9/29/2019 16:27:58'!
describeRule
 ^ (self selectedRule: [^ self emptyShowMessage ]) description .! !

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

!RuleList methodsFor: 'action' stamp: 'GET 10/1/2019 23:50:07'!
ignoreRule

	| aRule |
	aRule  _ self selectedRule: [^self emptyShowMessage] .
	rules remove: aRule.
	self indexRuleSelected: 0.
	self changed: #rules.
	^ 'Regla ignorada: ', (aRule title) .
	! !

!RuleList methodsFor: 'action' stamp: 'GET 9/27/2019 18:30:07'!
indexRuleSelected: anInteger
	selectedRuleIndex _ anInteger ! !

!RuleList methodsFor: 'action' stamp: 'GET 9/29/2019 11:44:27'!
selectedRule: aBlock

	^ rules at: selectedRuleIndex ifAbsent: aBlock.! !

!ParseNode methodsFor: '*Cuis-University-COOP' stamp: 'GET 9/10/2019 22:28:52'!
isLeafNode
	"Leaf represent the final of the tree"
	 ^ false.! !

!ParseNode methodsFor: '*Cuis-University-COOP' stamp: 'MEG 9/11/2019 17:42:16'!
isSelectorNode

	^ false! !

!LeafNode methodsFor: '*Cuis-University-COOP' stamp: 'GET 9/10/2019 22:29:04'!
isLeafNode

	^ true.! !

!SelectorNode methodsFor: '*Cuis-University-COOP' stamp: 'MEG 9/11/2019 17:41:50'!
isSelectorNode

	^ true! !

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

!InnerTextMorph methodsFor: '*Cuis-University-COOP' stamp: 'jmv 4/26/2019 11:02:36'!
acceptContents
	"The message is sent when the user hits return or Cmd-S.
	Accept the current contents and end editing."
	"Inform the model of text to be accepted, and return true if OK."

	| accepted prevSelection prevScrollValue |
	
	prevSelection _ self editor selectionInterval copy.
	prevScrollValue _ owner verticalScrollBar scrollValue.
	
	hasUnacceptedEdits ifFalse: [ self flash. ^true ].
	hasEditingConflicts ifTrue: [
		self confirmAcceptAnyway ifFalse: [self flash. ^false]].
	
	accepted _ model acceptContentsFrom: owner.
	"During the step for the browser, updatePaneIfNeeded is called, and 
		invariably resets the contents of the code-holding PluggableTextMorph
		at that time, resetting the cursor position and scroller in the process.
		The following line forces that update without waiting for the step,
 		then restores the cursor and scrollbar"
	
	"some implementors of acceptContentsFrom: answer self :("
	^accepted == true 
		ifTrue: [
			model refetch.
			self editor selectFrom: prevSelection first to: prevSelection last.
			UISupervisor whenUIinSafeState: [
				self world ifNotNil: [ :w | w activeHand newKeyboardFocus: self ].
				owner verticalScrollBar internalScrollValue: prevScrollValue].
			true]
		ifFalse: [ false ]! !

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
