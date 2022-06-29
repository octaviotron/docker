

```
docker build -t icecast -f Dockerfile .
docker run --name="icecast2" -itd --publish 8000:8000 --env ICECAST_ADMIN_PASSWORD=pass --env ICECAST_SOURCE_PASSWORD=pass icecast

```
