# Docker container for a MySQL Database

*This repo got you covered, if you want to quickly set up a mysql database on your machine. All you need is [docker](htttp://docker.com) installed on your machine and you are good to go.*

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

Btw. the password is just *"secret"* which obiously is only for testing purposes. Normally you would use a more secure password and not use a root user since this comes with maximum privileges.

You can exit the mysql tool by typing `quit` or `exit`.

Finally the prompt has changed again and so you can check out the mysql version by using the mysql command. 

```bash
> SELECT @@version;
```

Here are a couple of basic mysql commands to get you going.

Show all databases

```bash
> SHOW DATABASES;
```

Connect to a database

```bash
> USE your_database_name;
```

Create a database table

```bash
> CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
```

Create another table
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

Show all tables in the database

```bash
> SHOW TABLES;
```

Show all rows in the table

```bash
> SELECT * FROM your_table_name;
```

**phpmyadmin**

So what if you want to get a bigger picture of everything goign on in your database serve? How to visualize all databases, tables, rows, etc. in a easier to digest way? Or let`s check, if there is a way to create all this stuff a little easier eg. add a couple of data rows in your test table? Well you guest it, phpmyadmin got you covered. This is a webbased databases administration tool that provides a GUI to manage databases, tables and great other features. Now that you have the docker container running, you can acces phpmyadmin from your web browser with the following link:
[http://localhost:8081](http://localhost:8081)

**Basic Docker commands**

*From your machine you can exectute the following commands*

Shutdown docker the container

```bash
$ docker-compose down
```

Start docker the container

```bash
$ docker-compose up -d
```

Connect to the database server

```bash
$ docker exec -it mysql-mysql-container /bin/sh
```
