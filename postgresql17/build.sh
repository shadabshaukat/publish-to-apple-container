container system start
container build --tag postgresql17 --file Dockerfile .
container image list
container run -d --name postgresql17 postgresql17
container ls -a
container exec -it postgresql17 /bin/bash
