SELECT TOP 1000 * FROM [Rep].[dbo].[CaptureLot]
WHERE 1 = 1
AND LotId = 9334


SELECT TOP 1000 * FROM AllocDetailed__A_TER_2022_01_01 
WHERE 1 = 1
--AND sheet_name = 0010
AND lot_id = 9335
--AND sheet_name = 0010
--AND row_name = 1114
--ORDER BY value

SELECT * FROM [Rep].[dbo].[ReportCaptureLot]
WHERE 1 = 1
AND LotId = 2775
--AND ReportId = 4535
--AND LotId = 11646
ORDER BY LastModified DESC
--ModifiedBy
--ORDER BY LotId ASC


SELECT * FROM [Rep].[dbo].[CaptureLot]
WHERE 1 = 1
AND LotDescription LIKE '%A%'
ORDER BY ReportingDate ASC

sp_helptext
