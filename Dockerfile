FROM microsoft/aspnetcore-build AS builder
WORKDIR /source

COPY . .
RUN dotnet publish --output /pub/

FROM microsoft/aspnetcore
WORKDIR /app
COPY --from=builder /pub .

EXPOSE 8080
ENTRYPOINT [ "dotnet", "mvcapp.dll" ]