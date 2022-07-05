

```
docker build -t liquidsoap -f Dockerfile .

docker run --name="ls" -td --env LIQUIDSOAP_USER=envivo --env LIQUIDSOAP_PASS=pass --env LIQUIDSOAP_HOST="10.0.0.122" --env LIQUIDSOAP_MOUNT="liquidsoap" liquidsoap


```
