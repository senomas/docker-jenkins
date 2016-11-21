## DOCKER JENKINS

# Create Docker Network
```
docker network create docknet
```

# Create Jenkins
```
docker run --name jenkins -d --net=docknet \
   -v /docker/jenkins/data/:/var/jenkins_home \
   -e JAVA_OPTS=-Duser.timezone=Asia/Jakarta \
   -e VIRTUAL_HOST=jenkins.senomas.com -e VIRTUAL_PORT=8080 senomas/jenkins
```

# Create Selenium Server
Selenium Chrome
```
docker run --name selenium  --net=docknet -d -p 4444:4444 -v /dev/shm:/dev/shm selenium/standalone-chrome
```
Selenium Firefox
```
docker run --name selenium-firefox  --net=docknet -d -p 4444:4444 -v /dev/shm:/dev/shm selenium/standalone-firefox
```
