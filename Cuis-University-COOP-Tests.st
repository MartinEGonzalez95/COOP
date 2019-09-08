!classDefinition: #COOPHelperTest category: #'Cuis-University-COOP-Tests'!
RefactoringTest subclass: #COOPHelperTest
	instanceVariableNames: 'coopHelper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

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


!classDefinition: #COOPMethodFactoryTest category: #'Cuis-University-COOP-Tests'!
RefactoringTest subclass: #COOPMethodFactoryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

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


!classDefinition: #COOPTest category: #'Cuis-University-COOP-Tests'!
RefactoringTest subclass: #COOPTest
	instanceVariableNames: 'coopHelper coop'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

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


!classDefinition: #COOPMethodFactory category: #'Cuis-University-COOP-Tests'!
Object subclass: #COOPMethodFactory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

!COOPMethodFactory methodsFor: 'action' stamp: 'GET 9/8/2019 19:34:09'!
compileAndReturnIn: aClass aSelector: aSelectorName withSourceCode: aSourceCode
	
	aClass compile: aSelectorName , aSourceCode.
	
	^ (aClass methodDictionary at: aSelectorName) methodNode.! !
