'From Cuis 5.0 [latest update: #3839] on 13 September 2019 at 7:37:31 pm'!


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
