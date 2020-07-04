sleep 90s

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD master -i init.sql
