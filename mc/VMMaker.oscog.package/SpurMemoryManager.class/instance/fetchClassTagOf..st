interpreter access
fetchClassTagOf: oop
	| tagBits |
	(tagBits := oop bitAnd: self tagMask) ~= 0 ifTrue:
		[^(tagBits bitAnd: 1) ~= 0 ifTrue: [1] ifFalse: [tagBits]].
	^self classIndexOf: oop