initialization
studyCase
	^ '(select instance
	from Numbers1to20 as instance )
	intersect
	(select instance
	from Numbers10to30 as instance );'