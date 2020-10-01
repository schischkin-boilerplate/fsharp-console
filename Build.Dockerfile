FROM mcr.microsoft.com/dotnet/sdk:5.0
ENV PROJECT_NAME="Schischkin"

WORKDIR /app
COPY build.entrypoint.sh /scripts/entrypoint.sh

ENTRYPOINT [ "/scripts/entrypoint.sh" ]