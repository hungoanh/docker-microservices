# docker-microservices

git clone ...             // Clone this repo using the SSH URI
cd docker-microservices
cd <sub-dir/microservice-name>
docker build -t users-service .
docker run -it -p 8181:8181 users-service
