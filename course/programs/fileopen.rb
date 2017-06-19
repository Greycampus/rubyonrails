#!/usr/bin/ruby -w

f = File.open("read.txt", "r")

f.each_line{
	|line|
	puts line
}