# Elasticsearch with synonym files and minimal security in docker container

## Synonym

Put your *.txt synonym files to `./synonyms` dir. It will be copy to docker image

------------

## How to build image and run container localy:

1. Remove old image (if exists) 
    ```console
    $ docker rmi docker.anc.ua/elasticsearch.anc.ua:latest
    ```
2. Build image
    ```console
    $ docker build -t docker.anc.ua/elasticsearch.anc.ua .
    ```
3. Run container
    ```console
    $ docker run -it --rm -m 512m --cpus=2 -p 9200:9200 -e PORT=9200 -e ELASTIC_PASSWORD=<your username> docker.anc.ua/elasticsearch.anc.ua:latest
    ```
**ENV:**
- `PORT` - elasticsearch port;
- `ELASTIC_PASSWORD` - elasticsearch API password (default username `elastic`);

------------

## How to build image and deploy container to Heroku

1. Sholud be installed Heroku CLI

2. Login to Heroku by CLI
    ```console
    $ heroku login
    ```
3. Log in to Container Registry
    ```console
    $ heroku container:login
    ```
4. Create Heroku app if not created
    ```console
    $ heroku create
    ```
5. Set cloud env `ELASTIC_PASSWORD`

6. Build and push to Container Registry
    ```console
    $ heroku container:push web [-a <name app>]
    ```
7. Release the image to app
    ```console
    $ heroku container:release web [-a <name app>]
    ```
-------------------
## Extra commands:
- Remove from app
    ```console
    $ heroku container:rm [-a <name app>]
    ```
- View app log
    ```console
    $ heroku logs  [-a <name app>] [--tail]
    ```