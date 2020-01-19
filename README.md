# spring-boot-001

## docker

### build image

```sh
docker build -t my-spring-boot:latest .  
```

### run container

```sh
docker container run -d -p 8080:8080 --name msb my-spring-boot:latest
```

```sh
docker container run -it openjdk:14-jdk-alpine /bin/ash
```

### remove all containers

```sh
docker rm $(docker ps -aq)
```

## jenv

### check installed java

```sh
/usr/libexec/java_home -V
```

### add java version to jenv

```sh
jenv add /Library/Java/JavaVirtualMachines/openjdk-13.0.2.jdk/Contents/Home
```
