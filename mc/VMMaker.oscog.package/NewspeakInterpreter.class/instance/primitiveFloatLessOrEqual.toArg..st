comparison float primitives
primitiveFloatLessOrEqual: rcvrOop toArg: argOop
	| rcvr arg |
	<var: #rcvr type: #double>
	<var: #arg type: #double>

	rcvr := self loadFloatOrIntFrom: rcvrOop.
	arg := self loadFloatOrIntFrom: argOop.
	^rcvr <= arg