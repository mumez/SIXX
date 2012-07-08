private
adapterClassAt: adapterClassSymbol on: hintClassSymbol ifNone: aBlock
	^ (self environment at: hintClassSymbol ifAbsent: []) notNil
		ifTrue: [self environment at: adapterClassSymbol] ifFalse: [aBlock value]