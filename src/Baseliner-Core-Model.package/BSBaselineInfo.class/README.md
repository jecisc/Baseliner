Description
--------------------

A BSBaselineInfo holds information on a specific baseline, i.e. on the BaselineOf class of a project.

My instances are kept in a BSRoot.

Public API and Key Messages
--------------------

- #
- #
- #

Examples
--------------------

	
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	baseline:		<aBaseline> 				Concrete subclasse of BaselineOf I manage
	branch: 			<aBranch>				Branch of the working copy
	root:			<aBSRoot>				A link to the root keeping all the baselines
	workingCopy:	<aMCWorkingCopy>		A version of the baseline in memory
