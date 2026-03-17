# SnapQuote Identity API - Pentesting Target

A containerized identity/account API for security testing. Build Python tools to discover if there are any vulnerabilities and to test their exploitability.

The containerized server represents an API server used to handle login and account management for a desktop application that provides it's own UI and handling of communication with the API.

## Running the Server

**Prerequisites:** Docker

### Option 1: Docker Build + Run

```bash
docker build -t snapquote-pentest .
docker run -it --rm -p 4000:4000 snapquote-pentest
```

The first build pulls the .NET runtime base image (~200MB). Subsequent builds use cache.

### Option 2: Docker Compose

```bash
docker-compose up
```

## API Endpoints

- **Base URL**: http://localhost:4000

## Database

The server uses a pre-populated database. No source code is included.
