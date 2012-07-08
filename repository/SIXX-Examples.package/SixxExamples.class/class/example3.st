examples
example3
	"SixxExamples example3"
	"Resolve circular and shared objects"
	
	| rootOrdered sharedDict subOrdered subArray xmlString obj |
	rootOrdered := OrderedCollection new.
	sharedDict := Dictionary new.
	sharedDict at: #hello put: 'Hello'.
	sharedDict at: #recurHello put: sharedDict.
	subOrdered := OrderedCollection new.
	subOrdered add: sharedDict.
	subOrdered add: Time now.
	subArray := Array new: 2.
	subArray at: 1 put: sharedDict.
	subArray at: 2 put: Date today.
	rootOrdered add: subOrdered; add: subArray.
	
	xmlString := rootOrdered sixxString.
	Transcript cr; show: '##This is sixx xml instance##'. 
	Transcript cr; show: xmlString.
	
	obj := Object readSixxFrom: xmlString.
	Transcript cr; show: '##Shared object comparison##'. 
	Transcript cr; show: obj first first = obj last first.
	obj inspect. 
	
	
	

