FROM mcr.microsoft.com/mssql/server:2017-CU8-ubuntu

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Test12345

COPY entrypoint.sh init.sh init.sql .

CMD /bin/bash ./entrypoint.sh
