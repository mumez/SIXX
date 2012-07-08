override hooks
format: aBag on: aStream indent: level context: dictionary 
	| set |
	aStream cr.
	set := aBag asSet.
	set
		do: [:each | 
			(aBag occurrencesOf: each)
				sixxOn: aStream
				indent: level + 1
				context: dictionary.
			each
				sixxOn: aStream
				indent: level + 1
				context: dictionary].
	aStream tab: level