generate sources
generateEntire
	"Generate the interp, internal plugins and exports as well as the external plugins.
	 If this comes from a generator, log it for convenience."
	self configurationGeneratorNameOrNil ifNotNil:
		[:generator|
		 logger cr; nextPutAll: (generator selector copyReplaceAll: 'generate' with: '').
		 interpreterClassName ifNotNil:
			[logger space; nextPutAll: (CCodeGenerator shortMonticelloDescriptionForClass: (Smalltalk classNamed: interpreterClassName))].
		 logger cr; flush].
	self generateMainVM.
	self generateExternalPlugins