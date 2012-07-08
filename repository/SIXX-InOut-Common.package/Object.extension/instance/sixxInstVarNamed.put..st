*sixx-inout-common-initializing
sixxInstVarNamed: instVarName put: aValue 
	"override if you like"
	"can be used for changing shape"
	| index |
	index := self class allInstVarNames indexOf: instVarName asString.
	index = 0 ifTrue: [^self].
	self
		instVarAt: index
		put: aValue