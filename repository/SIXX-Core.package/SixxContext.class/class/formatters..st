actions-formatter
formatters: formattersCollection

	| resolver |
	resolver := SixxFormatterResolver new.
	formattersCollection do: [:each |
		resolver formatters at: each targetClass put: each 
	].

	self protoFormatterResolver: resolver