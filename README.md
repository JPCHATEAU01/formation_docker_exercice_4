hub.docker.com/_/mysql
alde-semifir/DemoDockerRunCompose

--volume $PWD/articles.sql ...

docker run -d -e MYSQL_ROOT_PASSWORD='test' -e MYSQL_DATABASE='test' -e MYSQL_USER='test' -e MYSQL_PASSWORD='test' --volume db-volume:/var/lib/mysql --volume $PWD/articles.sql:/docker-entrypoint-initdb.d/articles.sql --name mysql_c mysql:5.7


docker-compose

version: '3.8' => version du docker compose 
devenu facultatif (dépendant du docker engine)

docker compose up -d -p name --build
-d detach
--build
-p name

docker compose ps // ne fait apparaitre que les containers liés aux docker compose

docker compose logs // les logs

docker compose down // down les containers dans l'ordre définit dans le compose ( les détruits)
docker compose down -v// down les containers dans l'ordre définit dans le compose ( les détruits) et les volumes

docker volume prune