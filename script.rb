$stdin.sync = true
abcs = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
puts "-------------------------------"
puts "*   start up name generator   *"
puts "*                             *"
puts "*     Enter some words        *"
puts "* that describe your start up *"
puts "-------------------------------"

puts "Example: Hero Haiku cloud"
print "Enter Words: "
words = gets

length = words.length
abcs.unshift(words.gsub!(/\W/,'').split(//))
abcs.shuffle!.shuffle!.rotate!(length)

puts "Round and round it goes, where it stops no one knows..."
sleep(2)

puts "Your letters are:"
print "[ "
abcs.take(7).each{|l| print "#{l} "} 
print "]"

puts ""
puts "Now arrange these letters scrabble style to find your new startup name"