CONTAINER_NAME=socket_container
IMAGE_NAME=socket_image
REGISTRY_HOST=144.24.87.198:5000
PORT=8088

NUMBER=$1

sudo docker stop $CONTAINER_NAME
sudo docker rm $CONTAINER_NAME
sudo docker rmi $IMAGE_NAME

sudo docker build \
--tag $REGISTRY_HOST/$IMAGE_NAME:"$NUMBER" \
.
