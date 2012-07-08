*sixx-inout-common-printing
shortHexString
	| current letters digits quo i |
	digits := '0123456789ABCDEF'.
	current := self.
	i := self digitLength * 8.
	letters := String new: i.
	[current < 16] whileFalse: 
		[quo := current quo: 16.
		letters at: i put: (digits at: (current - (quo * 16)) + 1).
		i := i - 1.
		current := quo].
	letters at: i put: (digits at: current + 1).
	^letters copyFrom: i to: letters size