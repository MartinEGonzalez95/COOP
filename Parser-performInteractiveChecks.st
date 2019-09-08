'From Cuis 5.0 [latest update: #3839] on 8 September 2019 at 7:28:59 pm'!

!Parser methodsFor: '*Cuis-University-Model' stamp: 'MEG 9/8/2019 14:04:54'!
performInteractiveChecks: aMethodNode

	self
		warnIfPossibilityOfSelfRecursion: aMethodNode;
		declareUndeclaredTemps: aMethodNode;
		performCOOPChecksFor: aMethodNode;
		removeUnusedTemps! !
