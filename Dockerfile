FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY *.sln .
COPY /app/WebApplication5/*.csproj ./WebApplication5/
RUN dotnet restore

# copy everything else and build app
COPY ./app/WebApplication5  ./WebApplication5/
WORKDIR /app/WebApplication5
RUN dotnet publish -c Release -o out


FROM mcr.microsoft.com/dotnet/core/aspnet:2.2 AS runtime
WORKDIR /app
COPY --from=build /app/WebApplication5/out ./
ENTRYPOINT ["dotnet", "WebApplication5.dll"]