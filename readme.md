# Docker container for MySQL

*Run script to launch docker container**
*Type the following command into your terminal:*

```bash
$ ./run.sh
```

**From the mysql server**

*From within the mysql server you can run the following commands*

**Check the installed mysql version**

```bash
# mysql --version
```

**Connect to the mysql tool**

```bash
# mysql -u root -p
```

**Basic Docker commands**

*From your machine you can exectute the following commands*

**Shutdown docker container**

```bash
$ docker-compose down
```

**Start docker container**

```bash
$ docker-compose up
```

**Connect to the database server**

```bash
docker exec -it mysql_mysql_1 /bin/sh
```

**phpmyadmin**
phpmyadmin is a webbased databases administration tool that offers visualizations of all your databases, tables, database users, etc. It helps to manage your database and provides a lot of other features. It is a great tool to manage your databases.
You can acces the phpmyadmin from your web browser by opening the following link:
[http://localhost:8081](http://localhost:8081)