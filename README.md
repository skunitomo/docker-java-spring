# spring-boot-001

## docker

### run container

```sh
docker container run -it openjdk:14-jdk-alpine /bin/ash
```

### remove all containers

```sh
docker rm $(docker ps -aq)
```
