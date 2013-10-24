declare @sql varchar(8000)
select @sql = 'bcp master..sysobjects out c:\bcp\sysobjects.txt -c –t| -T -S' + @@servername
exec master..xp_cmdshell @sql

declare @sql varchar(8000)
select @sql = 'bcp master..sysobjects out c:\bcp\sysobjects.txt -c –t^ -T -S' + @@servername
exec master..xp_cmdshell @sql

declare @sql varchar(8000)
select @sql = 'bcp master..sysobjects out c:\bcp\sysobjects.txt -c –t|^ -T -S' + @@servername
exec master..xp_cmdshell @sql

select cr = ascii('
')
select lf = ascii(right('
',1))

declare @sql varchar(8000)
select @sql = 'bcp master..sysobjects out c:\bcp\sysobjects.txt -c -t, -r0x0D -T -S' + @@servername
exec master..xp_cmdshell @sql

declare @sql varchar(8000)
select @sql = 'bcp master..sysobjects out c:\bcp\sysobjects.txt -c -t"| ^" -r"0x0D0A" -T -S' + @@servername
exec master..xp_cmdshell @sql
