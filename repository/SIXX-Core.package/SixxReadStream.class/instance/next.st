reading
next
	^ self atEnd
		ifFalse: [position := position + 1. 
				self cachedObjects
						at: position
						ifAbsentPut: [self
								readSixxFromSixxElement: (sixxElements at: position)]]