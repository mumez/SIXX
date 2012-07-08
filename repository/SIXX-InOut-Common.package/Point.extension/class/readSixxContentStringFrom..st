*sixx-inout-common-instance creation
readSixxContentStringFrom: readStr
	|xString writeStr yString x y|
	writeStr := WriteStream on: String new.
	['0123456789./-()' includes: readStr peek] whileTrue: [writeStr nextPut: readStr next].
	xString := writeStr contents.
	readStr upTo: $@.
	writeStr := WriteStream on: String new.
	['0123456789./-()' includes: readStr peek] whileTrue: [writeStr nextPut: readStr next].
	yString := writeStr contents.
	x := (xString indexOf: $/) > 0
				ifTrue: [Fraction readSixxContentStringFrom: (ReadStream on: xString)]
				ifFalse: [
					(xString indexOf: $.) > 0
						ifTrue: [Float readSixxContentStringFrom: (ReadStream on: xString)]
						ifFalse: [Integer readSixxContentStringFrom: (ReadStream on: xString)]].
	y := (yString indexOf: $/) > 0
				ifTrue: [Fraction readSixxContentStringFrom: (ReadStream on: yString)]
				ifFalse: [
					(yString indexOf: $.) > 0
						ifTrue: [Float readSixxContentStringFrom: (ReadStream on: yString)]
						ifFalse: [Integer readSixxContentStringFrom: (ReadStream on: yString)]].
	^self x: x y: y