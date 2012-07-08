*sixx-inout-common-instance creation
readShortHexFrom: aStream 
	| digit value startPos |
	value := 0.
	startPos := aStream position.
	[aStream atEnd]
		whileFalse: 
			[digit := aStream next digitValue.
			(digit < 0 or: [digit >= 16])
				ifTrue: 
					[aStream skip: -1.
					aStream position = startPos ifTrue: [self error: 'At least one digit expected here'].
					^ value]
				ifFalse: [value := value * 16 + digit]].
	^ value