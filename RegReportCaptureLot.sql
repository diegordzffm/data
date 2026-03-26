SELECT TOP 1000 * FROM [RegRep].[dbo].[RegCaptureLot]
WHERE 1 = 1
AND LotId = 9334


SELECT TOP 1000 * FROM RegAllocDetailed_SCHEMA_A_TER_2022_01_01 
WHERE 1 = 1
--AND sheet_name = 0010
AND lot_id = 9335
--AND sheet_name = 0010
--AND row_name = 1114
--ORDER BY value

SELECT * FROM [RegRep].[dbo].[RegReportCaptureLot]
WHERE 1 = 1
AND LotId = 2775
--AND ReportId = 4535
--AND LotId = 11646
ORDER BY LastModified DESC
--ModifiedBy
--ORDER BY LotId ASC


SELECT * FROM [RegRep].[dbo].[RegCaptureLot]
WHERE 1 = 1
AND LotDescription LIKE '%SchemaA%'
ORDER BY ReportingDate ASC

sp_helptext