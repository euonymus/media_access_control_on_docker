# media_access_control_on_docker

# MP3, 画像ファイルのアクセスコントロールテスト

## Requirement

* Docker

## How to test

```
$ git clone [this]
$ cd [this_repo]
$ docker-compose build
$ docker-compose up -d
```

## Access

Goto
http://localhost:8888/


## Stop Docker image

```
$ docker-compose stop && docker-compose rm -f
```


## How to sign into docker image

```
$ docker exec -it docker-apache-sample_demo_apache_1 /bin/bash
```


## Directories on Docker Image

* /etc/apache2
* /var/www/html

