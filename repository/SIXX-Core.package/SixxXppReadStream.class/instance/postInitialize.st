initialization
postInitialize
	parser := XMLPullParser parse: stream.
	contextDictionary := SixxContext forRead.
	self classResolver: SixxClassResolver new.
	cachedObjects := Dictionary new.
	position := 0