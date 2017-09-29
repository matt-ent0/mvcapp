FROM microsoft/aspnetcore
WORKDIR /app
COPY pub .
EXPOSE 8080
ENTRYPOINT ["dotnet", "mvcapp.dll"]