accessing
workingCopy
	"I check if there is a version of the baseline in memory"

	^ workingCopy
		ifNil: [ | pkg |
			pkg := MCPackage named: self baseline category asString.
			pkg hasWorkingCopy ifFalse: [ ^ nil ].
			workingCopy := pkg workingCopy ]