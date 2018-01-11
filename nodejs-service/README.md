# To build the nodejs-service image
docker build -t nodejs-service .

# To run this image and serve at port 8181
docker run -it -p 8181:8181 nodejs-service
