accessing
current
	^ Instance
		ifNil: [ Instance := self basicNew
				initialize;
				yourself ]