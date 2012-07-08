positioning
skip: anInteger 
	anInteger > 0 
		ifTrue: [ self next: anInteger ]
		ifFalse: [ position := position + anInteger max: 0 ]