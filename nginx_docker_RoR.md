Rails 5 and Docker (Nginx)
==========================

Introduction
------------

**Nginx**

Nginx (pronounced engine x) is a lightweight, free, open-source HTTP and reverse proxy server, as well as a mail proxy server. The Nginx project started with a strong focus on high concurrency, high performance and low memory usage.It is one of the most popular web servers in the world and is responsible for hosting some of the largest and highest-traffic sites on the Internet. It is more resource-friendly than Apache in most cases and can be used as a web server or a reverse proxy.


Prerequisites
-------------

Assuming that ruby,rails,docker,nginx are installed and configuerd properly.


Build simple Rails app
----------------------

Building simple Ruby on Rails application without database / Active Record.

**Creating the simple Application**
```
$ rails new sample_rails_docker_app -O
```

![alt text](https://github.com/teja-rvs/installation/blob/master/images/nginx-docker-RoR/1.png)


**After you create the sample_rails_docker_app application, switch to its folder**
```
$ cd sample_rails_docker_app
```

![alt text](https://github.com/teja-rvs/installation/blob/master/images/nginx-docker-RoR/2.png)


**Creating a controller**
```
$ rails g controller hello_world
```

![alt text](https://github.com/teja-rvs/installation/blob/master/images/nginx-docker-RoR/3.png)


**Open app/controllers/hello_world_controller.rb and add hello action**
```
class HelloWorldController < ApplicationController
  
  def hello
    render json: {
      message: "Hello world!"
    }.to_json
  end
  
end
```


**The hello action reponds with simple “Hello world!” message in JSON format. Next, edit config/routes.rb**

```
Rails.application.routes.draw do
  
  get 'hello_world/hello'

  root 'hello_world#hello'
  
end
```

**Now you can test if everything works fine**
```
$ rails s
```

![alt text](https://github.com/teja-rvs/installation/blob/master/images/nginx-docker-RoR/6.png)

**Open the web browser and type localhost:3000**

![alt text](https://github.com/teja-rvs/installation/blob/master/images/nginx-docker-RoR/7.png)


Docker
------

**Install Docker Engine**
```
$ sudo apt-get update
$ sudo apt-get install apt-transport-https ca-certificates
$ sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
$ echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
$ sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual
$ sudo apt-get install docker-engine
```

![alt text](https://github.com/teja-rvs/installation/blob/master/images/nginx-docker-RoR/8.png)


**To start docker deamon**
```
$ sudo service docker start
```


**To verify your docker deamon**
```
$ docker info
```

![alt text](https://github.com/teja-rvs/installation/blob/master/images/nginx-docker-RoR/9.png)



Docker compose
--------------

**Install Docker Compose**
```
$ curl -L "https://github.com/docker/compose/releases/download/1.8.1/docker-compose-$(uname -s)-$(uname -m)" > /usr/local/bin/docker-compose
$ chmod +x /usr/local/bin/docker-compose
$ docker-compose –version
```

![alt text](https://github.com/teja-rvs/installation/blob/master/images/nginx-docker-RoR/10.png)



Dockerize Rails app and Nginx – separate containers
---------------------------------------------------

In this configuration, Nginx and Rails are running inside different containers. Nginx will be available from Internet and will pass request to linked Rails app container. The following aliases are used :

 - web – for Nginx container,  
 - app – for Rails app container.

Create 2 Dockerfiles:

 -  one for Rails app and one for Nginx 
   docker-compose.yml – it allows us to manage both services in
   oneefile.  
 -  nginx.conf – nginx configuration file

CONFIGURATION
-------------

**Create Dockerfile file in main / root directory of Rails project**
```
# Base image:
FROM ruby:2.3.1

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Set an environment variable where the Rails app is installed to inside of Docker image:
ENV RAILS_ROOT /var/www/sample_rails_docker_app
RUN mkdir -p $RAILS_ROOT

# Set working directory, where the commands will be ran:
WORKDIR $RAILS_ROOT

# Gems:
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN gem install bundler
RUN bundle install

COPY config/puma.rb config/puma.rb

# Copy the main application.
COPY . .

EXPOSE 3000

# The default command that gets ran will be to start the Puma server.
CMD bundle exec puma -C config/puma.rb
```


**Explaination of commands used above**

**FROM**

FROM directive is probably the most crucial amongst all others for Dockerfiles. It defines the base image to use to start the build process. It can be any image, including the ones you have created previously. If a FROM image is not found on the host, docker will try to find it (and download) from the docker image index. It needs to be the first command declared inside a Dockerfile.

**CMD**

The command CMD, similarly to RUN, can be used for executing a specific command. However, unlike RUN it is not executed during build, but when a container is instantiated using the image being built. Therefore, it should be considered as an initial, default command that gets executed (i.e. run) with the creation of containers based on the image.

**EXPOSE**

The EXPOSE command is used to associate a specified port to enable networking between the running process inside the container and the outside world (i.e. the host).

**RUN**

The RUN command is the central executing directive for Dockerfiles. It takes a command as its argument and runs it to form the image. Unlike CMD, it actually is used to build the image (forming another layer on top of the previous one which is committed).

**WORKDIR**

The WORKDIR directive is used to set where the command defined with CMD is to be executed.

**ENV**

The ENV command is used to set the environment variables (one or more). These variables consist of “key = value” pairs which can be accessed within the container by scripts and applications alike. This functionality of docker offers an enormous amount of flexibility for running programs.


**Create similar file for nginx: Dockerfile-nginx, also in project’s root directory**
```
# Base image:
FROM nginx
 
# Install dependencies
RUN apt-get update -qq && apt-get -y install apache2-utils
 
# establish where Nginx should look for files
ENV RAILS_ROOT /var/www/sample_rails_docker_app
 
# Set our working directory inside the image
WORKDIR $RAILS_ROOT
 
# create log directory
RUN mkdir log
 
# copy over static assets
COPY public public/
 
# Copy Nginx config template
COPY config/nginx.conf /tmp/docker_example.nginx
 
# substitute variable references in the Nginx config template for real values from the environment
# put the final config in its place
 RUN envsubst '$RAILS_ROOT' < /tmp/docker_example.nginx > /etc/nginx/conf.d/default.conf
#RUN rm -rf /etc/nginx/sites-available/default
#ADD config/nginx.conf /etc/nginx/sites-enabled/nginx.conf

EXPOSE 80

# Use the "exec" form of CMD so Nginx shuts down gracefully on SIGTERM (i.e. `docker stop`)
CMD [ "nginx", "-g", "daemon off;" ]
```

**create docker-compose.yml, also in root directory**

```
version: '2'
services:
  app:
    build: .
    command: bundle exec puma -C config/puma.rb
    volumes:
      - /var/www/sample_rails_docker_app
    expose:
      - "3000"
  web:
    build:
      context: .
      dockerfile: Dockerfile-nginx
    links:
      - app
    ports:
- "80:80"
```


This docker-compose.yml file tells Docker to do the following:

 - Run five instances of the image uploaded as a service called web,
   limiting each one to use, at most, 10% of the CPU (across all cores),
   and 50MB of RAM.
 - Immediately restart containers if one fails. 
 -  Map port 80 on the host to web’s port 80. 
 - Instruct web’s containers to share port 80 via a load-balanced network called webnet. (Internally, the containers themselves will publish to web’s port 80 at an ephemeral port.) 
 - Define the webnet network with the default settings (which is a load-balanced overlay network). 

**create configuration file for Nginx (in config folder): config/nginx.conf**

```
upstream puma_sample_rails_docker_app {
  server app:3000;
}


server {

  listen 80;
  server_name example.com

  client_max_body_size 4G;
  keepalive_timeout 10;

  error_page 500 502 504 /500.html;
  error_page 503 @503;

  server_name localhost puma_sample_rails_docker_app;
  root /var/www/sample_rails_docker_app/public;
  try_files $uri/index.html $uri @puma_sample_rails_docker_app;

  location @puma_sample_rails_docker_app {
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header Host $http_host;
    proxy_redirect off;

    proxy_pass http://puma_sample_rails_docker_app;
    # limit_req zone=one;
    access_log /var/www/sample_rails_docker_app/log/nginx.access.log;
    error_log /var/www/sample_rails_docker_app/log/nginx.error.log;
  }

  location ^~ /assets/ {
    gzip_static on;
    expires max;
    add_header Cache-Control public;
  }

  location = /50x.html {
    root html;
  }

  location = /404.html {
    root html;
  }

  location @503 {
    error_page 405 = /system/maintenance.html;
    if (-f $document_root/system/maintenance.html) {
      rewrite ^(.*)$ /system/maintenance.html break;
    }
    rewrite ^(.*)$ /503.html break;
  }

  if ($request_method !~ ^(GET|HEAD|PUT|PATCH|POST|DELETE|OPTIONS)$ ){
    return 405;
  }

  if (-f $document_root/system/maintenance.html) {
    return 503;
  }

  location ~ \.(php|html)$ {
    return 405;
  }
}
```


**NOTE** : Add the url of your choice at server_name.

For example if I want to run my rails app by typing orange.com
**change add server_name example.com to  add server_name orange.com** 

**Upstream Context**

The upstream context is used to define and configure "upstream" servers. Basically, this context defines a named pool of servers that Nginx can then proxy requests to. This context will likely be used when you are configuring proxies of various types.

**Server Context**

The "server" context is declared within the "http" context. This is our first example of nested, bracketed contexts. It is also the first context that allows for multiple declarations.

**Location Context**

The next context that you will deal with regularly is the location context. Location contexts share many relational qualities with server contexts. For example, multiple location contexts can be defined, each location is used to handle a certain type of client request, and each location is selected by virtue of matching the location definition against the client request through a selection algorithm.

While the directives that determine whether to select a server block are defined within the server context, the component that decides on a location's ability to handle a request is located in the location definition (the line that opens the location block).


BUILD AND RUN
-------------

**Build (remember that you have to be in Rails project directory to run this command)**
```
$ docker-compose build
```

![alt text](https://github.com/teja-rvs/installation/blob/master/images/nginx-docker-RoR/11.png)



**To verify that images were built**
```
$ docker images
```

![alt text](https://github.com/teja-rvs/installation/blob/master/images/nginx-docker-RoR/12.png)



**To run both containers via docker-compose**
```
$ docker-compose up
```

![alt text](https://github.com/teja-rvs/installation/blob/master/images/nginx-docker-RoR/13.png)



**Now open the web browser and type localhost:3000**


**If Rails home page doesn’t show up run the below command and try again**
```
$ telnet -4 localhost 80
```

**If port:80 is used by another processes free the port using the following command**

```
sudo fuser -k 80/tcp
```


**Adding the user defined url**

```
Open terminal
$ nano /etc/hosts
```

**Add the following lines under to

```
# The following lines are newly added hosts

127.0.0.1   example.com
```

**Now open the web browser and type example.com**

![alt text](https://github.com/teja-rvs/installation/blob/master/images/nginx-docker-RoR/14.png)

