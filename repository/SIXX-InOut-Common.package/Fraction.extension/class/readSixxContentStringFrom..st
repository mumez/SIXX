*sixx-inout-common-private
readSixxContentStringFrom: aStream
	| numerator denominator |
	aStream next. "skip $("
	numerator := aStream upTo: $/ .
	denominator := aStream upTo: $).

	^ self numerator: numerator asNumber denominator: denominator asNumber