accessing
workingCopy
	^ workingCopy
		ifNil: [ | pkg |
			pkg := MCPackage named: self packageName.
			pkg hasWorkingCopy
				ifFalse: [ ^ nil ].
			^ workingCopy := pkg workingCopy ]