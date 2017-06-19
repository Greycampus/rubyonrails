#!/usr/bin/ruby -w

to_append = File.read("write.txt")
File.open("read.txt", "a") do |handle|
  handle.puts to_append
end
