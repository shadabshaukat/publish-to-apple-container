# Publish to Apple Container
## A curated list of containers to build on Apple container

# [1] Oracle Database 23ai (23.7) Free ARM64 Apple Container

```bash
container image pull gvenzl/oracle-free:slim-arm64
```

```bash
container run --entrypoint=/bin/bash -it --rm --name oracle23ai --cpus 4 --memory 16g -e ORACLE_PASSWORD=free gvenzl/oracle-free:slim-arm64
```

```bash
7zzs x FREE.7z
```

```bash
./container-entrypoint.sh &
```

```bash
sqlplus "/as sysdba"
```

```bash
SQL> select open_mode,name from v$database;

OPEN_MODE	     NAME
-------------------- ---------
READ WRITE	     FREE

SQL> show pdbs;

    CON_ID CON_NAME			  OPEN MODE  RESTRICTED
---------- ------------------------------ ---------- ----------
	 2 PDB$SEED			  READ ONLY  NO
	 3 FREEPDB1			  READ WRITE NO
```


# [2] Postgres 17.5 ARM64 Apple Container

```bash
container run \
 --name postgres17 \
 -e POSTGRES_USER=postgres \
 -e POSTGRES_PASSWORD=mypasswd1234 \
 -e POSTGRES_DB=myappdb \
 -e POSTGRES_LISTEN_ADDRESS=0.0.0.0 \
 -d \
 arm64v8/postgres:17.5
```bash

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

# [3] Postgres 15.6 ARM64 Apple Container

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

# [4] MySQL 9.3 ARM64 Apple Container

```bash
container run \
 --name mysql9 \
 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
 -d \
 arm64v8/mysql
```

```bash
container exec -it mysql9 /bin/bash
```

```bash
mysql
```

```bash
mysql> show databases;

+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
```

```bash
mysql> select @@version;

+-----------+
| @@version |
+-----------+
| 9.3.0     |
+-----------+

mysql> \q
Bye

bash-5.1# exit
```

```bash
container exec -it mysql9 mysql
```
