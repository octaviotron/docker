

```
docker build -t icecast -f Dockerfile .
docker run --name="icecast2" -itd --publish 8000:8000 --publish 8001:8001 --env ICECAST_ADMIN_PASSWORD=pass --env ICECAST_SOURCE_PASSWORD=pass --env ICECAST_ENVIVO_PASSWORD=pass icecast

```
