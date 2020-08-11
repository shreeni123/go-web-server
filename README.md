# go-web-server

## Solution
1) See Dockerfile in the repo
2) The Dockerfile builds the main.go from a base image golang:1.14 and uses the PORT environment variable for 8080
Run command `docker image build -t my-go-lang-app .`
3) Once image is built successfully run the container detatched and port forward 8080 from host (for production):
Run command `docker container run -p 8080:8080 -idt --rm --name my-golang-app-run my-golang-app-image`
4) check the container status by running `docker ps`
5) Endpoint is http://localhost:8080/health. In production environment replace localhost with the machine's external ip address
6) In case you want to stop the app, then destroy the container by `docker container stop my-golang-app-run` Container gets destroyed on stopping because of the --rm in step 3 above. You can restart the application following step 3 above.



## Instructions

Write a Dockerfile that compiles and then runs the web server in this repository:

Write it as if the container will be used in production:

-----

## Notes
This Go webserver compiles with Go version 1.12+.  

It exposes a web server on port 8080 and logs to STDOUT.  The port is configurable by setting the PORT environment variable.  

It only has one endpoint that returns status code 200: `/health`. All other requests will return 404: "404 page not found".  
