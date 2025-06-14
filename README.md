# Publish to macOS Apple Container
A list of container build commands to build Apple containers

# Postgres 17.5 Apple Container

```bash
container run \
 --name postgres17 \
 -e POSTGRES_USER=postgres \
 -e POSTGRES_PASSWORD=mypasswd1234 \
 -e POSTGRES_DB=myappdb \
 -e POSTGRES_LISTEN_ADDRESS=0.0.0.0 \
 -d \
 arm64v8/postgres:17.5
```

```bash
container ls -a
ID          IMAGE                            OS     ARCH   STATE    ADDR
postgres17  docker.io/arm64v8/postgres:17.5  linux  arm64  running  192.168.64.2
```

```bash
container exec -it postgres17 /bin/bash
```

```bash
PGPASSWORD=mypasswd1234 psql -h 192.168.64.2 -p 5432 -U postgres -d myappdb
```

```bash
container exec -it postgres17 sh -c "PGPASSWORD=mypasswd1234 psql -h 192.168.64.2 -p 5432 -U postgres -d myappdb"
```

# Postgres 15.6 Apple Container

```bash
container run \
 --name postgres15 \
 -e POSTGRES_USER=postgres \
 -e POSTGRES_PASSWORD=mypasswd1234 \
 -e POSTGRES_DB=myappdb \
 -e POSTGRES_LISTEN_ADDRESS=0.0.0.0 \
 -d \
 arm64v8/postgres:15.6
 ```

```bash
container ls -a
```

```bash
ID          IMAGE                            OS     ARCH   STATE    ADDR
postgres15  docker.io/arm64v8/postgres:15.6  linux  arm64  running  192.168.64.3
```

```bash
container exec -it postgres15 /bin/bash
```

```bash
PGPASSWORD=mypasswd1234 psql -h 192.168.64.3 -p 5432 -U postgres -d myappdb
```

```bash
container exec -it postgres15 sh -c "PGPASSWORD=mypasswd1234 psql -h 192.168.64.3 -p 5432 -U postgres -d myappdb"
```
