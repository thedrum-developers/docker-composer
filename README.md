# Supported tags and respective `Dockerfile` links
 - 8.1 (*[8.1/Dockerfile](https://github.com/thedrum-developers/docker-composer/blob/master/8.1/Dockerfile)*)
 - 8.0 (*[8.0/Dockerfile](https://github.com/thedrum-developers/docker-composer/blob/master/8.0/Dockerfile)*)
 - 7.4 (*[7.4/Dockerfile](https://github.com/thedrum-developers/docker-composer/blob/master/7.4/Dockerfile)*)
 - 7.2, latest (*[7.2/Dockerfile](https://github.com/thedrum-developers/docker-composer/blob/master/7.2/Dockerfile)*)
 - 7.1 (*[7.1/Dockerfile](https://github.com/thedrum-developers/docker-composer/blob/master/7.1/Dockerfile)*)
 - 7.0 (*[7.0/Dockerfile](https://github.com/thedrum-developers/docker-composer/blob/master/7.0/Dockerfile)*)
 - 5.6 (*[5.6/Dockerfile](https://github.com/thedrum-developers/docker-composer/blob/master/5.6/Dockerfile)*)
 - 5.5 (*[5.5/Dockerfile](https://github.com/thedrum-developers/docker-composer/blob/master/5.5/Dockerfile)*)
 - 5.3 (*[5.3/Dockerfile](https://github.com/thedrum-developers/docker-composer/blob/master/5.3/Dockerfile)*)

# Usage
```
docker run -it --rm -u $( id -u $user ):$( id -g $user ) -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro -v ~/.composer:/composer -v ~/.ssh:/home/${USER}/.ssh -v ${PWD}:/app -w /app thedrum/composer update
```

#Arm 64 containers
Apple Silicon Dockerfile's have been created for PHP 7.4, 8 and 8.1
