*sixx-inout-common-private
sixxNoRefOn: aStream name: nameString indent: level context: dictionary 
	"For non-sharable objects"
	self writeSixxTagOn: aStream id: nil name: nameString indent: level context: dictionary 