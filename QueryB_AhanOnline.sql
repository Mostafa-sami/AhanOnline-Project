
SELECT * INTO EmployeeChart
FROM (VALUES(1	,1	,'Ken'		,NULL		,NULL	,Null	),
			(2	,1	,'Hugo'		,NULL		,NULL	,Null	),
			(3	,4	,'James'	,'Carol'	,5		,'Ken'	),
			(4	,4	,'Mark'		,'Morgan'	,13		,'Hugo'	),
			(5	,3	,'Carol'	,'Alex'		,12		,'Ken'	),
			(6	,5	,'David'	,'Rose'		,21		,'Hugo'	),
			(7	,5	,'Michael'	,'Markos'	,11		,'Ken'	),
			(8	,3	,'Brad'		,'Alex'		,12		,'Ken'	),
			(9	,3	,'Rob'		,'Matt'		,15		,'Hugo'	),
			(10	,3	,'Dylan'	,'Alex'		,12		,'Ken'	),
			(11	,4	,'Markos'	,'Carol'	,5		,'Ken'	),
			(12	,2	,'Alex'		,'Ken'		,1		,'Ken'	),
			(13	,3	,'Morgan'	,'Matt'		,15		,'Hugo'	),
			(14	,4	,'Jennifer'	,'Morgan'	,13		,'Hugo'	),
			(15	,2	,'Matt'		,'Hugo'		,2		,'Hugo'	),
			(16	,4	,'Tom'		,'Brad'		,8		,'Ken'	),
			(17	,4	,'Oliver'	,'Dylan'	,10		,'Ken'	),
			(18	,4	,'Daniel'	,'Rob'		,9		,'Hugo'	),
			(19	,5	,'Amanda'	,'Markos'	,11		,'Ken'	),
			(20	,4  ,'Ana'		,'Dylan'	,10		,'Ken'	),
			(21	,4	,'Rose'		,'Rob'		,9		,'Hugo'	),
			(22	,4	,'Robert'	,'Rob'		,9		,'Hugo'	),
			(23	,4	,'Fill'		,'Morgan'	,13		,'Hugo'	),
			(24	,6	,'Antoan'	,'David'	,6		,'Hugo'	),
			(25	,5	,'Eddie'	,'Mark'		,4		,'Hugo'	)
			)
AS C(Id,Level,Name,Manager,ManagerID,Topmanager)

SELECT * FROM EmployeeChart order by level