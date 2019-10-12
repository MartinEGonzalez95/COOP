!classDefinition: #COOP category: #'Cuis-University-COOP'!
Object subclass: #COOP
	instanceVariableNames: 'rules performer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!

!COOP methodsFor: 'action' stamp: 'GET 10/1/2019 00:15:25'!
activate: rule with:aMethodNode

	performer activate: rule with:aMethodNode
! !

!COOP methodsFor: 'action' stamp: 'GET 10/1/2019 00:15:06'!
performInteractiveChecksFor: aMethodNode

	^ (self rulesActivatedFor: aMethodNode ) do: [ :rule | self activate: rule with:aMethodNode ] ! !

!COOP methodsFor: 'action' stamp: 'GET 9/30/2019 21:37:58'!
rulesActivatedFor: aMethodNode

	^ rules select: [ :rule | rule check: aMethodNode]! !


!COOP methodsFor: 'initialization' stamp: 'MEG 9/13/2019 18:49:41'!
initialize

	rules _ Set new.
	
	rules add: RuleCollectionSize new.! !

!COOP methodsFor: 'initialization' stamp: 'GET 9/30/2019 23:58:34'!
withRules: aRules andPerformer: aPerformer

	rules _ aRules asSet.
	performer _ aPerformer.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'COOP class' category: #'Cuis-University-COOP'!
COOP class
	instanceVariableNames: ''!

!COOP class methodsFor: 'instance creation' stamp: 'GET 10/12/2019 00:10:18'!
createWithRulesAndPerformer
	
	^ self withRules: {RuleColaborationChain new} andPerformer: COOPPerformer new.! !

!COOP class methodsFor: 'instance creation' stamp: 'GET 9/30/2019 23:55:56'!
withRules: rules andPerformer: aPerformer 
	
	^ self new withRules: rules andPerformer: aPerformer ! !


!classDefinition: #COOPPerformer category: #'Cuis-University-COOP'!
Object subclass: #COOPPerformer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!

!COOPPerformer methodsFor: 'notification' stamp: 'GET 10/6/2019 19:29:47'!
activate: aRule with:aMethodNode

	COOPBrowser allInstancesDo: [:coopBrowser | coopBrowser addRule: aRule for:aMethodNode]! !


!COOPPerformer methodsFor: 'action' stamp: 'MEG 10/9/2019 23:52:19'!
cleanBeforeRunning: aMethodNode 
	
	COOPBrowser allInstancesDo: [ :coopBrowser | coopBrowser cleanBeforeRunning: aMethodNode ].! !


!classDefinition: #Rule category: #'Cuis-University-COOP'!
Object subclass: #Rule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!

!Rule methodsFor: 'testing' stamp: 'GET 10/11/2019 22:57:06'!
sameClassAs: aRule
	
	^ aRule class = self class.! !


!Rule methodsFor: 'printing' stamp: 'GET 10/11/2019 22:58:33'!
description
	self subclassResponsibility .! !

!Rule methodsFor: 'printing' stamp: 'GET 10/11/2019 22:58:37'!
title
	self subclassResponsibility .! !


!Rule methodsFor: 'inspect-node' stamp: 'GET 10/11/2019 22:57:48'!
check: aMethodNode 

	self subclassResponsibility .! !


!classDefinition: #RuleColaborationChain category: #'Cuis-University-COOP'!
Rule subclass: #RuleColaborationChain
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!

!RuleColaborationChain methodsFor: 'testing' stamp: 'GET 10/11/2019 22:50:34'!
applyConditionOn: aNode
	
	^ (self amountOfColaborations: aNode ) > 2! !

!RuleColaborationChain methodsFor: 'testing' stamp: 'GET 10/11/2019 22:35:52'!
canAddNode: aNode 
	
	^ aNode  isMessageNode and: [ aNode  isCascade not]! !

!RuleColaborationChain methodsFor: 'testing' stamp: 'GET 10/11/2019 22:41:45'!
onSelection: node add: collection

	(self canAddNode: node)  ifTrue: [ collection add: node ]! !

!RuleColaborationChain methodsFor: 'testing' stamp: 'GET 10/11/2019 22:41:45'!
selectMessageNodes: aMethodNode 
	
	| parse nodes |
	nodes _ OrderedCollection new.
	parse _ ParseNodeEnumerator ofBlock: [:node | self onSelection: node add: nodes].
	
	aMethodNode accept: parse .
	
	^ nodes .! !


!RuleColaborationChain methodsFor: 'printing' stamp: 'GET 10/9/2019 20:57:37'!
description
	
	^ RuleDescriptor new descriptionForChainedColaboration.! !

!RuleColaborationChain methodsFor: 'printing' stamp: 'GET 10/9/2019 20:58:57'!
title
	^ RuleDescriptor new titleForChainedColaborations .! !


!RuleColaborationChain methodsFor: 'count' stamp: 'GET 10/9/2019 20:53:22'!
amountOfColaborations: aNode 
	
	aNode isMessageNode ifFalse:[^ 0].
	^ (self amountOfColaborations: aNode receiver )+ 1 .! !


!RuleColaborationChain methodsFor: 'inspect-node' stamp: 'GET 10/11/2019 23:53:26'!
check: aMethodNode 
	
	aMethodNode nodesDo: [:node | 
		((self canAddNode: node) and: [ self applyConditionOn: node ]) ifTrue:[^ true]
		 ].
			
	^ false.! !


!classDefinition: #RuleCollectionSize category: #'Cuis-University-COOP'!
Rule subclass: #RuleCollectionSize
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!

!RuleCollectionSize methodsFor: 'testing' stamp: 'GET 10/12/2019 01:25:49'!
canApplyRule: aMessageNode 
	
	^ ((aMessageNode isReceiver: self sizeBlock ) and: [aMessageNode isArguments: self literalIsZero])
	 or: [ (aMessageNode isReceiver: self literalIsZero ) and: [aMessageNode isArguments: self sizeBlock ]] ! !

!RuleCollectionSize methodsFor: 'testing' stamp: 'GET 10/12/2019 00:22:07'!
canApplyRuleOn: messageNode
	
		
	^ messageNode key == #size 
	and: [ (messageNode key == #==) or: [ messageNode key == #= ]] 
	and:[messageNode key == 0 ]! !

!RuleCollectionSize methodsFor: 'testing' stamp: 'GET 10/12/2019 01:18:36'!
canInspect: aNode

	^  aNode isMessageNode ! !

!RuleCollectionSize methodsFor: 'testing' stamp: 'GET 10/12/2019 01:16:39'!
checkIfNodeHasRule2: statementNode 

	statementNode nodesDo: [: node | 
		((self canInspect: node) and: [ self inspectMessage: node  ] ) ifTrue: [^ true].
		].

	^ false.! !

!RuleCollectionSize methodsFor: 'testing' stamp: 'GET 10/12/2019 01:15:51'!
checkIfNodeHasRuleViejo: statementNode 

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

!RuleCollectionSize methodsFor: 'testing' stamp: 'GET 10/12/2019 01:23:10'!
inspectMessage: aMessageNode 
	 
	
	^ ((aMessageNode isMessageNamed: #=) or: [aMessageNode isMessageNamed: #==] ) and: [ self canApplyRule: aMessageNode ].  ! !

!RuleCollectionSize methodsFor: 'testing' stamp: 'GET 10/12/2019 01:25:19'!
literalIsZero
	
	^ [:argumentNode | argumentNode isConstantNumber  and:[argumentNode key = 0] ]! !

!RuleCollectionSize methodsFor: 'testing' stamp: 'GET 10/12/2019 01:12:22'!
sizeBlock
	
	^ [:receiver | receiver isMessageNamed: #size ]! !


!RuleCollectionSize methodsFor: 'printing' stamp: 'GET 9/29/2019 12:13:48'!
description
	^ RuleDescriptor new descriptionForColectionSize .! !

!RuleCollectionSize methodsFor: 'printing' stamp: 'GET 9/29/2019 12:02:44'!
title
	^ RuleDescriptor new titleForCollectionSize! !


!RuleCollectionSize methodsFor: 'inspect-node' stamp: 'GET 10/12/2019 01:16:02'!
check: aMethodNode 

	
	^ aMethodNode body statements anySatisfy: [:node | self checkIfNodeHasRule2: node ]! !
