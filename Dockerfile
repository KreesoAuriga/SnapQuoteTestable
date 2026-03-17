# Runtime-only image (~200MB), not SDK (~800MB)
FROM mcr.microsoft.com/dotnet/aspnet:5.0

WORKDIR /app

# Copy published application (no source code)
COPY app/ .

# Copy pre-seeded SQLite database
COPY LocalDatabase.db .

ENV ASPNETCORE_ENVIRONMENT=Development
ENV ASPNETCORE_URLS=http://0.0.0.0:4000

EXPOSE 4000

ENTRYPOINT ["dotnet", "SnapQuote.Identity.dll"]
