**Installation of Passenger and Nginx for Ruby on Rails**
=====================================================

**Update the system:**
```
$ sudo apt-get update && sudo apt-get upgrade
```
**Uninstall Nginx if currently installed. Phusion Passenger includes their own build of Nginx which supports loadable modules**

```
$ sudo apt-get remove nginx nginx-full nginx-light nginx-naxsi nginx-common
```

Install Passenger and Nginx
---------------------------

**Install the system packages required for using Ruby, building Ruby modules, and running Rails applications**

```
sudo apt-get install build-essential zlib1g-dev libruby libssl-dev libpcre3-dev libcurl4-openssl-dev rake ruby-rack rails
```

**Additionally, the application you deploy will likely have additional dependencies. Install these dependencies before proceeding**
------------------------------------------------------------------------

**Phusion hosts a repository containing the latest version of Phusion Passenger. To add this to your package manager, first install the Phusion PGP key** 

```
$ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7
```

**Update your local package database and install Phusion Passenger**
```
$ sudo apt-get update
$ sudo apt-get install nginx-extras passenger
```

**Run the Phusion Passenger installer for Nginx**
```
sudo passenger-install-nginx-module
```

You’ll be greeted by the Phusion Passenger Nginx installer program. Press Enter to continue with the installation:
The installation process will begin an interactive session that will guide you through the process of building Phusion Passenger. When prompted for the Nginx installation method, it is recommended that you choose 1 for both options to allow the installer to automatically download, compile, and install Nginx for you.


Enable Passenger Support and Start Nginx
----------------------------------------

Nginx is now installed on your system, but you need to enable support for Phusion Passenger. Edit the file /etc/nginx/nginx.conf and uncomment these lines.If not present add these lines to the file.

**NOTE: This is where the files will be located if you install nginx from the package manager. Other possible locations include /opt/nginx/conf/nginx.conf**

```
passenger_root /usr/lib/ruby/vendor_ruby/phusion_passenger/locations.ini;
passenger_ruby /usr/bin/ruby;
```

Add the following lines to the server{.......}

```
server {
  listen 80;
  server_name example.com;
  passenger_enabled on;
  root /var/www/rails_app/public;
  passenger_app_env development;
}
```


**Now you can control nginx with:**
```
$ sudo /etc/init.d/nginx stop 
$ sudo /etc/init.d/nginx start 
$ sudo /etc/init.d/nginx restart
```
**Now create a simple rails application.**

**Open any web browser and type example.com**

![alt text](https://github.com/teja-rvs/installation/blob/master/images/nginx-docker-RoR/14.png)
