*sixx-inout-common-private
basicSixxOn: aStream originator: originator name: nameString indent: level context: dictionary 
	| idStr |
	(dictionary includesKey: originator)
		ifTrue: [^self sixxRefOn: aStream id: (dictionary at: originator) name: nameString indent: level context: dictionary].

	idStr := self sixxReferenceIdInContext: dictionary.
	dictionary at: originator put: idStr.

	self writeSixxTagOn: aStream id: idStr name: nameString indent: level context: dictionary 