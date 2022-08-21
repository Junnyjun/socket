CONTAINER_NAME=socket_container
IMAGE_NAME=socket_image
PORT=8088
BUILD_PATH=$1

sudo docker stop $CONTAINER_NAME
sudo docker rm $CONTAINER_NAME
sudo docker rmi $IMAGE_NAME

sudo docker build \
-t $IMAGE_NAME \
$BUILD_PATH

sudo docker run \
-p $PORT:8080 \
--name $CONTAINER_NAME \
--restart=always \
$IMAGE_NAME