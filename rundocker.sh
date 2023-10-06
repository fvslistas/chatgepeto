docker rm -f python

docker run                \
-d --rm                   \
--name python             \
-p 8188:8188              \
-v "$PWD":/usr/src/app    \
fvslistas/python:3
#jupyter-lab  --allow-root --no-browser --port=8188 --ip=0.0.0.0

docker exec python jupyter server list
