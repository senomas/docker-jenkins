build:
	docker build -t senomas/jenkins .

run:
	docker run --name jenkins -d -p 8040:8080 -p 50000:50000 senomas/jenkins

clean:
	docker rm -f jenkins
