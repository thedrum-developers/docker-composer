# Supported tags and respective `Dockerfile` links
 - `0.1`, `latest` (*[0.1/Dockerfile](https://github.com/thedrum-developers/docker-composer/blob/master/0.1/Dockerfile)*)

# Usage
```
docker run -it --rm -u $( id -u $user ):$( id -g $user ) -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro -v ~/.composer:/composer -v ~/.ssh:/home/${USER}/.ssh -v ${PWD}:/app -w /app thedrum/composer update
```
