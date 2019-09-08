!classDefinition: #COOP category: #'Cuis-University-COOP'!
Object subclass: #COOP
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!

!COOP methodsFor: 'testing' stamp: 'GET 9/8/2019 15:03:11'!
searchMessageToCollectionsOn: aStatement 
	
	| collectionSendedMessageRule |
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


!classDefinition: #CollectionSendedMessageCheck category: #'Cuis-University-COOP'!
Object subclass: #CollectionSendedMessageCheck
	instanceVariableNames: 'statementNode selectors allNodes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-University-COOP'!

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
