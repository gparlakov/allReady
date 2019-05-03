FROM mcr.microsoft.com/dotnet/core/sdk:2.2

WORKDIR /migrator

COPY . .

CMD ["dotnet", "ef", "database", "update", "--project", "./Web-App/AllReady/AllReady.csproj" ]


