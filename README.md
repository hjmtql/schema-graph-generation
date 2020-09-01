# Schema Graph Generation

```
docker-compose up -d
```

```
docker run -v $PWD/output:/output --net=host schemaspy/schemaspy:6.1.0 -t pgsql -host 127.0.0.1:5432 -db mydb -u myuser -p mypassword -s master
```
