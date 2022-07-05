
## How to use

**Build Container**
```
docker build -t ices -f Dockerfile .
```

**Run Container**

Docker host must contain "source" path folder with .mp3 files to play

```
docker run --name="ices" -td --mount type=bind,source=/home/docker/persistent,destination=/mnt/music --env ICECAST_SERVER="10.0.0.122" --env ICECAST_PASSWORD="pass" ices

docker exec -ti ices bash
```

## Available Environtment Variables 
(see "env" file)

```
ICECAST_SERVER="10.0.0.122"
ICECAST_PASSWORD="pass"
```

