
## How to use

**Build Container**
```
docker build -t icecast -f Dockerfile .
```

**Run Container**
```
docker run --name="icecast2" -td --publish 8000:8000 --publish 8001:8001 --env ICECAST_ADMIN_PASSWORD=pass --env ICECAST_SOURCE_PASSWORD=pass --env ICECAST_ENVIVO_PASSWORD=pass icecast
```

## Available Environtment Variables 
(see "env" file)

```
ICECAST_SOURCE_PASSWORD="test"
ICECAST_ADMIN_PASSWORD="test"
ICECAST_ADMIN_USERNAME="test"
ICECAST_ADMIN_EMAIL="octavio.rossell@gmail.com"
ICECAST_LOCATION="Amalivac"
ICECAST_HOSTNAME="icecast.localdomain"
ICECAST_MAX_CLIENTS="55"
ICECAST_MAX_SOURCES="5"
ICECAST_ENVIVO_PASSWORD="test"
```

