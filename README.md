This .Net Core 2.0 MVC app is running in a Docker container hosted in Azure as an App Service!

Overview:
- Github hosts the source code.
- DockerHub builds and hosts the docker image.
- Azure hosts the docker container.

Detail:
 - Docker is notified of change to source code in Github.
 - Dockerhub executes Dockerfile which
    - Builds and publishes the source code using the latest microsoft/aspnetcore-build image (linux).
    - Runs the dotnet executable using the latest microsoft/aspnetcore image (linux).
 - Kestrel web server listens on port 8080 which is exposed in the container.
 - Docker maps port 8080 to port 80.
 - Azure hosts the docker container

Instructions:

Github
- Clone repo https://github.com/mattingrampub/mvcapp.git
- Configure repo Settings > Integrations & Services > Add/enable Docker integration
Dockerhub
- Settings > Linked Github account
- Create > Automated Build > link to Github repo > create new Dockerhub repo
Azure
- Create resource group
- Create App Service
- Configure for container
    - az webapp deployment container config -n infinitedelivery -g infinitedelivery -e true
- Get webhook publish URL
Dockerhub
- Update DockerHub webhook with Azure publish URL
