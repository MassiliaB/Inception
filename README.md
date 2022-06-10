# Inception

**Subject**

Learning about system administration by using Docker. Virtualizing several Docker images, creating them in a personal virtual machine.
Setting up :

- Nginx with TLSv1.2 or TLSv1.3
- Wordpress with Php-fpm
- Mariadb

![img](https://miro.medium.com/max/700/1*c_ob-WVcU_-l9n8KBipPEQ.png)

**Project**

***What is Docker and Docker-compose ?***

Docker is an open platform that let you develop application from an isolated environment, called container, that run your services. See my [ft_server's](https://github.com/MassiliaB/ft_server) project.

And with docker compose you can run and manage multiple services at the same time, from an YAML configuration file that start your containers.

See also : [Docker commands](https://www.padok.fr/blog/docker-docker-compose-commandes-connaitre)

***Nginx with SSL***

Nginx is an open source software for web serving, but also serve as reverse proxy or load balancing. Set his configuration file to enable ssl encryption. 

![ssl](https://user-images.githubusercontent.com/62947287/173135029-80211bc1-a86e-4727-b825-552c16e234f9.png)

***Mariadb database***

An open source database management system, created as a software fork of MySQL.

[Create your mariadb docker image from sratch](https://mariadb.com/kb/en/creating-a-custom-docker-image/) 

***Wordpress and php-fpm***

[Install Wordpress with docker-compose.](https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-docker-compose)

**Some tips** 

If you add a custom CMD in the Dockerfile, be sure to include -g daemon off; in the CMD in order for nginx to stay in the foreground, so that Docker can track the process properly (otherwise your container will stop immediately after starting)!

[Here some MySQL basic commands.](https://gist.github.com/hofmannsven/9164408)
 
 

