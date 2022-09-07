# README

Instale o [Docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/) e o [Docker Compose](https://docs.docker.com/compose/install/) e siga os seguintes passos:

* Clone este repositório.

* Cire o container com o Docker compose: ``docker-compose build``

* inicie o container com o Docker compose: ``docker-compose up``

* entre no container docker: ``docker exec -it contact_api``

* Instale as dependências do projeto via Bundler: ``bundle install``

* Rode as migrations: ``rails db:migrations``

* Rode as migrations: ``rails db:seeds``
