!classDefinition: #COOPHelperTest category: #'Cuis-University-COOP-Tests'!
RefactoringTest subclass: #COOPHelperTest
	instanceVariableNames: 'coopHelper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

!COOPHelperTest methodsFor: 'as yet unclassified' stamp: 'GET 9/8/2019 13:23:59'!
setUp
super setUp.
	coopHelper _ COOPHelper new.
! !

!COOPHelperTest methodsFor: 'as yet unclassified' stamp: 'GET 9/8/2019 13:23:26'!
testCOOPHelperSearchAMessageInAClass

	| aCompiledMethodExpected  aCompiledMethod |
	coopHelper _ COOPHelper new.
	aCompiledMethodExpected _ (Collection methodsSelect: [:method | method selector == #size] ) at:1 .
	aCompiledMethod _ coopHelper search: #size in: Collection .
	
	self assert: aCompiledMethod  equals: aCompiledMethodExpected .! !

!COOPHelperTest methodsFor: 'as yet unclassified' stamp: 'GET 9/8/2019 13:23:51'!
testCOOPHelperSearchAMethodInAClassAndIsNotFoundThrowsAnError

	|  selector  |
	selector _ #iDontExist.
	
	self should: [coopHelper search: selector in: Collection] raise: Error - MessageNotUnderstood withMessageText: 'the message with ', selector , 'was not found in ', Collection className . 
! !


!classDefinition: #COOPMethodFactoryTest category: #'Cuis-University-COOP-Tests'!
RefactoringTest subclass: #COOPMethodFactoryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

!COOPMethodFactoryTest methodsFor: 'methods' stamp: 'GET 9/8/2019 12:49:45'!
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

!COOPTest methodsFor: 'method-detection' stamp: 'GET 9/8/2019 13:21:43'!
setUp 
	super setUp.
	coopHelper _ COOPMethodFactory new.
	coop _ COOP new.

! !

!COOPTest methodsFor: 'method-detection' stamp: 'GET 9/8/2019 13:21:57'!
testCOOPFindAMessageToACollectionOnAAssigment

	| aClass   aMethodNode |

	aClass _ self createClassNamed: #TemporalClass.
	aMethodNode _ coopHelper compileAndReturnIn: aClass aSelector: #colaboration  withSourceCode: ' |var| var := Set new isEmpty. ^ var'.
		
	self assert: (coop wasSendedToCollection: aMethodNode  ).! !

!COOPTest methodsFor: 'method-detection' stamp: 'GET 9/8/2019 13:22:02'!
testCOOPFindAMessageToACollectionOnAMessageNode

	| aClass   aMethodNode |
	aClass _ self createClassNamed: #TemporalClass.
	aMethodNode _ coopHelper compileAndReturnIn: aClass aSelector: #colaboration  withSourceCode: ' Set new isEmpty'.
		
	self assert: (coop wasSendedToCollection: aMethodNode  ).! !

!COOPTest methodsFor: 'method-detection' stamp: 'GET 9/8/2019 13:22:11'!
testCOOPFindAMessageToACollectionOnAReturnNode

	| aClass  aMethodNode |
	aClass _ self createClassNamed: #TemporalClass.
	aMethodNode _ coopHelper compileAndReturnIn: aClass aSelector: #colaboration  withSourceCode: ' ^ Set new isEmpty'.
		
	self assert: (coop wasSendedToCollection: aMethodNode  ).! !

!COOPTest methodsFor: 'method-detection' stamp: 'GET 9/8/2019 13:22:14'!
testCOOPFindAMessageToACollectionOnAnInstanceVariable

	| aClass  aMethodNode |
	aClass _ self createClassNamed: #TemporalClass.
	aClass addInstanceVarNamed: 'pepita' withValue: Set new.
	aMethodNode _ coopHelper compileAndReturnIn: aClass aSelector: #colaboration  withSourceCode: ' |var| var := pepita isEmpty. ^ var'.
		
	self assert: (coop wasSendedToCollection: aMethodNode  ).! !


!classDefinition: #COOPMethodFactory category: #'Cuis-University-COOP-Tests'!
Object subclass: #COOPMethodFactory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

!COOPMethodFactory methodsFor: 'action' stamp: 'MEG 9/7/2019 10:08:13'!
compileAndReturnIn: aClass aSelector: aSelectorName withSourceCode: aSourceCode

	aClass compile: aSelectorName , aSourceCode.

	^ (aClass methodDictionary at: aSelectorName) methodNode .! !



