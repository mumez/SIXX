examples
example1
	"SixxExamples example1"
	"Create a SIXX string from an object (like #storeString)"
	
	| dict array xmlString |
	dict := Dictionary new.
	dict at: #Smalltalk put: 'Best'.
	dict at: #Ruby put: 'Cool'.
	dict at: #Java put: 'Forget it'.
	array := Array new:3.
	array at: 1 put: 'Language Impressions'.
	array at: 2 put: dict.
	array at: 3 put: Date today.
	xmlString := array sixxString.
	Transcript cr; show: '##This is sixx xml instance##'. 
	Transcript cr; show: xmlString.
	
	^xmlString 