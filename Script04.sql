CREATE USER "admin"@'localhost' IDENTIFIED BY 'Parola!';
GRANT SELECT,INSERT,DELETE,UPDATE ON nhsclinic.* to "admin"@"localhost";
CREATE USER "supervisor"@"localhost" identified by "nhsclinic";
GRANT ALL privileges on nhsclinic.* to "supervisor"@"localhost";