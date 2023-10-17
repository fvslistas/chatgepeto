docker volume create chatgepeto_volume

docker rm -f chatgepeto

docker run                         \
-d --rm                            \
--name chatgepeto                  \
--hostname chatgepeto              \
-p 8888:8888                       \
-v "$PWD"/notebook:/home/notebook  \
--runtime=nvidia --shm-size=1g -e NVIDIA_VISIBLE_DEVICES=0 \
fvslistas/chatgepeto:0

docker exec -it chatgepeto jupyter server list

