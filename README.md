# Inception

https://medium.com/swlh/wordpress-deployment-with-nginx-php-fpm-and-mariadb-using-docker-compose-55f59e5c1a

https://miro.medium.com/max/700/1*c_ob-WVcU_-l9n8KBipPEQ.png

https://miro.medium.com/max/295/1*sVL83IYagY4cN7-rcMmKVQ.png

https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-docker-compose

https://www.programmerall.com/article/21961599148/

Docker build = build les dockers (si modif dans le dockerfile)
Docker run = construit un seul dockerfile, une seule image (ex nginx)
Docker up = create and start container, construit vos images si elles ne le sont pas déjà, et va démarrer vos dockers.
DOcker exec = execute a comand in a runing conatainer, lance un shell dna sun container
-d = detach
-it = bash 
https://www.padok.fr/blog/docker-docker-compose-commandes-connaitre
http://www.ageekslab.com/docker/docker2/

volumes

https://docs.docker.com/compose/compose-file/compose-file-v3/#volume-configuration-reference
https://stackoverflow.com/questions/42195334/docker-compose-volumes-driver-local-meaning

mysql commands 

https://gist.github.com/hofmannsven/9164408 

/var/lib/myslq = utilise pour stocker les bases de donees 

database = a des tableau de donnee, index etc.

table = appartient a la base de donee, 

https://hub.docker.com/_/nginx

If you add a custom CMD in the Dockerfile, be sure to include -g daemon off; in the CMD in order for nginx to stay in the foreground, so that Docker can track the process properly (otherwise your container will stop immediately after starting)!

