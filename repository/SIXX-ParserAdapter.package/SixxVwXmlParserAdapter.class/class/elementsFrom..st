actions-parse
elementsFrom: sixxElement 
	^sixxElement elements select: [:each | each isText not]
