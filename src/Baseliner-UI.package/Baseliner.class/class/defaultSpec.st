specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :column | 
			column add: #baselines
			"add: #toolbar height: self toolbarHeight;" ];
		yourself