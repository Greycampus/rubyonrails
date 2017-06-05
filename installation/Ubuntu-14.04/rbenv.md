**INSTALLATION OF RUBY ON RAILS (USING RBENV)**
============================================


INTRODUCTION
----------


Ruby is a powerful, flexible programming language you can use in web/Internet development, to process text, to create games, and as part of the popular Ruby on Rails web framework. Ruby is a scripting language designed by Yukihiro Matsumoto, also known as Matz. It runs on a variety of platforms, such as Windows, Mac OS, and the various versions of UNIX.

Installation Methods
--------------------

There are several ways to install Ruby:
* When you are on a UNIX-like operating system, using your system’s package manager is the easiest way of getting started. However, the packaged Ruby version usually is not the newest one. 
* Installers can be used to install a specific or multiple Ruby versions. There is also an installer for Windows. 
* Managers help you to switch between multiple Ruby installations on your system. 
* And finally, you can also build Ruby from source. 

**Installing Ruby for Ubuntu 14.04 using Rbenv**
============================================

**Note: The project repository is located on GitHub**

**Install some dependencies for Ruby**

```
$ sudo apt-get update

$ sudo apt-get install build-essential
```                                                                                                                                                                             
![alt text](https://github.com/tejarvs/installation/blob/master/images/rbenv/u:14.04_1.png)
![alt text](https://github.com/tejarvs/installation/blob/master/images/rbenv/u:14.04_2.png)

**apt-get update:** Downloads the package lists from the repositories and updates them to get information on the newest versions of packages and their dependencies. It will do this for all repositories and PPAs. 

**Install the dependencies required for rbenv with apt-get**

```
$ sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev  libffi-dev libgdbm3 libgdbm-dev                                                                                                                                                                            
```
![alt text](https://github.com/tejarvs/installation/blob/master/images/rbenv/u:14.04_3.png)

***Installation of rbenv***

These steps are to be completed from the user account which ruby is to be installed.
```
$ git clone git://github.com/sstephenson/rbenv.git .rbenv
```                                                                                                                                                                                  
![alt text](https://github.com/tejarvs/installation/blob/master/images/rbenv/u:14.04_6.png)

If bash: git: command not found error arises 

![alt text](https://github.com/tejarvs/installation/blob/master/images/rbenv/u:14.04_4.png)

**Install git**
```
$ sudo apt-get install git
```                                                                                                                                                                               
![alt text](https://github.com/tejarvs/installation/blob/master/images/rbenv/u:14.04_5.png)

From here, you should add ~/.rbenv/bin to your $ PATH so that you can use rbenv's command line utility. 
Adding ~/.rbenv/bin/rbenv init to your ~/.bash_profile will let you load rbenv automatically.
Installation of ruby-build ( a plugin for rbenv through git ),which simplifies the installation process for new versions of Ruby to use the  command

```
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
$ git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
$ 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
```
***source rbenv***

```
$ source ~/.bash_profile
```

![alt text](https://github.com/tejarvs/installation/blob/master/images/rbenv/u:14.04_7.png)


**To check if rbenv was set up properly, enter** 
```                                                                                                                                                                                                                                                                                                                                                          
$ type rbenv
```                                                                                                                                                                             

**This displays more information about rbenv**
 
The Terminal displays
```                                                                                                                                                                             
rbenv is a function
rbenv () 
{
    local command;    
    command="$ 1";    
    if [ "$ #" -gt 0 ]; then    
        shift;        
    fi;    
    case "$ command" in     
        rehash | shell)        
            eval "$ (rbenv "sh-$ command" "$ @")"            
        ;;        
        *)        
            command rbenv "$ command" "$ @"            
        ;;        
    esac    
}
                                                                                                                                                                             
```
![alt text](https://github.com/tejarvs/installation/blob/master/images/rbenv/u:14.04_8.png)


**Install Ruby**
----------------

**listing all the available versions of Ruby**

```                                                                                                                                                                             
$ rbenv install --list
```                                                                                                                                                                             


**The Terminal displays**
```                                                                                                                                                
Available versions:
1.8.5-p52
1.8.5-p113
1.8.5-p114
.................
.................
.................
.................
ree-1.8.7-2012.01
ree-1.8.7-2012.02
topaz-dev                                                                                                                                                
```
![alt text](https://github.com/tejarvs/installation/blob/master/images/rbenv/u:14.04_9.png)


For example , consider installation of Ruby version 2.3.1, and setting it as default version with the global sub-command:
```                                                                                                                                                
$ rbenv install 2.3.1
$ rbenv global 2.3.1
```                                                                                                                                                
![alt text](https://github.com/tejarvs/installation/blob/master/images/rbenv/u:14.04_10.png)

**Verify that Ruby was properly installed** by checking version number
```                                                                                                                                                
$ ruby -v
```                                                                                                                                                

**The Terminal displays**
```
ruby 2.3.1p112 (2016-04-26) [x86_64-linux-gnu]
```                                                                                                                                                

**Installation of Gems**
--------------------

Gems are packages that extend the functionality of Ruby.
Installation of the bundler gem to manage application dependencies
```                                                                                                                                                
$ gem install bundler
```                                                                                                                                                
![alt text](https://github.com/tejarvs/installation/blob/master/images/rbenv/u:14.04_11.png)

**Installation of Rails**
---------------------
```
$ gem install rails 
```                                                                       
Whenever a new version of Ruby or gem is installed, the rehash sub-command must be run.This will install shims for all Ruby executables known to rbenv, which will allow you to use the executables.
In computer programming, a shim is a small library that transparently intercepts API calls and changes the arguments passed, handles the operation itself, or redirects the operation elsewhere.
```
$ rbenv rehash 
```                                                                  

**Verify that Rails has been installed properly** by printing its version, with this command
```
$ rails -v
```                                                                  
If it installed properly, you will see the version of Rails that was installed.

For one step installation run the [rbenv.sh](https://github.com/tejarvs/installation/blob/master/shell-script/rbenv.sh) 
=========================================================================================================================

Run the following command

```
$ ./rbenv.sh
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
