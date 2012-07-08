private
detectAdapterClassUsing: parserAndAdapterPairs 
	parserAndAdapterPairs
		do: [:eachPair | 
			| adapterClass | 
			adapterClass := self
						adapterClassAt: (eachPair at: 2)
						on: (eachPair at: 1)
						ifNone: [].
			adapterClass notNil
				ifTrue: [^ adapterClass]].
	^ nil