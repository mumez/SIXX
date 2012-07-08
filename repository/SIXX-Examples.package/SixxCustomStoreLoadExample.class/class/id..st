instance creation
id: anInteger
	| inst |
	inst := self new id: anInteger; cachedData: thisContext; yourself.
	self instances add: inst.
	^inst