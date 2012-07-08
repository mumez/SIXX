actions-parse
elementsFrom: sixxElement 
	^ sixxElement contents select: [:each | each isText not]