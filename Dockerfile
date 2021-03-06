FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env

#ADD PowerApps-Language-Tooling /PowerApps-Language-Tooling

RUN git clone https://github.com/microsoft/PowerApps-Language-Tooling.git

WORKDIR /PowerApps-Language-Tooling

#RUN ./build ci
RUN ./build rebuild

# Build runtime image
FROM mcr.microsoft.com/dotnet/core/sdk:3.1

COPY --from=build-env /PowerApps-Language-Tooling/bin/Debug .
#WORKDIR /PASopa

RUN /PASopa/PASopa

RUN mkdir /app

VOLUME /app

ENTRYPOINT ["/PASopa/PASopa"]
