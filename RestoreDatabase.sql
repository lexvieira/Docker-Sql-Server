
PRINT 'Restoring AdventureWorks2017....'
    RESTORE DATABASE AdventureWorks2017 
    FROM DISK='/var/opt/mssql/data/restore/AdventureWorks2017.bak' 
    WITH MOVE 'AdventureWorks2017' TO '/var/opt/mssql/data/AdventureWorks2017.MDF', 
    MOVE 'AdventureWorks2017_log' TO '/var/opt/mssql/data/AdventureWorks2017_log.ldf' 
    GO

PRINT 'Restoring WideWorldImporters-Full....'

   --FIRST | PRIMEIRO
   RESTORE FILELISTONLY FROM DISK = '/var/opt/mssql/data/restore/WideWorldImporters-Full.bak' WITH FILE = 1
   
   --SECOND | SEGUNDO   
   RESTORE DATABASE WideWorldImporters 
   FROM DISK = '/var/opt/mssql/data/restore/WideWorldImporters_Full.bak' 
   WITH MOVE 'WWI_Primary' TO '/var/opt/mssql/data/WideWorldImporters.mdf',
   MOVE 'WWI_UserData' TO '/var/opt/mssql/data/WideWorldImporters_userdata.ndf',
   MOVE 'WWI_Log' TO '/var/opt/mssql/data/WideWorldImporters.ldf',
   MOVE 'WWI_InMemory_Data_1' TO '/var/opt/mssql/data/WideWorldImporters_InMemory_Data_1'

    GO

PRINT 'Restoring WideWorldImportersDW_Full....'
 
   --FIRST | PRIMEIRO
   RESTORE FILELISTONLY FROM DISK = '/var/opt/mssql/data/restore/WideWorldImportersDW-Full.bak' WITH FILE = 1
  
   --SECOND | SEGUNDO 
   RESTORE DATABASE WideWorldImportersDW 
   FROM DISK = '/var/opt/mssql/data/restore/WideWorldImportersDW-Full.bak' 
   WITH MOVE 'WWI_Primary' TO '/var/opt/mssql/data/WideWorldImportersDW.mdf',
   MOVE 'WWI_UserData' TO '/var/opt/mssql/data/WideWorldImportersDW_userdata.ndf',
   MOVE 'WWI_Log' TO '/var/opt/mssql/data/WideWorldImportersDW.ldf',
   MOVE 'WWIDW_InMemory_Data_1' TO '/var/opt/mssql/data/WideWorldImportersDW_InMemory_Data_1'

