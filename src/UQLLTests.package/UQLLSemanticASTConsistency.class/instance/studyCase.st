initialization
studyCase
	^ '
select instance
from blocks as instance
where instance.transactions.size > 3 
and instance.timestamp > date(''2016-01-01T10:00:00+02:00'')
and instance.timestamp < date(''2016-03-01T21:53:02+02:00'')
limit 10;
'