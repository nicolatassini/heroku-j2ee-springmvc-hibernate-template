
#Heroku SpringMVC Hibernate J2EE Backend Template

##Frameworks:
* Spring MVC 4.3
* Hibernate ORM 3.6 
* PostgreSQL 9.4
* Maven 3
* Tomcat 8.5 (or Jetty 9.3)

#How to deploy the project to Heroku?
```Bash
git clone https://github.com/nicolatassini/heroku-j2ee-springmvc-hibernate-template.git
cd heroku-j2ee-springmvc-hibernate-template
heroku create
git push heroku master
heroku open
```

#How to run the project locally? (you have PostgreSQL running locally, with a "templateDB")
```Bash
git clone https://github.com/nicolatassini/heroku-j2ee-springmvc-hibernate-template.git
cd heroku-j2ee-springmvc-hibernate-template
export DATABASE_URL=postgres://nic:nic@localhost:5432/templateDB
mvn package
java -jar target/dependency/webapp-runner.jar target/*.war
```

#Required Add-Ons
* MemCachier https://elements.heroku.com/addons/memcachier