build:
	docker build -t senomas/jenkins .

create-network:
	docker network create docknet

run:
	docker run --name jenkins -d --net=docknet --net-alias=jenkins -p 8040:8080 -p 50000:50000 senomas/jenkins
	docker run --name selenium -d --net=docknet --net-alias=selenium --privileged vvoyer/docker-selenium-firefox-chrome

push:
	docker push senomas/jenkins

clean:
	docker rm -f jenkins
