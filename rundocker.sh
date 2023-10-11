docker volume create chatgepeto_volume

docker rm -f python

docker run                         \
-d --rm                            \
--name python                      \
--hostname python                  \
-p 8888:8888                       \
-v "$PWD"/notebook:/home/notebook  \
fvslistas/chatgepeto:0

docker exec python jupyter server list

