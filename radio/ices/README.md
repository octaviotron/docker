
## How to use

**Build Container**
```
docker build -t ices -f Dockerfile .
```

**Run Container**
```
docker run --name="ices" --entrypoint="bash" -itd --mount type=bind,source=/home/docker/persistent,destination=/mnt/music ices
```

## Available Environtment Variables 
(see "env" file)

```
#
```

