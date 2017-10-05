This is a .Net Core 2.0 MVC app running in a Docker container hosted in Azure as an App Service!

Container details:
 - Docker builds and publishes the source code using the latest microsoft/aspnetcore-build image.
 - Docker then publishes the executable and runs it using the latest microsoft/aspnetcore image.
 - Kestrel listens on port 8080 which is exposed in the container.
 - Docker maps port 8080 to port 80.

The container image is hosted in DockerHub.
Azure has a webhook that allows DockerHub to publish the container to Azure automatically.