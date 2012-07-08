instance creation
on: aMorph
	"You have to return the same memento instance on a Morph"
	^self instDict at: aMorph ifAbsentPut: [super on: aMorph]
	