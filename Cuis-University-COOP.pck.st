'From Cuis 5.0 [latest update: #3839] on 29 September 2019 at 12:04:15 am'!
'Description '!
!provides: 'Cuis-University-COOP' 1 4!
SystemOrganization addCategory: #'Cuis-University-COOP'!
SystemOrganization addCategory: #'Cuis-University-COOP-Tests'!
SystemOrganization addCategory: #'Cuis-University-COOP-Morph'!


!classDefinition: #COOPWindow category: #'Cuis-University-COOP-Morph'!
BrowserWindow subclass: #COOPWindow
	instanceVariableNames: 'ruleList'
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

!classDefinition: #DemoTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #DemoTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'DemoTest class' category: #'Cuis-University-COOP-Tests'!
DemoTest class
	instanceVariableNames: ''!

!classDefinition: #RuleCollectionSizeTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #RuleCollectionSizeTest
	instanceVariableNames: 'methodFactory rule'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'RuleCollectionSizeTest class' category: #'Cuis-University-COOP-Tests'!
RuleCollectionSizeTest class
	instanceVariableNames: 'coopHelper'!

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
	instanceVariableNames: 'rules'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!
!classDefinition: 'COOP class' category: #'Cuis-University-COOP'!
COOP class
	instanceVariableNames: ''!

!classDefinition: #RuleCollectionSize category: #'Cuis-University-COOP'!
Object subclass: #RuleCollectionSize
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!
!classDefinition: 'RuleCollectionSize class' category: #'Cuis-University-COOP'!
RuleCollectionSize class
	instanceVariableNames: ''!

!classDefinition: #NotifierForTesting category: #'Cuis-University-COOP-Tests'!
Object subclass: #NotifierForTesting
	instanceVariableNames: 'object hasNotified selector'
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

!classDefinition: #RuleList category: #'Cuis-University-COOP-Morph'!
Object subclass: #RuleList
	instanceVariableNames: 'rules selectedRuleIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Morph'!
!classDefinition: 'RuleList class' category: #'Cuis-University-COOP-Morph'!
RuleList class
	instanceVariableNames: ''!


!COOPWindow methodsFor: 'GUI building' stamp: 'GET 9/28/2019 00:17:12'!
buildButtonRulePane

	| buttonIgnoreRule buttonMoreRuleInformation ruleViewPane |
	ruleViewPane _ LayoutMorph newRow.

	buttonMoreRuleInformation _ self createButtonMoreRuleInformation.
	buttonIgnoreRule _ self createButtonIgnoreRule.
	
	ruleViewPane addMorph: buttonMoreRuleInformation proportionalWidth: 0.5.
	ruleViewPane addMorph: buttonIgnoreRule proportionalWidth: 0.5.

	^ ruleViewPane.! !

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 9/28/2019 00:20:14'!
buildCOOPRulePane
	"Construct the pane that shows the code.
	Respect the Preference for standardCodeFont."
		
	| codePaneLayout ruleListPane |
	codePaneLayout _ LayoutMorph newRow.

	ruleListPane _ self buildRuleListPane.
	
	codePaneLayout addAdjusterAndMorph: codePane proportionalWidth: 0.8.
	codePaneLayout addAdjusterAndMorph: ruleListPane proportionalWidth: 0.2.

	^codePaneLayout .! !

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 9/28/2019 00:17:52'!
buildMorphicCodePane
	"Construct the pane that shows the code.
	Respect the Preference for standardCodeFont."
	
	codePane _ super buildMorphicCodePane.
		 
	^ Preferences coopIsWatching ifTrue:[ self buildCOOPRulePane ] ifFalse: [ codePane] .! !

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 9/28/2019 00:20:00'!
buildRuleListMorph

	^ PluggableListMorph
		model: self ruleList 
		listGetter: #rules
		indexGetter: #indexRuleSelected
		indexSetter: #indexRuleSelected:! !

!COOPWindow methodsFor: 'GUI building' stamp: 'GET 9/28/2019 00:20:14'!
buildRuleListPane
	| buttonPane  ruleListView ruleListPane |
	ruleList _ self ruleList.
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

!COOPWindow methodsFor: 'accessing' stamp: 'GET 9/28/2019 13:46:06'!
ruleList

	^ ruleList ifNil: [RuleList  mockRules ]  .! !

!COOPWindow methodsFor: 'action' stamp: 'GET 9/28/2019 13:15:00'!
describeSelectedRule
	PopUpMenu  inform: self ruleList describeRule.
	! !

!COOPWindow methodsFor: 'action' stamp: 'GET 9/28/2019 23:56:51'!
ignoreRule

	PopUpMenu  inform: self ruleList ignoreRule.! !

!COOPWindow class methodsFor: 'menu world' stamp: 'GET 9/22/2019 19:31:59'!
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

!COOPMethodFactoryTest methodsFor: 'compiled-method-test' stamp: 'MEG 9/22/2019 23:49:16'!
testCOOPMethodFactoryCompilesNewMethodNode

	| methodFactory aMethodNode |

	methodFactory _ COOPMethodFactory new.
	
	aMethodNode _ methodFactory compileAndReturnMethod: #temporal withSourceCode: '^ 1.'.
	
	self assert: aMethodNode class equals: MethodNode.
	self assert: aMethodNode selector equals: #temporal.! !

!DemoTest methodsFor: 'apply' stamp: 'MEG 9/22/2019 23:52:06'!
testCollectionSizeIsEqualToZeroOpensAPopUpOnAccept

	| collection |
	collection _ OrderedCollection new.
	
	self assert: collection size = 0.! !

!DemoTest methodsFor: 'apply' stamp: 'MEG 9/22/2019 23:52:12'!
testCollectionSizeIsIdenticalToZeroOpensAPopUpOnAccept

	| collection |
	collection _ OrderedCollection new.
	
	self assert: collection size == 0.! !

!DemoTest methodsFor: 'apply' stamp: 'MEG 9/22/2019 23:52:17'!
testZeroIsEqualToCollectionSizeOpensAPopUpOnAccept

	| collection |
	collection _ OrderedCollection new.
	
	self assert: 0 = collection size.! !

!DemoTest methodsFor: 'apply' stamp: 'MEG 9/22/2019 23:52:23'!
testZeroIsIdenticalToCollectionSizeOpensAPopUpOnAccept

	| collection |
	collection _ OrderedCollection new.
	
	self assert: 0 == collection size.! !

!DemoTest methodsFor: 'not-apply' stamp: 'MEG 9/22/2019 23:52:28'!
testCollectionIsEmptyDoesNotOpenAPopUp

	| collection |
	collection _ OrderedCollection new.
	
	self assert: collection isEmpty.! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/22/2019 23:47:29'!
testRuleCollectionSizeDoesNotApplyInAMethodNodeWithStandardCaseAsAComment

	| aMethodNode |
	
	aMethodNode _ methodFactory compileAndReturnMethod: #colaboration withSourceCode: ' "col size == 0" '.
	
	self deny: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/22/2019 23:47:35'!
testRuleCollectionSizeDoesNotApplyInAMethodNodeWithStandardCaseUnordered

	| aMethodNode |
	
	aMethodNode _ methodFactory compileAndReturnMethod: #colaboration withSourceCode: ' col size. ^ 0 == 1. '.
	
	self deny: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/22/2019 23:47:42'!
testRuleCollectionSizeDoesNotApplyWhenCaseIsNotThere

	| aMethodNode |

	aMethodNode _ methodFactory compileAndReturnMethod: #colaboration withSourceCode: ' ^ 0 == 1. '.
	
	self deny: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/22/2019 23:47:48'!
testRuleCollectionSizeDoesNotApplyWhenSizeEqualsAndZeroAreNotInTheSameMessage

	| aMethodNode |

	aMethodNode _ methodFactory compileAndReturnMethod: #colaboration withSourceCode: ' 0 == 1 and col size == 1 '.
	
	self deny: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/22/2019 23:47:52'!
testRuleCollectionSizeDoesNotApplyWhenTheMessageEndsOnSizeMethod

	| aMethodNode |

	aMethodNode _ methodFactory compileAndReturnMethod: #colaboration withSourceCode: ' ^ col size '.
	
	self deny: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/22/2019 23:47:57'!
testRuleCollectionSizeDoesNotApplyWhenZeroIsOnTemporaryVariableNode

	| aMethodNode |
	
	aMethodNode _ methodFactory compileAndReturnMethod: #colaboration withSourceCode: ' |zero| zero := 0. ^ col size == zero '.
	
	self deny: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/22/2019 23:49:36'!
testRuleCollectionSizeApplyInAMethodNodeWithEqualMessageCase

	| aMethodNode |
	
	aMethodNode _ methodFactory compileAndReturnMethod: #colaboration withSourceCode: ' col size = 0 '.
	
	self assert: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/22/2019 23:45:04'!
testRuleCollectionSizeApplyInAMethodNodeWithInvertedCaseOfStandardRule

	| aMethodNode |
	
	aMethodNode _ methodFactory compileAndReturnMethod: #colaboration withSourceCode: ' 0 == col size '.
	
	self assert: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/22/2019 23:45:26'!
testRuleCollectionSizeApplyInAMethodNodeWithInvertedEqualMessageCase

	| aMethodNode |
	
	aMethodNode _ methodFactory compileAndReturnMethod: #colaboration withSourceCode: ' 0 = col size '.
	
	self assert: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/22/2019 23:45:35'!
testRuleCollectionSizeApplyInAMethodNodeWithStandardCase

	| aMethodNode |
	
	aMethodNode _ methodFactory compileAndReturnMethod: #colaboration withSourceCode: ' col size == 0 '.
	
	self assert: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/22/2019 23:45:46'!
testRuleCollectionSizeApplyInAMethodNodeWithStandardCaseButAfterAReferenceNode

	| aMethodNode  |
	
	aMethodNode _ methodFactory compileAndReturnMethod: #colaboration 
		withSourceCode: ' |collectionSize| collectionSize := col size.  ^ col size == 0 '.
	
	self assert: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'setup/teardown' stamp: 'MEG 9/22/2019 23:44:29'!
setUp

	methodFactory _ COOPMethodFactory new.
	
	rule _ RuleCollectionSize new.! !

!RuleListTest methodsFor: 'empty-rules' stamp: 'GET 9/28/2019 14:11:13'!
test000ANewRuleListIsEmptyAndIndexIsZero

	self assert: ruleList isEmpty.
	self assert: ruleList indexRuleSelected  equals: 0 .! !

!RuleListTest methodsFor: 'empty-rules' stamp: 'GET 9/28/2019 14:12:52'!
test001ARuleListCanReturnsItsRules

	self assert: ruleList rules isEmpty .! !

!RuleListTest methodsFor: 'empty-rules' stamp: 'GET 9/28/2019 13:49:36'!
test002AnEmptyRuleListDescribeARuleShowEmptyMessage

	self assert: ruleList describeRule equals: ruleList emptyShowMessage .! !

!RuleListTest methodsFor: 'empty-rules' stamp: 'GET 9/28/2019 13:55:40'!
test003AnEmptyRuleListIgnoreARuleShowEmptyMessage

	self assert: ruleList ignoreRule equals: ruleList emptyShowMessage .! !

!RuleListTest methodsFor: 'setUp/tearDown' stamp: 'GET 9/28/2019 14:18:27'!
setUp
	ruleList _ RuleList new .
	aRule  _ 'A rule'.! !

!RuleListTest methodsFor: 'with-rules' stamp: 'GET 9/28/2019 14:18:38'!
test004ARuleListCanAddARuleAndTheIndexIsTheFirst
	
	ruleList add: aRule .
	
	self deny: ruleList isEmpty.
	self assert: ruleList rules includes: aRule.
	self assert: 1 equals: ruleList indexRuleSelected  .! !

!RuleListTest methodsFor: 'with-rules' stamp: 'GET 9/28/2019 14:18:52'!
test005WhenARuleListAddMoreRulesTheIndexIsTheFirst
	
	ruleList add: aRule .
	ruleList add: aRule .
	
	self assert: 1 equals:  ruleList indexRuleSelected  .! !

!RuleListTest methodsFor: 'with-rules' stamp: 'GET 9/28/2019 14:19:12'!
test006ARuleListWithRulesShowTheSelectedRule
	
	ruleList add: aRule .
	
	self assert: aRule  equals: ruleList describeRule .
! !

!RuleListTest methodsFor: 'with-rules' stamp: 'GET 9/28/2019 23:48:46'!
test007ARuleListWithRulesCanIgnoreTheSelectedRuleAndDecreaseItsIndex
	
	ruleList add: aRule .
	
	self assert: aRule  equals: ruleList ignoreRule .
	self deny: (ruleList rules includes: aRule) .
	self assert: 0 equals: ruleList indexRuleSelected.! !

!RuleListTest methodsFor: 'with-rules' stamp: 'GET 9/29/2019 00:01:31'!
test008WhenARuleIsIgnoreTheRulesHasChanged
	
	| notifier |
	notifier  _ NotifierForTesting watch: ruleList.
	ruleList add: aRule .
	ruleList ignoreRule.
	
	self assert: notifier hasNotified.
	! !

!COOPMethodFactory methodsFor: 'action' stamp: 'MEG 9/22/2019 23:01:12'!
compileAndReturnMethod: selector withSourceCode: sourceCode 
	
	| aMethodNode classToBeRemoved |
	classToBeRemoved _ self createClassToBeRemoved.
	aMethodNode _ self compileAndReturnMethodIn: classToBeRemoved named: selector withSourceCode: sourceCode.
	classToBeRemoved removeFromSystem.
	
	^ aMethodNode! !

!COOPMethodFactory methodsFor: 'action' stamp: 'MEG 9/22/2019 23:30:06'!
compileAndReturnMethodIn: aClass named: aSelectorName withSourceCode: aSourceCode
	
	aClass compile: aSelectorName, aSourceCode.
	
	^ (aClass methodDictionary at: aSelectorName) methodNode.! !

!COOPMethodFactory methodsFor: 'class categories' stamp: 'MEG 9/22/2019 23:00:04'!
categoryOfClassToBeRemoved
	
	^ 'Cuis-University-COOP-Tests'! !

!COOPMethodFactory methodsFor: 'classes' stamp: 'MEG 9/22/2019 22:54:05'!
nameOfClassToBeRemoved
	
	^ #COOPClassToBeRemoved! !

!COOP methodsFor: 'action' stamp: 'MEG 9/13/2019 19:36:04'!
opensPopUpFor: rule

	PopUpMenu inform: 'Se podria utilizar el mensaje #isEmpty 
	para cuando se chequea que el tamaño 
	de una coleccion es igual a cero'! !

!COOP methodsFor: 'action' stamp: 'MEG 9/13/2019 19:36:04'!
performInteractiveChecksFor: aMethodNode

	^ rules do: [ :rule | (rule check: aMethodNode) ifTrue: [ self opensPopUpFor: rule ] ]! !

!COOP methodsFor: 'initialization' stamp: 'MEG 9/13/2019 18:49:41'!
initialize

	rules _ Set new.
	
	rules add: RuleCollectionSize new.! !

!RuleCollectionSize methodsFor: 'testing' stamp: 'GET 9/10/2019 22:34:46'!
check: aMethodNode 
		
	^ aMethodNode body statements anySatisfy: [:node | self checkIfNodeHasRule: node ]! !

!RuleCollectionSize methodsFor: 'testing' stamp: 'MEG 9/13/2019 18:16:55'!
checkIfNodeHasRule: statementNode 

	| parseNode nodesFlatten  referenceNode referenceNodePosition involvedNodes |
	nodesFlatten _ OrderedCollection new.
	parseNode _ ParseNodeEnumerator ofBlock: [:node| node isLeafNode ifTrue: [nodesFlatten add: node]].
	
	"nodesFlatten is empty until next line"
	statementNode accept: parseNode. 	
	
	( ( nodesFlatten anySatisfy: [:node | node key == #size] ) 
	and: [ nodesFlatten anySatisfy: [:node | (node key == #==) or: [ node key == #= ] ] ] 
	and: [  nodesFlatten anySatisfy: [:node  | node key == 0 ] ] ) ifFalse: [ ^ false ] .
	
	referenceNode _ nodesFlatten detect: [ :node | (node isSelectorNode & node key == #size) or: [ node isLiteralNode & node key == 0] ] ifNone: [ ].

	referenceNodePosition _ nodesFlatten indexOf: referenceNode.

	involvedNodes _ OrderedCollection new.

	involvedNodes add: ( nodesFlatten at: referenceNodePosition ).
	involvedNodes add: ( nodesFlatten at: referenceNodePosition + 1 ).
	involvedNodes add: ( nodesFlatten at: referenceNodePosition + 2 ).
	
	( referenceNode key == 0 ) ifTrue: [ involvedNodes add: ( nodesFlatten at: referenceNodePosition + 3)].

	^ ( involvedNodes anySatisfy: [:node | node key == #size] ) 
	and: [ involvedNodes anySatisfy: [:node | (node key == #==) or: [node key == #=] ] ] 
	and: [  involvedNodes anySatisfy: [:node  | node key == 0 ] ].! !

!NotifierForTesting methodsFor: 'testing' stamp: 'GET 9/28/2019 14:34:31'!
hasNotified

	^ hasNotified.! !

!NotifierForTesting methodsFor: 'initialize' stamp: 'GET 9/29/2019 00:01:18'!
watch: anObject
	anObject addDependent:self .

	hasNotified _ false .! !

!NotifierForTesting methodsFor: 'as yet unclassified' stamp: 'GET 9/29/2019 00:01:52'!
update: aParameter
	hasNotified _ true.
	^ super update: aParameter .! !

!NotifierForTesting class methodsFor: 'class initialization' stamp: 'GET 9/29/2019 00:01:06'!
watch: anObject
	^ self new watch: anObject.! !

!COOPPreferences class methodsFor: 'class initialization' stamp: 'GET 9/26/2019 19:01:57'!
initialize
	"
	COOPPreferences initialize
	"
	Preferences
		addPreference: #coopIsWatching 
		category: #coop
		default: false
		balloonHelp: 'Activates COOP!!'.! !

!COOPPreferences class methodsFor: 'action' stamp: 'GET 9/28/2019 00:11:31'!
toggleCOOPPreference

	Preferences togglePreference: #coopIsWatching .! !

!COOPPreferences class methodsFor: 'accesors' stamp: 'GET 9/28/2019 00:07:03'!
preferenceLabel
	^ Preferences coopIsWatching ifTrue: 'COOP ON' ifFalse: 'COOP OFF'.! !

!RuleList methodsFor: 'initialize' stamp: 'GET 9/28/2019 13:43:38'!
initialize
	rules _ OrderedCollection new.
	selectedRuleIndex _ 0.! !

!RuleList methodsFor: 'initialize' stamp: 'GET 9/28/2019 13:45:31'!
with: aRules
	rules _ aRules asOrderedCollection .
	selectedRuleIndex _ 0.! !

!RuleList methodsFor: 'testing' stamp: 'GET 9/27/2019 19:22:14'!
isEmpty 
 ^ rules isEmpty .! !

!RuleList methodsFor: 'accessing' stamp: 'GET 9/28/2019 23:45:55'!
describeRule 
 ^ rules at: selectedRuleIndex ifAbsent: [self emptyShowMessage ].! !

!RuleList methodsFor: 'accessing' stamp: 'GET 9/28/2019 13:49:47'!
emptyShowMessage
	^ 'No hay regla para mostrar'.! !

!RuleList methodsFor: 'accessing' stamp: 'GET 9/27/2019 18:30:07'!
indexRuleSelected
	^ selectedRuleIndex! !

!RuleList methodsFor: 'accessing' stamp: 'GET 9/27/2019 18:29:49'!
rules
	^ rules! !

!RuleList methodsFor: 'action' stamp: 'GET 9/28/2019 14:00:52'!
add: aRule

	rules add:aRule .
	selectedRuleIndex _ 1.! !

!RuleList methodsFor: 'action' stamp: 'GET 9/28/2019 23:46:24'!
ignoreRule
	
	| showRule |
	showRule  _ rules at: selectedRuleIndex ifAbsent: [^self emptyShowMessage].
	rules remove: showRule.
	self indexRuleSelected: 0.
	self changed: #rules.
	^ showRule.
	! !

!RuleList methodsFor: 'action' stamp: 'GET 9/27/2019 18:30:07'!
indexRuleSelected: anInteger
	selectedRuleIndex _ anInteger ! !

!RuleList class methodsFor: 'as yet unclassified' stamp: 'GET 9/28/2019 13:44:56'!
mockRules
	^ self new with: {'Soy una regla 1'. 'Soy una regla 2' }.! !

!Parser methodsFor: '*Cuis-University-COOP' stamp: 'MEG 9/13/2019 18:53:03'!
performCOOPChecksFor: aMethodNode

	^ COOP new performInteractiveChecksFor: aMethodNode

	! !

!Parser methodsFor: '*Cuis-University-COOP' stamp: 'MEG 9/13/2019 18:41:33'!
performInteractiveChecks: aMethodNode

	self
		warnIfPossibilityOfSelfRecursion: aMethodNode;
		declareUndeclaredTemps: aMethodNode;
		performCOOPChecksFor: aMethodNode;
		removeUnusedTemps! !

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
