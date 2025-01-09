docker stop ofh-ome || true

docker rm ofh-ome || true

docker run --restart unless-stopped --name ofh-ome -d -p 1935:1935 -p 9999:9999/udp -p 9000:9000 -p 3333:3333 -p 3334:3334 -p 3478:3478 -p 10000-10009:10000-10009/udp -v ${PWD}/origin_conf:/opt/ovenmediaengine/bin/origin_conf -v /etc/letsencrypt:/cert airensoft/ovenmediaengine:0.17.3
