# upload-to-git-docker
Uploads code to github through a docker container


docker build -f Dockerfile -t test-git .
docker run -i --name test-git test-git
docker exec -ti test-git /bin/sh
