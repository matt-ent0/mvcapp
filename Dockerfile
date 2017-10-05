FROM microsoft/aspnetcore
WORKDIR /app
COPY pub .
EXPOSE 80
EXPOSE 22
ENTRYPOINT ["dotnet", "mvcapp.dll"]