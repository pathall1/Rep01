select 'exec master..xp_cmdshell' 
		+ ' '''
		+ 'bcp'
		+ ' ' + TABLE_CATALOG + '.' + TABLE_SCHEMA + '.' + TABLE_NAME 
		+ ' out'
		+ ' c:\bcp\'
		+ TABLE_CATALOG + '.' + TABLE_SCHEMA + '.' + TABLE_NAME + '.bcp' 
		+ ' -N'
		+ ' -T'
		+ ' -S' + @@servername
		+ ''''
from INFORMATION_SCHEMA.TABLES
where TABLE_TYPE = 'BASE TABLE'

exec master..xp_cmdshell 'bcp tempdb.dbo.Extract out c:\bcp\tempdb.dbo.Extract.bcp -N -T –S<servername>'