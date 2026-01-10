//Synapse create sql login

CREATE LOGIN SQLUser WITH PASSWORD = 'Some_password';
CREATE USER SQLUser FOR LOGIN SQLUser;

-- Connect to the user database(DW) and create a database user
CREATE USER SQLUser FOR LOGIN SQLUser;


-- AUTHORIZATION
-- Allow SQLUser to read data
EXEC sp_addrolemember 'db_datareader', 'SQLUser'; 
-- Allow SQLDWuser to write data
EXEC sp_addrolemember 'db_datawriter', 'SQLUser';
--Show that with login SQLDWLogin and the password you can connect to your DW.
