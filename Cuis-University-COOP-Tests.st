!classDefinition: #COOPMethodFactoryTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #COOPMethodFactoryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

!COOPMethodFactoryTest methodsFor: 'compiled-method-test' stamp: 'MEG 9/22/2019 23:49:16'!
testCOOPMethodFactoryCompilesNewMethodNode

	| methodFactory aMethodNode |

	methodFactory _ COOPMethodFactory new.
	
	aMethodNode _ methodFactory compileAndReturnMethod: #temporal withSourceCode: '^ 1.'.
	
	self assert: aMethodNode class equals: MethodNode.
	self assert: aMethodNode selector equals: #temporal.! !


!classDefinition: #COOPTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #COOPTest
	instanceVariableNames: 'coop aRule2 aRule notifier'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

!COOPTest methodsFor: 'coop-notification' stamp: 'GET 9/30/2019 22:02:56'!
searchMethodNode: selector

	^ RuleCollectionSizeTest  new searchMethodNode: selector! !

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


!COOPTest methodsFor: 'setUp/tearDown' stamp: 'GET 10/1/2019 00:13:04'!
setUp

	aRule _ RuleCollectionSize new.
	notifier _ NotifierForTesting new.
	coop _ COOP withRules: {aRule} andPerformer: notifier .
	notifier watch: coop.	

! !


!classDefinition: #DemoTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #DemoTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

!DemoTest methodsFor: 'apply' stamp: 'MEG 10/10/2019 00:04:17'!
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


!DemoTest methodsFor: 'not-apply' stamp: 'GET 10/3/2019 19:20:51'!
testCollectionIsEmptyDoesNotOpenAPopUp

	| collection |
	collection _ OrderedCollection new.
	
	self assert: collection isEmpty.! !


!classDefinition: #RuleColaborationChainTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #RuleColaborationChainTest
	instanceVariableNames: 'methodFactory rule'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

!RuleColaborationChainTest methodsFor: 'rule-do-not-apply' stamp: 'GET 10/11/2019 23:10:54'!
testDontApplyWhenTheMethodNodeHasTwoMessageColaborations
		
	| methodNode |
	
	methodNode  _ self searchMethodNode: #messageNodeWithTwoChainedColaborations .
	
	self deny: (rule check: methodNode ).! !

!RuleColaborationChainTest methodsFor: 'rule-do-not-apply' stamp: 'GET 10/11/2019 23:09:27'!
testRuleDoNotApplyOnCascadeMessages
		
	| methodNode |
	methodNode  _ self searchMethodNode: #methodWithThreeCascadeChainedColaborations .
	
	self deny: (rule check: methodNode ).! !

!RuleColaborationChainTest methodsFor: 'rule-do-not-apply' stamp: 'GET 10/9/2019 22:53:24'!
testTheAmountOfChainedColaborationsIsZeroWhenIsNotAMessageNode
		
	| aNode |
	aNode  _ VariableNode named: 'self'.
	
	self assert: (rule amountOfColaborations: aNode ) equals: 0.! !


!RuleColaborationChainTest methodsFor: 'rule-apply' stamp: 'GET 10/11/2019 23:09:20'!
testApplyWhenTheMethodHasThreeChainedColaborations
		
	| methodNode |
	methodNode  _ self searchMethodNode: #methodWithThreeChainedColaborations .
	
	self assert: (rule check: methodNode ).! !

!RuleColaborationChainTest methodsFor: 'rule-apply' stamp: 'GET 10/11/2019 23:10:47'!
testRuleCountTheMessageColaborationsInNode
		
	| messageNode |
	messageNode  _ self messageNodeWithThreeChainedColaborations.
	
	self assert: (rule amountOfColaborations: messageNode ) equals: 3.! !


!RuleColaborationChainTest methodsFor: 'setup/teardown' stamp: 'GET 10/11/2019 23:11:30'!
setUp

	methodFactory _ COOPMethodFactory new.
	rule _ RuleColaborationChain new.! !


!RuleColaborationChainTest methodsFor: 'method-for-testing' stamp: 'GET 10/6/2019 20:46:38'!
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

!RuleColaborationChainTest methodsFor: 'method-for-testing' stamp: 'GET 10/11/2019 23:10:39'!
messageNodeWithOneColaboration

	| selfReceiver |
	selfReceiver _ VariableNode named:'self'.
	
	^self message: #col1 to: selfReceiver.! !

!RuleColaborationChainTest methodsFor: 'method-for-testing' stamp: 'GET 10/11/2019 23:10:54'!
messageNodeWithThreeChainedColaborations

	^ self message:#col3 to: self messageNodeWithTwoChainedColaborations .! !

!RuleColaborationChainTest methodsFor: 'method-for-testing' stamp: 'GET 10/11/2019 23:10:54'!
messageNodeWithTwoChainedColaborations

	^ self message:#col2 to: self messageNodeWithOneColaboration! !

!RuleColaborationChainTest methodsFor: 'method-for-testing' stamp: 'GET 10/11/2019 23:09:27'!
methodWithThreeCascadeChainedColaborations

	^ self col1; col2; col3 ! !

!RuleColaborationChainTest methodsFor: 'method-for-testing' stamp: 'GET 10/11/2019 23:09:20'!
methodWithThreeChainedColaborations

	^ self col1 col2 col3.! !

!RuleColaborationChainTest methodsFor: 'method-for-testing' stamp: 'GET 10/11/2019 23:09:10'!
methodWithTwoChainedColaborations

	^ self col1 col2! !

!RuleColaborationChainTest methodsFor: 'method-for-testing' stamp: 'GET 10/6/2019 19:43:12'!
searchMethodNode: selectorName

	^ (self class methodDictionary at: selectorName) methodNode! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'RuleColaborationChainTest class' category: #'Cuis-University-COOP-Tests'!
RuleColaborationChainTest class
	instanceVariableNames: 'coopHelper'!


!classDefinition: #RuleCollectionSizeTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #RuleCollectionSizeTest
	instanceVariableNames: 'methodFactory rule'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/29/2019 18:46:49'!
testRuleCollectionSizeDoesNotApplyInAMethodNodeWithIdentityCaseInAComment

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #identityCaseInAComment.
	
	self deny: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/29/2019 18:47:03'!
testRuleCollectionSizeDoesNotApplyInAMethodNodeWithIdentityCaseUnordered

	| aMethodNode |

	aMethodNode _ self searchMethodNode: #unorderedIdentityCase.
	
	self deny: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/29/2019 18:47:19'!
testRuleCollectionSizeDoesNotApplyWhenAnyCaseAreNotInTheSameMessage

	| aMethodNode |

	aMethodNode _ self searchMethodNode: #caseNotInTheSameMessage.
	
	self deny: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/29/2019 18:51:11'!
testRuleCollectionSizeDoesNotApplyWhenCaseIsNotThere

	| aMethodNode |

	aMethodNode _ self searchMethodNode: #noErrorCase.
	
	self deny: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-not-apply' stamp: 'MEG 9/29/2019 18:47:39'!
testRuleCollectionSizeDoesNotApplyWhenTheCaseHidesOnTemporaryVariableNode

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #caseHiddenOnTemporaryVariable.
	
	self deny: (rule check: aMethodNode)! !


!RuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'GET 10/12/2019 00:42:23'!
test001

	| aMethodNode messageNode |
	
	aMethodNode _ self searchMethodNode: #equalCase.	messageNode _ (aMethodNode body statements at: 2) expr .
	
	self assert: (rule inspectMessage: messageNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'GET 10/12/2019 01:02:29'!
test002

	| aMethodNode messageNode |
	
	aMethodNode _ self searchMethodNode: #identityCase.	messageNode _ (aMethodNode body statements at: 2) expr .
	
	self assert: (rule inspectMessage: messageNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/29/2019 18:44:08'!
testRuleCollectionSizeApplyInAMethodNodeWithEqualCase

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #equalCase.
	
	self assert: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/29/2019 18:45:44'!
testRuleCollectionSizeApplyInAMethodNodeWithIdentityCase

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #identityCase.
	
	self assert: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/29/2019 18:45:58'!
testRuleCollectionSizeApplyInAMethodNodeWithInvertedEqualCase

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #invertedEqualCase.
	
	self assert: (rule check: aMethodNode)! !

!RuleCollectionSizeTest methodsFor: 'rule-apply' stamp: 'MEG 9/29/2019 18:46:16'!
testRuleCollectionSizeApplyInAMethodNodeWithInvertedIdentityCase

	| aMethodNode |
	
	aMethodNode _ self searchMethodNode: #invertedIdentityCase.
	
	self assert: (rule check: aMethodNode)! !


!RuleCollectionSizeTest methodsFor: 'setup/teardown' stamp: 'MEG 9/22/2019 23:44:29'!
setUp

	methodFactory _ COOPMethodFactory new.
	
	rule _ RuleCollectionSize new.! !


!RuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/28/2019 20:35:54'!
caseHiddenOnTemporaryVariable

	| col zero |

	col _ OrderedCollection new.

	zero _ 0.

	^ col size = zero! !

!RuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/28/2019 20:33:38'!
caseNotInTheSameMessage

	| col colSize |

	col _ OrderedCollection new.

	colSize _ col size.

	^ colSize ~= 0 and: [ (colSize + 1) > 2 ].! !

!RuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/28/2019 19:39:55'!
equalCase

	| col |

	col _ OrderedCollection new.

	^ col size = 0! !

!RuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/28/2019 19:55:12'!
identityCase

	| col |

	col _ OrderedCollection new.

	^ col size == 0! !

!RuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/28/2019 19:59:57'!
identityCaseInAComment

	| col |

	col _ OrderedCollection new.

	" col size == 0 "

	^ col isEmpty ! !

!RuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/28/2019 19:55:41'!
invertedEqualCase

	| col |

	col _ OrderedCollection new.

	^ 0 = col size! !

!RuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/28/2019 19:48:59'!
invertedIdentityCase

	| col |

	col _ OrderedCollection new.

	^ 0 == col size! !

!RuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/29/2019 18:50:48'!
noErrorCase

	| col |

	col _ OrderedCollection new.

	^ col isEmpty! !

!RuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/29/2019 18:44:45'!
searchMethodNode: selectorName

	^ (self class methodDictionary at: selectorName) methodNode! !

!RuleCollectionSizeTest methodsFor: 'method-for-testing' stamp: 'MEG 9/28/2019 20:37:50'!
unorderedIdentityCase

	| col colSize |

	col _ OrderedCollection new.

	colSize _ col size.

	^ 0 == 1. ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'RuleCollectionSizeTest class' category: #'Cuis-University-COOP-Tests'!
RuleCollectionSizeTest class
	instanceVariableNames: 'coopHelper'!


!classDefinition: #RuleListTest category: #'Cuis-University-COOP-Tests'!
TestCase subclass: #RuleListTest
	instanceVariableNames: 'ruleList aRule'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

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


!RuleListTest methodsFor: 'setUp/tearDown' stamp: 'GET 9/29/2019 11:58:25'!
setUp
	ruleList _ RuleList new .
	aRule  _ RuleCollectionSize new.! !


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

!RuleListTest methodsFor: 'with-rules' stamp: 'GET 10/3/2019 19:36:44'!
testRuleListOnlyContainsOneRuleByRuleClass

	| firstAddedRule secondAddedRule |
	firstAddedRule _ RuleCollectionSize new.
	secondAddedRule _ RuleCollectionSize new.	
	
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


!classDefinition: #COOPMethodFactory category: #'Cuis-University-COOP-Tests'!
LiveTypingTestFactory subclass: #COOPMethodFactory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

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


!classDefinition: #NotifierForTesting category: #'Cuis-University-COOP-Tests'!
Object subclass: #NotifierForTesting
	instanceVariableNames: 'object hasNotified selector lastParameterSended'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

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

	hasNotified _ true.	lastParameterSended _ aParameter! !

!NotifierForTesting methodsFor: 'events-old protocol' stamp: 'GET 9/30/2019 22:20:24'!
update: aParameter
	self saveNotification: aParameter .
	
	^ super update: aParameter .! !


!NotifierForTesting methodsFor: 'mock' stamp: 'MEG 10/10/2019 00:00:07'!
cleanBeforeRunning: aMethodNode 
	
	^ self "Nothing to do"! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NotifierForTesting class' category: #'Cuis-University-COOP-Tests'!
NotifierForTesting class
	instanceVariableNames: ''!

!NotifierForTesting class methodsFor: 'class initialization' stamp: 'GET 9/29/2019 00:01:06'!
watch: anObject
	^ self new watch: anObject.! !
