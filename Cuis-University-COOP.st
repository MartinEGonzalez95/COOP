!classDefinition: #COOP category: #'Cuis-University-COOP'!
Object subclass: #COOP
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!

!COOP methodsFor: 'testing' stamp: 'GET 9/8/2019 13:10:55'!
searchMessageToCollectionsOn: aStatement 
	
	| collectionSendedMessageRule|
	collectionSendedMessageRule _ CollectionSendedMessageCheck new with:aStatement.
	
	^ collectionSendedMessageRule analyze.! !

!COOP methodsFor: 'testing' stamp: 'GET 9/8/2019 12:18:16'!
wasSendedToCollection: aMethodNode 
	
	^  aMethodNode body statements anySatisfy: [:statement | self searchMessageToCollectionsOn: statement ] ! !




!classDefinition: #COOPHelper category: #'Cuis-University-COOP'!
Object subclass: #COOPHelper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!

!COOPHelper methodsFor: 'as yet unclassified' stamp: 'GET 9/8/2019 12:50:29'!
exist: selectors in: aClass 

	^ selectors isEmpty not and: [ aClass methodDict keys includesAnyOf:  selectors ].

	! !

!COOPHelper methodsFor: 'as yet unclassified' stamp: 'GET 9/8/2019 12:50:43'!
messageNotFound: aSelector in: aClass 

	self error: 'the message with ', aSelector , 'was not found in ', aClass className .
	! !

!COOPHelper methodsFor: 'as yet unclassified' stamp: 'GET 9/8/2019 12:50:55'!
search: aSelectorName in: aClass 

	^ aClass compiledMethodAt: aSelectorName ifPresent: [:compiledMethod | ^ compiledMethod ] ifAbsent: [ self messageNotFound: aSelectorName in: aClass ]. 
 ! !


!classDefinition: #CollectionSendedMessageCheck category: #'Cuis-University-COOP'!
Object subclass: #CollectionSendedMessageCheck
	instanceVariableNames: 'statementNode selectors'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!

!CollectionSendedMessageCheck methodsFor: 'initialize' stamp: 'GET 9/8/2019 13:48:00'!
initialize
selectors _ Set new.! !


!CollectionSendedMessageCheck methodsFor: 'testing' stamp: 'GET 9/8/2019 13:47:48'!
analyze
	
	| coopHelper |
	coopHelper _ COOPHelper  new . 

	selectors _ self findCollectionSelectors.
	
 ^ coopHelper exist: selectors in: Collection .! !


!CollectionSendedMessageCheck methodsFor: 'accessing' stamp: 'GET 9/8/2019 13:59:04'!
findCollectionSelectors
	|  parseNodes |

	parseNodes _ self parseNodesCheck.
	parseNodes do: [:parseNode| statementNode  accept: parseNode ].

	^ selectors .! !

!CollectionSendedMessageCheck methodsFor: 'accessing' stamp: 'GET 9/8/2019 14:01:01'!
parseNodesCheck

	| assignmentNode messageNode returnParser |
	returnParser _ ParseNodeEnumerator ofBlock: [:node | selectors add: node expr selector key] select: [:node | node isReturn and: [node expr isVariableNode not ] ]. 
	messageNode _ ParseNodeEnumerator ofBlock: [:node | selectors add: node selector key] select: [:node | node isMessageNode ]. 
	assignmentNode  _ ParseNodeEnumerator ofBlock: [:node | selectors add: node value selector key] select: [:node | node isAssignmentNode ]. 
	
	^ OrderedCollection with: returnParser with: messageNode with: assignmentNode.
	! !

!CollectionSendedMessageCheck methodsFor: 'accessing' stamp: 'GET 9/8/2019 13:04:31'!
with: aStatement

statementNode  _ aStatement .! !
