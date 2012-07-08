private
checkForStart
	parser isStartDocument ifTrue: 
		[ parser consumeStartDocument.
		SixxConstants rootTagNames do: 
			[ :tagName | 
			(parser is: tagName) ifTrue: 
				[ self checkSixxElement.
				parser next ] ] ]