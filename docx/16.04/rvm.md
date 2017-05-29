INSTALLATION OF RUBY ON RAILS (USING RVM)
-----------------------------



INTRODUCTION
------------

Ruby is a powerful, flexible programming language you can use in web/Internet development, to process text, to create games, and as part of the popular Ruby on Rails web framework. Ruby is a scripting language designed by Yukihiro Matsumoto, also known as Matz. It runs on a variety of platforms, such as Windows, Mac OS, and the various versions of UNIX.

Installation Methods
--------------------

There are several ways to install Ruby:
* When you are on a UNIX-like operating system, using your system’s package manager is the easiest way of getting started. However, the packaged Ruby version usually is not the newest one. 
* Installers can be used to install a specific or multiple Ruby versions. There is also an installer for Windows. 
* Managers help you to switch between multiple Ruby installations on your system. 
* And finally, you can also build Ruby from source. 

Since Ruby on Rails doesn't come in a neatly packaged format, getting the framework installed used to be one of the more difficult parts of getting started. Luckily, tools like rvm, the Ruby Version Manager, have made installation simple.

RVM is a command-line tool which allows you to easily install, manage, and work with multiple ruby environments from interpreters to sets of gems. 


Installing Ruby for Ubuntu 16.04 using Rvm
------------------------------------------

**Installation of dependencies**
```
$ sudo apt-get update
                                                                                                                                                                                    
$ sudo apt-get install -y curl gnupg build-essential                                                                                                                                                                              
```
![alt text](https://github.com/tejarvs/installation/blob/master/images/rvm/1.png)
![alt text](https://github.com/tejarvs/installation/blob/master/images/rvm/2.png)
**curl** - Transfers data from or to a server, using one of the protocols: HTTP, HTTPS, FTP, FTPS, SCP, SFTP, TFTP, DICT, TELNET, LDAP or FILE. (To transfer multiple files use wget or FTP.)

**gpg** — encryption and signing tool 


Installation of RVM
-------------------
```
$ sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 

$ curl -sSL https://get.rvm.io | sudo bash -s stable
$ sudo usermod -a -G rvm `whoami`
```                                                                  
![alt text](https://github.com/tejarvs/installation/blob/master/images/rvm/3.png)
**Note: Some systems may need to use gpg2 instead of gpg**

The **gpg** command contacts a public key server and requests a key associated with the given ID. In this case we are requesting the RVM project's key which is used to sign each RVM release. Having the RVM project's public key allows us to verify the legitimacy of the RVM release we will be downloading, which is signed with the matching private key.  

![alt text](https://github.com/tejarvs/installation/blob/master/images/rvm/4.png)

The **curl** uses the curl web grabbing utility to grab a script file from the rvm website.

![alt text](https://github.com/tejarvs/installation/blob/master/images/rvm/5.png)


**To start using RVM you need to run** 
```
$ source /etc/profile.d/rvm.sh
```
![alt text](https://github.com/tejarvs/installation/blob/master/images/rvm/6.png)

**Note: Run the above command everytime when logged in compulsorily to start the rvm.**

Installation of Ruby
--------------------

**To install the latest version**
```
$ rvm install ruby

$ rvm –default use ruby
```

![alt text](https://github.com/tejarvs/installation/blob/master/images/rvm/11.png)
![alt text](https://github.com/tejarvs/installation/blob/master/images/rvm/12.png)

**To install the Particular Ruby version of Ruby, run:**
```                                                                  
$ rvm install ruby-X.X.X

$ rvm --default use ruby-X.X.X
```                                                                  

For **example** , consider installation of Ruby version 2.3.1, and setting it as default version with the global sub-command:
```                                                                                                                                                
$ rvm install ruby-2.3.1

$ rvm –-default use ruby-2.3.1
```                                                                  


**Installation of Bundler**                                                          
```
$ gem install bundler
```            
![alt text](https://github.com/tejarvs/installation/blob/master/images/rvm/13.png)

Installation of Rails
---------------------

Rails ships with so many dependencies these days, we're going to need to install a Javascript runtime like NodeJS. This lets you use Coffeescript and the Asset Pipeline in Rails which combines and minifies your javascript to provide a faster production environment.

**Installation of NodeJS**
                                                                  
```
$ curl -sL https://deb.nodesource.com/setup_4.x | apt-get install      -y nodejs
```                                                                  
![alt text](https://github.com/tejarvs/installation/blob/master/images/rvm/14.png)

**Installation of Rails**
                                                                  
```
$ gem install rails -v 5.0.1
```                                                                  
![alt text](https://github.com/tejarvs/installation/blob/master/images/rvm/15.png)

Verify that Rails has been installed properly by printing its version, with this command
```
$ rails -v
```                                                                  
If it installed properly, you will see the version of Rails that was installed.

For one click installation run the [rvm.sh](https://github.com/tejarvs/installation/blob/master/shell-script/rvm.sh)
===================================================================================================================

Run the following command

```
$ ./rvm.sh
```
Running a Sample Ruby Program
=============================

Create a file hello.rb

**hello.rb**
```
print "Hello, World!\n"
```

**Running the program (hello.rb)**

```
$ ruby hello.rb
```

**The program prints Hello, World!**

![alt text](https://github.com/tejarvs/installation/blob/master/images/f.png)
