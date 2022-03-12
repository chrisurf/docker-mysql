# Docker container for MySQL

*This repo got you covered, if you want to quickly set up a mysql database on your machine. All you need is (docker)[htttp://docker.com] installed on your machine and you are good to go.*

**Get started**

The following script will launch the docker container connect your terminal to the mysql server and open phpmyadmin in your browser. Make sure you have started docker before running this script.

```bash
$ ./run.sh
```

**Inside the mysql server**

When you are on the mysql server, there are a lot of things you can do. Create databases, tables, users and much more. First check out the mysql server and version, so you know what you are dealing with.

```bash
# mysql --version
```

Before you can mess with mysql you need to open the mysql tool. At this point you probably notices that the little promt infront of the line has changed. This is because you are on the mysql server. Run the following to sign in to the mysql server as root user.

```bash
# mysql -u root -p
```

Btw. the password is *"secret"* for testing purposes. Normally you would not use the root user since it comes with maximum privileges for anything and it would also have a much more secure password.

Now you again check out the version and so much more. Not again the promt has changed.

```bash
> SELECT @@version;
```

Here are a couple of basic mysql commands to get you going.

Show all database

```bash
> SHOW DATABASES;
```

Connect to database

```bash
> USE database_name;
```

Create database table

```bash
> CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
```

*crerate a sample table*
```bash
> CREATE TABLE food (
    Id int NOT NULL AUTO_INCREMENT,
    OrderDate varchar(255),
    Region varchar(255),
    City varchar(255),
    Category varchar(255),
    Product varchar(255),
    Quantity varchar(255),
    UnitPrice varchar(255),
    TotalPrice varchar(255),
    PRIMARY KEY (Id)
);
```

Show all tables in database

```bash
> SHOW TABLES;
```

Show all rows in table

```bash
> SELECT * FROM table_name;
```

**phpmyadmin**
But what if you want to get a bigger picture of all databases and tables and visualize all in easier to digest way? Well phpmyadmin got you covered. This is a webbased databases administration tool that offers visualizations of all your databases, tables, database users, etc. It helps to manage your database and provides a lot of other features. It is a great tool to manage your databases.
You can acces the phpmyadmin from your web browser by opening the following link:
[http://localhost:8081](http://localhost:8081)

**Basic Docker commands**

*From your machine you can exectute the following commands*

Shutdown docker container

```bash
$ docker-compose down
```

Start docker container

```bash
$ docker-compose up
```

Connect to the database server

```bash
docker exec -it mysql_mysql_1 /bin/sh
```
