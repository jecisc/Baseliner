accessing
baselines
	^ baselines ifNil: [ baselines := self baselinesClasses collect: [ :baseline | BSBaselineInfo baseline: baseline root: self ] ]