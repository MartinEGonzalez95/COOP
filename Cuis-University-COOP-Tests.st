!classDefinition: #COOPHelperTest category: #'Cuis-University-COOP-Tests'!
RefactoringTest subclass: #COOPHelperTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

!COOPHelperTest methodsFor: 'method initialization' stamp: 'MEG 9/7/2019 10:16:52'!
testCOOPHelperCompilesNewMethodNode

	| aMethodNode aNewClass coopHelper |
	aNewClass _ self createClassNamed: #TemporaryCoopHelper.
	
	coopHelper _ COOPHelper new.
		
	aMethodNode _ coopHelper compileAndReturnIn: aNewClass aSelector: #temporal withSourceCode: '^ 1.'.
		
	aNewClass removeFromSystem.
	
	self assert: aMethodNode class equals: MethodNode.
	
	self assert: aMethodNode selector equals: #temporal.
		
	self assert: aMethodNode block returns.! !


!classDefinition: #COOPHelper category: #'Cuis-University-COOP-Tests'!
Object subclass: #COOPHelper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP-Tests'!

!COOPHelper methodsFor: 'action' stamp: 'MEG 9/7/2019 10:08:13'!
compileAndReturnIn: aClass aSelector: aSelectorName withSourceCode: aSourceCode

	aClass compile: aSelectorName , aSourceCode.

	^ (aClass methodDictionary at: aSelectorName) methodNode .! !
