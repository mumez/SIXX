*sixx-inout-squeak-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	| rawCol points index pointStream |
	rawCol := Array readFrom: (ReadStream on: (SixxXmlUtil characterDataFrom: sixxElement)).
	rawCol := rawCol reject: [:e | e == #@].
	points := (Array new: rawCol size //2).
	index := 1.
	pointStream := rawCol readStream.
	[pointStream atEnd] whileFalse: [
		points at: index put: (Point x: pointStream next asNumber y: pointStream next asNumber).
		index := index + 1.
	].
	
	^self withAll: points