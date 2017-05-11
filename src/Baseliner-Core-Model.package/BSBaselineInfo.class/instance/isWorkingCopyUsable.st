testing
isWorkingCopyUsable
	^ self workingCopy isNotNil and: [ self workingCopy ancestors isNotEmpty ]