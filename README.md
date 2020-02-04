# Babelong's docker java 8. Base on Ubuntu 18.04
----
### Pull from Docker Hub
```
docker pull angelmoratilla/bedrock-client:latest
```

### Build from GitHub
```
docker build -t angelmoratilla/bedrock-client github.com/angelmoratilla/docker-bedrock-client
```

### Run image
```
docker run -it angelmoratilla/bedrock-client bash
```

### Use as base image
```Dockerfile
FROM angelmoratilla/bedrock-client:latest
```
