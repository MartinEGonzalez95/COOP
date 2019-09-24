'From Cuis 5.0 [latest update: #3839] on 22 September 2019 at 11:56:23 pm'!
'Description '!
!provides: 'Cuis-University-COOP' 1 2!
SystemOrganization addCategory: #'Cuis-University-COOP'!
SystemOrganization addCategory: #'Cuis-University-COOP-Tests'!


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
