

**Installation of Nginx on Ubuntu (Docker)**
========================================
Introduction
---------------
Nginx (pronounced engine x) is a lightweight, free, open-source HTTP and reverse proxy server, as well as a mail proxy server. The Nginx project started with a strong focus on high concurrency, high performance and low memory usage.It is one of the most popular web servers in the world and is responsible for hosting some of the largest and highest-traffic sites on the Internet. It is more resource-friendly than Apache in most cases and can be used as a web server or a reverse proxy.

Pull the Nginx image file from the docker hub
--------------------------------------------
```
$ sudo docker pull nginx
```
![alt text](https://github.com/Greycampus/rubyonrails/blob/master/images/Nginx_docker/1.png)

To run Nginx while binding the guest port 80 to the host port 80
-------------------------------------------------------------
```
$ sudo docker run --name docker-nginx -p 80:80 nginx
```
![alt text](https://github.com/Greycampus/rubyonrails/blob/master/images/Nginx_docker/6.png)


Open any web browser and enter [localhost:80](http://localhost:80) 
------------------------------------
![alt text](https://github.com/Greycampus/rubyonrails/blob/master/images/Nginx_docker/2.png)


To run it in the background add -d
-------------------------------
```
$ sudo docker run --name docker-nginx -p 80:80 -d nginx
```
![alt text](https://github.com/Greycampus/rubyonrails/blob/master/images/Nginx_docker/7.png)

check if it is running run
--------------------------
```
$ docker ps -a
```
![alt text](https://github.com/Greycampus/rubyonrails/blob/master/images/Nginx_docker/3.png)


To Stop Nginx run
-----------------
```
$ docker stop docker-nginx
```
![alt text](https://github.com/Greycampus/rubyonrails/blob/master/images/Nginx_docker/4.png)

Remove the container
--------------------
```
docker rm docker-nginx
```
![alt text](https://github.com/Greycampus/rubyonrails/blob/master/images/Nginx_docker/5.png)
