INSTALLATION OF RUBY ON RAILS ( From Source )
=============================================

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

Installing Ruby for Ubuntu 16.04
--------------------------------

**Install the dependencies required**
                                                                                                                                                                                  
```
$ sudo apt-get update

$ sudo apt-get install build-essential

$ sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev  libgdbm3 libgdbm-dev
```
![alt text](https://github.com/tejarvs/installation/blob/master/images/source/1.png)

![alt text](https://github.com/tejarvs/installation/blob/master/images/source/2.png)

![alt text](https://github.com/tejarvs/installation/blob/master/images/source/3.png)


**Downloading ruby**

```
$  wget ftp://ftp.ruby-lang.org/pub/ruby/2.4/ruby-2.4.1.tar.gz
```

![alt text](https://github.com/tejarvs/installation/blob/master/images/source/4.png)

**UnZip the Ruby file**
                                                                    
```
$ tar xzvf ruby-2.4.1.tar.gz
```                                                                   
![alt text](https://github.com/tejarvs/installation/blob/master/images/source/5.png)

**Enter into the downloaded directory.**
                                                                    
```
$ cd ruby-2.4.1
```                                                                   

**Configure generates the make file and also checks that the server has all of the required dependencies.** 

```
$ ./configure
```                                                                   
![alt text](https://github.com/tejarvs/installation/blob/master/images/source/6.png)


**After that, still in the directory, you need to run the "make" command.**
                                                                    
```
$ make
```                                                                  
![alt text](https://github.com/tejarvs/installation/blob/master/images/source/7.png)

This may take a bit longer. Once it finishes, use **make install**
                                                                    
```
$ make install  
```                                                                  
![alt text](https://github.com/tejarvs/installation/blob/master/images/source/8.png)

**Installation of Bundler**
 
```
$ gem install bundler
```                                                                  
![alt text](https://github.com/tejarvs/installation/blob/master/images/source/9.png)

Since ruby package is installed from the source, the gems should already be downloaded. However, they need to be updated.
                                                                 
```
$ gem update --system
```                                                                  
![alt text](https://github.com/tejarvs/installation/blob/master/images/source/10.png)

Installation of Rails
---------------------
                                                                 
```
$ gem install rails
```

![alt text](https://github.com/tejarvs/installation/blob/master/images/source/11.png)

Verify that Rails has been installed properly by printing its version, with this command
```
$ rails -v
```
If it installed properly, you will see the version of Rails that was installed.

For one click installation run the [source.sh](https://github.com/tejarvs/installation/blob/master/shell-script/source.sh) 
=========================================================================================================================

Run the following command

```
$ ./source.sh
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
