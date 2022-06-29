

```
docker build -t liquidsoap -f Dockerfile .

#docker run --name="ls" -itd liquidsoap

docker run --name="ls" -itd --env LIQUIDSOAP_USER=envivo --env LIQUIDSOAP_PASS=envivo --env LIQUIDSOAP_HOST="10.0.0.122" --env LIQUIDSOAP_MOUNT="/envivo.ogg" liquidsoap


```
