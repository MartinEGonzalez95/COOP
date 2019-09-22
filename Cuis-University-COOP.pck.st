'From Cuis 5.0 [latest update: #3839] on 20 September 2019 at 7:14:27 pm'!
'Description '!
!provides: 'Cuis-University-COOP' 1 1!
SystemOrganization addCategory: #'Cuis-University-COOP'!
SystemOrganization addCategory: #'Cuis-University-COOP-Tests'!


!classDefinition: #COOPHelperTest category: #'Cuis-University-COOP-Tests'!
RefactoringTest subclass: #COOPHelperTest
	instanceVariableNames: 'coopHelper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPHelperTest class' category: #'Cuis-University-COOP-Tests'!
COOPHelperTest class
	instanceVariableNames: ''!

!classDefinition: #COOPMethodFactoryTest category: #'Cuis-University-COOP-Tests'!
RefactoringTest subclass: #COOPMethodFactoryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPMethodFactoryTest class' category: #'Cuis-University-COOP-Tests'!
COOPMethodFactoryTest class
	instanceVariableNames: ''!

!classDefinition: #COOPTest category: #'Cuis-University-COOP-Tests'!
RefactoringTest subclass: #COOPTest
	instanceVariableNames: 'coopHelper coop'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPTest class' category: #'Cuis-University-COOP-Tests'!
COOPTest class
	instanceVariableNames: ''!

!classDefinition: #RuleCollectionSizeTest category: #'Cuis-University-COOP-Tests'!
RefactoringTest subclass: #RuleCollectionSizeTest
	instanceVariableNames: 'coopMethodFactory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'RuleCollectionSizeTest class' category: #'Cuis-University-COOP-Tests'!
RuleCollectionSizeTest class
	instanceVariableNames: 'coopHelper'!

!classDefinition: #DemoTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #DemoTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'DemoTest class' category: #'Cuis-University-COOP-Tests'!
DemoTest class
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

!classDefinition: #COOPHelper category: #'Cuis-University-COOP'!
Object subclass: #COOPHelper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!
!classDefinition: 'COOPHelper class' category: #'Cuis-University-COOP'!
COOPHelper class
	instanceVariableNames: ''!

!classDefinition: #CollectionSendedMessageCheck category: #'Cuis-University-COOP'!
Object subclass: #CollectionSendedMessageCheck
	instanceVariableNames: 'statementNode selectors allNodes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!
!classDefinition: 'CollectionSendedMessageCheck class' category: #'Cuis-University-COOP'!
CollectionSendedMessageCheck class
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

!classDefinition: #COOPMethodFactory category: #'Cuis-University-COOP-Tests'!
Object subclass: #COOPMethodFactory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!
!classDefinition: 'COOPMethodFactory class' category: #'Cuis-University-COOP-Tests'!
COOPMethodFactory class
	instanceVariableNames: ''!


!COOPHelperTest methodsFor: 'message' stamp: 'GET 9/8/2019 19:34:44'!
testCOOPHelperSearchAMessageInAClass 
	| aCompiledMethodExpected  aCompiledMethod | 
	
	coopHelper _ COOPHelper new. 
	aCompiledMethodExpected _ (Collection methodsSelect: [:method | method selector == #size] ) at:1 .
	
	aCompiledMethod _ coopHelper search: #size in: Collection .
	
	self assert: aCompiledMethod  equals: aCompiledMethodExpected .! !

!COOPHelperTest methodsFor: 'message' stamp: 'GET 9/8/2019 19:35:08'!
testCOOPHelperSearchAMethodInAClassAndIsNotFoundThrowsAnError
	|  selector  |
	
	selector _ #iDontExist.
	
	self should: [coopHelper search: selector in: Collection] raise: Error - MessageNotUnderstood 
		withMessageText: 'the message with ', selector , 'was not found in ', Collection className .! !

!COOPHelperTest methodsFor: 'setup/teardown' stamp: 'GET 9/8/2019 19:34:20'!
setUp 
	super setUp.
	coopHelper _ COOPHelper new.
! !

!COOPMethodFactoryTest methodsFor: 'compiled-method-test' stamp: 'GET 9/8/2019 19:33:37'!
testCOOPHelperCompilesNewMethodNode
	| aMethodNode aNewClass coopHelper |
	aNewClass _ self createClassNamed: #TemporaryCoopHelper.
	coopHelper _ COOPMethodFactory new.
	aMethodNode _ coopHelper compileAndReturnIn: aNewClass aSelector: #temporal withSourceCode: '^ 1.'.
	aNewClass removeFromSystem.
	
	self assert: aMethodNode class equals: MethodNode.
	
	self assert: aMethodNode selector equals: #temporal.
	
	self assert: aMethodNode block returns.! !

!COOPTest methodsFor: 'method-detection-test' stamp: 'GET 9/8/2019 19:37:29'!
testCOOPDoesNotFindAMessageToACollectionAssigmentNode
	| aClass aMethodNode |
	
	aClass _ self createClassNamed: #TemporalClass.
	aMethodNode _ coopHelper compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' |var| var := Set new. ^ var'.
	
	self deny: (coop wasSendedToCollection: aMethodNode).! !

!COOPTest methodsFor: 'method-detection-test' stamp: 'GET 9/8/2019 19:32:57'!
testCOOPDoesNotFindAMessageToACollectionOnAMessageNode
	| aClass aMethodNode |
	
	aClass _ self createClassNamed: #TemporalClass.
	aMethodNode _ coopHelper compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' Set new'.
	
	self deny: (coop wasSendedToCollection: aMethodNode).! !

!COOPTest methodsFor: 'method-detection-test' stamp: 'GET 9/8/2019 19:30:12'!
testCOOPDoesNotFindAMessageToACollectionOnAReturnNode
	| aClass aMethodNode |
	aClass _ self createClassNamed: #TemporalClass.
	aMethodNode _ coopHelper compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' ^ Set new'.
	
	self deny: (coop wasSendedToCollection: aMethodNode).! !

!COOPTest methodsFor: 'method-detection-test' stamp: 'GET 9/8/2019 19:32:52'!
testCOOPDoesNotFindAMessageToACollectionOnAReturnNodeWithArgs
	| aClass aMethodNode |
	
	aClass _ self createClassNamed: #TemporalClass.
	aMethodNode _ coopHelper compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' ^ true and: [false] '.
	
	self deny: (coop wasSendedToCollection: aMethodNode).! !

!COOPTest methodsFor: 'method-detection-test' stamp: 'GET 9/8/2019 19:37:39'!
testCOOPDoesNotFindAMessageToACollectionOnAnInstanceVariableNode
	| aClass aMethodNode |
	
	aClass _ self createClassNamed: #TemporalClass.
	aClass addInstanceVarNamed: 'number' withValue: 0. 
	aMethodNode _ coopHelper compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' |var| var := number % 1  . ^ var'.
	
	self deny: (coop wasSendedToCollection: aMethodNode).! !

!COOPTest methodsFor: 'method-detection-test' stamp: 'GET 9/8/2019 19:37:46'!
testCOOPFindAMessageToACollectionOnAAssigmentNode
	| aClass aMethodNode |

	aClass _ self createClassNamed: #TemporalClass.
	aMethodNode _ coopHelper compileAndReturnIn: aClass aSelector: #colaboration  withSourceCode: ' |var| var := Set new isEmpty. ^ var'.
	
	self assert: (coop wasSendedToCollection: aMethodNode).! !

!COOPTest methodsFor: 'method-detection-test' stamp: 'GET 9/8/2019 19:32:40'!
testCOOPFindAMessageToACollectionOnAMessageNode
	| aClass aMethodNode |
	
	aClass _ self createClassNamed: #TemporalClass.
	aMethodNode _ coopHelper compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' Set new isEmpty'.
	
	self assert: (coop wasSendedToCollection: aMethodNode).! !

!COOPTest methodsFor: 'method-detection-test' stamp: 'GET 9/8/2019 19:32:37'!
testCOOPFindAMessageToACollectionOnAReturnNode
	| aClass aMethodNode |
	
	aClass _ self createClassNamed: #TemporalClass.
	aMethodNode _ coopHelper  compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' ^ Set new isEmpty'.
	
	self assert: (coop wasSendedToCollection: aMethodNode).! !

!COOPTest methodsFor: 'method-detection-test' stamp: 'GET 9/8/2019 19:32:31'!
testCOOPFindAMessageToACollectionOnAReturnNodeWithArgs
	| aClass aMethodNode |
	
	aClass _ self createClassNamed: #TemporalClass.
	aMethodNode _ coopHelper compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' |newSet| newSet := Set new .  ^ 0 == newSet size'.
	
	self assert: (coop wasSendedToCollection: aMethodNode).! !

!COOPTest methodsFor: 'method-detection-test' stamp: 'GET 9/8/2019 19:37:52'!
testCOOPFindAMessageToACollectionOnAnInstanceVariableNode
	| aClass aMethodNode |
	
	aClass _ self createClassNamed: #TemporalClass.
	aClass addInstanceVarNamed: 'pepita' withValue: Set new. 
	aMethodNode _ coopHelper compileAndReturnIn: aClass  aSelector: #colaboration withSourceCode: ' |var| var := pepita isEmpty. ^ var'.
	
	self assert: (coop wasSendedToCollection: aMethodNode).! !

!COOPTest methodsFor: 'setup/teardown' stamp: 'GET 9/8/2019 19:29:11'!
setUp
	super setUp.
	coopHelper _ COOPMethodFactory new.
	coop _ COOP new.! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/11/2019 18:51:51'!
testRuleCollectionSizeDoesNotApplyInAMethodNodeWithStandardCaseAsAComment

	| aClass aMethodNode  collectionSizeRule |
	collectionSizeRule _ RuleCollectionSize new.
	aClass _ self createClassNamed: #TemporalClass.
	
	aMethodNode _ coopMethodFactory compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' "col size == 0" '.
	
	self deny: (collectionSizeRule check: aMethodNode) .! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/11/2019 18:51:48'!
testRuleCollectionSizeDoesNotApplyInAMethodNodeWithStandardCaseUnordered

	| aClass aMethodNode  collectionSizeRule |
	collectionSizeRule _ RuleCollectionSize new.
	aClass _ self createClassNamed: #TemporalClass.
	
	aMethodNode _ coopMethodFactory compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' col size. ^ 0 == 1. '.
	
	self deny: (collectionSizeRule check: aMethodNode) .! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/11/2019 18:51:45'!
testRuleCollectionSizeDoesNotApplyWhenCaseIsNotThere

	| aClass aMethodNode  collectionSizeRule |
	collectionSizeRule _ RuleCollectionSize new.
	aClass _ self createClassNamed: #TemporalClass.
	
	aMethodNode _ coopMethodFactory compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' ^ 0 == 1. '.
	
	self deny: (collectionSizeRule check: aMethodNode) .! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/11/2019 18:51:42'!
testRuleCollectionSizeDoesNotApplyWhenSizeEqualsAndZeroAreNotInTheSameMessage

	| aClass aMethodNode  collectionSizeRule |
	collectionSizeRule _ RuleCollectionSize new.
	aClass _ self createClassNamed: #TemporalClass.
	
	aMethodNode _ coopMethodFactory compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' 0 == 1 and col size == 1 '.
	
	self deny: (collectionSizeRule check: aMethodNode) .! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/11/2019 18:41:40'!
testRuleCollectionSizeDoesNotApplyWhenTheMessageEndsOnSizeMethod

	| aClass aMethodNode  collectionSizeRule |
	collectionSizeRule _ RuleCollectionSize new.
	aClass _ self createClassNamed: #TemporalClass.
	
	aMethodNode _ coopMethodFactory compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' ^ col size '.
	
	self deny: (collectionSizeRule check: aMethodNode) .! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/11/2019 18:51:08'!
testRuleCollectionSizeDoesNotApplyWhenZeroIsOnInstanceVariableNode

	| aClass aMethodNode  collectionSizeRule |
	collectionSizeRule _ RuleCollectionSize new.
	aClass _ self createClassNamed: #TemporalClass.
	aClass addInstVarName: 'zero'.
	
	aMethodNode _ coopMethodFactory compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' ^ col size == zero '.
	
	self deny: (collectionSizeRule check: aMethodNode) .! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/11/2019 18:49:33'!
testRuleCollectionSizeDoesNotApplyWhenZeroIsOnTemporaryVariableNode

	| aClass aMethodNode  collectionSizeRule |
	collectionSizeRule _ RuleCollectionSize new.
	aClass _ self createClassNamed: #TemporalClass.
	
	aMethodNode _ coopMethodFactory compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' |zero| zero := 0. ^ col size == zero '.
	
	self deny: (collectionSizeRule check: aMethodNode) .! !

!RuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/13/2019 18:11:49'!
testRuleCollectionSizeApplyInAMethodNodeWithEqualMessageCase

	| aClass aMethodNode  collectionSizeRule |
	collectionSizeRule _ RuleCollectionSize new.
	aClass _ self createClassNamed: #TemporalClass.
	aMethodNode _ coopMethodFactory compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' col size = 0 '.
	
	self assert: (collectionSizeRule check: aMethodNode) .! !

!RuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/11/2019 18:41:12'!
testRuleCollectionSizeApplyInAMethodNodeWithInvertedCaseOfStandardRule

	| aClass aMethodNode  collectionSizeRule |
	collectionSizeRule _ RuleCollectionSize new.
	aClass _ self createClassNamed: #TemporalClass.
	aMethodNode _ coopMethodFactory compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' 0 == col size '.
	
	self assert: (collectionSizeRule check: aMethodNode) .! !

!RuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/13/2019 18:19:24'!
testRuleCollectionSizeApplyInAMethodNodeWithInvertedEqualMessageCase

	| aClass aMethodNode  collectionSizeRule |
	collectionSizeRule _ RuleCollectionSize new.
	aClass _ self createClassNamed: #TemporalClass.
	aMethodNode _ coopMethodFactory compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' 0 = col size '.
	
	self assert: (collectionSizeRule check: aMethodNode) .! !

!RuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/11/2019 18:41:12'!
testRuleCollectionSizeApplyInAMethodNodeWithStandardCase

	| aClass aMethodNode  collectionSizeRule |
	collectionSizeRule _ RuleCollectionSize new.
	aClass _ self createClassNamed: #TemporalClass.
	aMethodNode _ coopMethodFactory compileAndReturnIn: aClass aSelector: #colaboration withSourceCode: ' col size == 0 '.
	
	self assert: (collectionSizeRule check: aMethodNode) .! !

!RuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/13/2019 18:27:00'!
testRuleCollectionSizeApplyInAMethodNodeWithStandardCaseButAfterAReferenceNode

	| aClass aMethodNode  collectionSizeRule |
	collectionSizeRule _ RuleCollectionSize new.
	aClass _ self createClassNamed: #TemporalClass.
	aMethodNode _ coopMethodFactory compileAndReturnIn: aClass aSelector: #colaboration 
		withSourceCode: ' |collectionSize| collectionSize := col size.  ^ col size == 0 '.
	
	self assert: (collectionSizeRule check: aMethodNode) .! !

!RuleCollectionSizeTest methodsFor: 'setup/teardown' stamp: 'MEG 9/11/2019 18:37:03'!
setUp

	super setUp.

	coopMethodFactory _ COOPMethodFactory new.! !

!DemoTest methodsFor: 'apply' stamp: 'MEG 9/13/2019 19:29:12'!
testCollectionSizeIsEqualToZeroOpensAPopUpOnAccept

	| collection |
	collection _ OrderedCollection new.
	
	self assert: collection size = 0.
	! !

!DemoTest methodsFor: 'apply' stamp: 'MEG 9/13/2019 19:36:31'!
testCollectionSizeIsIdenticalToZeroOpensAPopUpOnAccept

	| collection |
	collection _ OrderedCollection new.
	
	self assert: collection size == 0.
	
	! !

!DemoTest methodsFor: 'apply' stamp: 'MEG 9/13/2019 19:23:10'!
testZeroIsEqualToCollectionSizeOpensAPopUpOnAccept

	| collection |
	collection _ OrderedCollection new.
	
	self assert: 0 = collection size.
	! !

!DemoTest methodsFor: 'apply' stamp: 'MEG 9/13/2019 19:34:04'!
testZeroIsIdenticalToCollectionSizeOpensAPopUpOnAccept

	| collection |
	collection _ OrderedCollection new.
	
	self assert: 0 == collection size.
	
	! !

!DemoTest methodsFor: 'not-apply' stamp: 'MEG 9/13/2019 19:27:41'!
testCollectionIsEmptyDoesNotOpenAPopUp

	| collection |
	collection _ OrderedCollection new.
	
	self assert: collection isEmpty.! !

!COOP methodsFor: 'testing' stamp: 'GET 9/8/2019 15:03:11'!
searchMessageToCollectionsOn: aStatement

	| collectionSendedMessageRule |
	collectionSendedMessageRule _ CollectionSendedMessageCheck new with:aStatement.
	^ collectionSendedMessageRule analyze.! !

!COOP methodsFor: 'testing' stamp: 'GET 9/8/2019 12:18:16'!
wasSendedToCollection: aMethodNode

	^  aMethodNode body statements anySatisfy: [:statement | self searchMessageToCollectionsOn: statement ] ! !

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

!COOPHelper methodsFor: 'error' stamp: 'GET 9/8/2019 12:50:43'!
messageNotFound: aSelector in: aClass

	self error: 'the message with ', aSelector , 'was not found in ', aClass className .
	! !

!COOPHelper methodsFor: 'action' stamp: 'GET 9/8/2019 12:50:55'!
search: aSelectorName in: aClass

	^ aClass compiledMethodAt: aSelectorName ifPresent: [:compiledMethod | ^ compiledMethod ] ifAbsent: [ self messageNotFound: aSelectorName in: aClass ].
 ! !

!COOPHelper methodsFor: 'testing' stamp: 'GET 9/8/2019 18:59:15'!
exist: selectors in: aClass

	^ selectors notEmpty and: [ aClass methodDict keys includesAnyOf:  selectors ].	! !

!CollectionSendedMessageCheck methodsFor: 'initialize' stamp: 'GET 9/8/2019 19:35:31'!
initialize
	selectors _ Set new.
	allNodes _  Set new.
! !

!CollectionSendedMessageCheck methodsFor: 'initialize' stamp: 'GET 9/8/2019 13:04:31'!
with: aStatement

statementNode  _ aStatement .! !

!CollectionSendedMessageCheck methodsFor: 'testing' stamp: 'GET 9/8/2019 19:39:48'!
analyze
	| parser |
	parser _ ParseNodeEnumerator ofBlock: [:node | self addMessageNode: node].
	statementNode accept: parser.

	self findCollectionSelectors.

	 ^ COOPHelper new exist: selectors in: Collection .! !

!CollectionSendedMessageCheck methodsFor: 'accessing' stamp: 'GET 9/8/2019 19:39:59'!
findCollectionSelectors

	| messageParser |
	messageParser _ ParseNodeEnumerator ofBlock: [:node | selectors add: node selector  key] select: [:node | node isMessageNode].
	allNodes do: [:node | node accept: messageParser ].
	! !

!CollectionSendedMessageCheck methodsFor: 'action' stamp: 'GET 9/8/2019 18:29:12'!
addMessageNode: aNode

	allNodes add: aNode! !

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

!COOPMethodFactory methodsFor: 'action' stamp: 'GET 9/8/2019 19:34:09'!
compileAndReturnIn: aClass aSelector: aSelectorName withSourceCode: aSourceCode
	
	aClass compile: aSelectorName , aSourceCode.
	
	^ (aClass methodDictionary at: aSelectorName) methodNode.! !

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
