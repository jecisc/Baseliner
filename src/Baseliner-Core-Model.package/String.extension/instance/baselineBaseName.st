*Baseliner-Core-Model
baselineBaseName
	"Return the baseName for this baseline class name."
	
	^ (self indexOfSubCollection: 'BaselineOf') = 0
		ifTrue: [ self ]
		ifFalse: [ self copyFrom: ('BaselineOf' size + 1) to: self size]